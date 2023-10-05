package com.example.login.util;

import java.security.Key;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.core.env.Environment;
import org.springframework.stereotype.Component;

import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.io.Decoders;
import io.jsonwebtoken.security.Keys;

@Component
public class JwtUtil {

    private String secret;

    /**
     * Constructs a new JwtUtil object with the provided environment.
     * Retrieves the value of the "jwt.secret" property from the environment and initializes the secret variable.
     * Throws an IllegalStateException if the "jwt.secret" property is not found in the environment.
     */
    public JwtUtil(Environment env) {
        this.secret = env.getProperty("jwt.secret");
        if (this.secret == null) {
            throw new IllegalStateException("jwt.secret property not found in environment");
        }
    }

    /**
     * Returns the value of the secret variable.
     */
    private String getSecret() {
        return this.secret;
    }

    /**
     * Validates the given token.
     */
    public void validateToken(final String token) {
        Jwts.parserBuilder().setSigningKey(getSignKey()).build().parseClaimsJws(token);
    }

    /**
     * Generates a JWT token for the provided email.
     * Creates a new JWT using the Jwts.builder() method and the createToken() method.
     */
    public String generateToken(String email) {
        Map<String, Object> claims = new HashMap<>();
        return createToken(claims, email);
    }

    private String createToken(Map<String, Object> claims, String email) {

        // Return a JwtBuilder instance, which is used to create a new JWT.
        return Jwts.builder()
                // "Claims" are key-value pairs that can contain user info
                .setClaims(claims)
                // "Subject" is the unique identifier for the user of the JWT
                .setSubject(email)
                .setIssuedAt(new Date(System.currentTimeMillis()))
                // Set to expire in 2 hours
                .setExpiration(new Date(System.currentTimeMillis() + 1000 * 60 * 60 * 2))
                .signWith(getSignKey(), SignatureAlgorithm.HS256)
                // Compact the JWT into its final string form
                .compact();
    }

    private Key getSignKey() {
        byte[] keyBytes = Decoders.BASE64.decode(getSecret());
        return Keys.hmacShaKeyFor(keyBytes);
    }
}
