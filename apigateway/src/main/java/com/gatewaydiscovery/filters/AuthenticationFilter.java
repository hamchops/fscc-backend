package com.gatewaydiscovery.filters;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.cloud.gateway.filter.GatewayFilter;
import org.springframework.cloud.gateway.filter.factory.AbstractGatewayFilterFactory;
import org.springframework.core.io.buffer.DataBuffer;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.server.reactive.ServerHttpRequest;
import org.springframework.http.server.reactive.ServerHttpResponse;
import org.springframework.stereotype.Component;
import org.springframework.web.server.ServerWebExchange;

import com.gatewaydiscovery.util.JwtUtil;

import reactor.core.publisher.Mono;

@Component
public class AuthenticationFilter extends AbstractGatewayFilterFactory<AuthenticationFilter.Config> {

    private static final Logger logger = LoggerFactory.getLogger(AuthenticationFilter.class);

    private final RouteValidator validator;

    private final JwtUtil jwtUtil;

    public AuthenticationFilter(final RouteValidator validator, final JwtUtil jwtUtil) {
        super(Config.class);
        this.validator = validator;
        this.jwtUtil = jwtUtil;
    }

    // static class to allow for future configurations
    public static class Config {
    }

    @Override
    public GatewayFilter apply(Config config) {
        return ((exchange, chain) -> {
            // Initialize the user's information
            ServerHttpRequest userInfo = null;

            // Check if the current route is open or secured
            if (validator.isSecured.test(exchange.getRequest())) {
                // check if header contains token or not
                if (!exchange.getRequest().getHeaders().containsKey(HttpHeaders.AUTHORIZATION)) {
                    logger.warn("Missing Authorization header");
                    return handleUnauthorized(exchange, "Missing Authorization header");
                }

                // Extract the JWT token from the Authorization header
                String authHeader = exchange.getRequest().getHeaders().getFirst(HttpHeaders.AUTHORIZATION);
                if (authHeader != null && authHeader.startsWith("Bearer ")) {
                    authHeader = authHeader.substring(7);
                    logger.info("authHeader: " + authHeader);
                }

                try {
                    jwtUtil.validateToken(authHeader);

                    // Extract the user information from the jwt claims
                    userInfo = exchange.getRequest()
                            .mutate()
                            .header("email", jwtUtil.extractEmail(authHeader))
                            .build();

                } catch (Exception e) {
                    logger.error("Invalid access token");
                    return handleUnauthorized(exchange, "Invalid access token");
                }
            }
            // Forward the request if there are no issues
            // and attach user information if there is any
            return chain.filter(exchange.mutate()
                    .request(userInfo)
                    .build());
        });
    }

    private Mono<Void> handleUnauthorized(ServerWebExchange exchange, String errorMessage) {
        // Set the response status code to 401 Unauthorized
        ServerHttpResponse response = exchange.getResponse();
        response.setStatusCode(HttpStatus.UNAUTHORIZED);

        // Set the content type of the response to application/json
        response.getHeaders().add(HttpHeaders.CONTENT_TYPE, "application/json");

        // Create a new error response object
        ErrorResponse errorResponse = new ErrorResponse(401, "Unauthorized", errorMessage);

        // Convert the error response object to a byte array
        byte[] errorResponseBytes = errorResponse.toJson().getBytes();

        // Create a Mono with a DataBuffer containing the error response bytes
        Mono<DataBuffer> body = Mono.just(response.bufferFactory().wrap(errorResponseBytes));

        // Write the error response to the response body and return a Mono with an error
        return response.writeWith(body)
                .flatMap(aVoid -> Mono.error(new RuntimeException(errorMessage)));
    }

}