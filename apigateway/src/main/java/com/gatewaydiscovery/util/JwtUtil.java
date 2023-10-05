package com.gatewaydiscovery.util;

import java.security.Key;
import java.util.function.Function;

import org.springframework.core.env.Environment;
import org.springframework.stereotype.Component;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.io.Decoders;
import io.jsonwebtoken.security.Keys;


@Component
public class JwtUtil {

    private String secret;

    /**
     * Constructs a JwtUtil object with the provided environment.
     */
    public JwtUtil(Environment env) {
        this.secret = env.getProperty("jwt.secret");
        if (this.secret == null) {
            throw new IllegalStateException("jwt.secret property not found in environment");
        }
    }

    /**
     * Validates the provided JWT token.
     */
    public void validateToken(final String token) {
        Jwts.parserBuilder().setSigningKey(getSignKey()).build().parseClaimsJws(token);
    }

    private Key getSignKey() {
        byte[] keyBytes = Decoders.BASE64.decode(secret);
        return Keys.hmacShaKeyFor(keyBytes);
    }

    /**
     * Extracts the email from the provided JWT token.
     */
    public String extractEmail(String token) {
        return extractClaim(token, Claims::getSubject);
    }

    /**
     * This method extracts a specific claim from a JWT token using a provided claims resolver function.
     * @param token The JWT token from which to extract the claim.
     */
    private <T> T extractClaim(String token, Function<Claims, T> claimsResolver) {
        final Claims claims = extractAllClaims(token);
        return claimsResolver.apply(claims);
    }

    /**
     * This method extracts all claims from a JWT token.
     */
    private Claims extractAllClaims(String token) {
        return Jwts.parserBuilder()
                .setSigningKey(getSignKey())
                .build()
                .parseClaimsJws(token)
                .getBody();
    }
}