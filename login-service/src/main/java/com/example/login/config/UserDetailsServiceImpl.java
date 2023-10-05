/**
 * This class is an implementation of the UserDetailsService interface. It is responsible for loading a user's details based on their email address.
 */
package com.example.login.config;

import java.util.List;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

import com.example.login.Login;
import com.example.login.LoginRepository;

@Component
public class UserDetailsServiceImpl implements UserDetailsService {

    private final LoginRepository loginRepository;

    UserDetailsServiceImpl(final LoginRepository loginRepository) {
        this.loginRepository = loginRepository;
    }

    /**
     * Loads the user's details based on their email address.
     */
    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        // Assuming you have a list of Login objects with one item
        List<Login> loginList = loginRepository.findByEmail(email);
        if (loginList.isEmpty()) {
            throw new UsernameNotFoundException("User not found: " + email);
        }

        Login login = loginList.get(0);
        return new UserDetailsImpl(login);
    }
}