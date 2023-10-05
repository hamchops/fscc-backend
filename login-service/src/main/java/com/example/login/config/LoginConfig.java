package com.example.login.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

import com.example.login.LoginRepository;

@Configuration
@EnableWebSecurity
public class LoginConfig {

    private final LoginRepository loginRepository;

    LoginConfig(final LoginRepository loginRepository) {
        this.loginRepository = loginRepository;
    }

    // Get the user details service bean
    @Bean
    UserDetailsService userDetailsService() {
        return new UserDetailsServiceImpl(loginRepository);
    }

    // Get the security filter chain bean
    @Bean
    SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        // Spring Security's default is to make all endpoints secure,
        // even though this is already handled in the API Gateway
        http.csrf(csrf -> csrf.disable())
            .authorizeHttpRequests((authorizeHttpRequests) ->
                authorizeHttpRequests
                    .requestMatchers("/logins/**")
                    .permitAll()
            );
        return http.build();             
    }

    // Get the password encoder bean
    @Bean
    PasswordEncoder passwordEncoder() {
        // Required to have this class for configuring Authentication Provider
        return new BCryptPasswordEncoder();
    }

    // Get the authentication provider bean
    @Bean
    AuthenticationProvider authenticationProvider() {
        DaoAuthenticationProvider authenticationProvider = new DaoAuthenticationProvider();
        authenticationProvider.setUserDetailsService(userDetailsService());
        authenticationProvider.setPasswordEncoder(passwordEncoder());
        return authenticationProvider;
    }

    // Get the authentication manager bean
    @Bean
    AuthenticationManager authenticationManager(AuthenticationConfiguration config) throws Exception {
        return config.getAuthenticationManager();
    }
}
