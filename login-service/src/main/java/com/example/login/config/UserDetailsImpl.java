package com.example.login.config;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.example.login.Login;


/**
 * This class represents the implementation of the UserDetails interface.
 * It initializes the name and password fields of the class with the values from the Login entity passed to the constructor.
 */
public class UserDetailsImpl implements UserDetails {

    private String name;
    private String password;

    /**
     * Constructs a new UserDetailsImpl object with the given Login entity.
     */
    public UserDetailsImpl(Login loginEntity) {
        name = loginEntity.getEmail();
        password = loginEntity.getPassword();
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return null;
    }

    @Override
    public String getPassword() {
        return password;
    }

    @Override
    public String getUsername() {
        return name;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }
}
