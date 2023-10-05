package com.example.login;

import java.util.List;

import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController

@RequestMapping(path = "logins")
public class LoginController {

    private final LoginService loginService;
    private final AuthenticationManager authenticationManager;

    public LoginController(LoginService loginService,
            final AuthenticationManager authenticationManager) {

        this.loginService = loginService;
        this.authenticationManager = authenticationManager;
    }

    @GetMapping("/health")
    public String status() {
        return "Login path is healthy";
    }

    @PostMapping("/register")
    public Login createUser(@RequestBody Login request) throws Exception {
        return loginService.createUser(request);
    }

    @PostMapping("/token")
    public String getToken(@RequestBody Login request) {
        // Spring Security's built-in authentication
        authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(
                        request.getEmail(),
                        request.getPassword()));

        return loginService.generateToken(request.getEmail());
    }

    @GetMapping("/{id}")
    public Login getLoginById(@PathVariable Long id) {
        return loginService.getLoginById(id);
    }

    @PutMapping("/{id}")
    public Login updateLoginById(@PathVariable Long id, @RequestBody Login updateLoginById) {
        return loginService.updateLoginById(id, updateLoginById);
    }

    @DeleteMapping("/{id}")
    public String deleteLoginById(@PathVariable Long id) {
        boolean deleted = loginService.deleteLoginById(id);

        if (deleted) {
            return "User with ID " + id + " has been deleted";
        } else {
            return "User with ID " + id + " not found or could not delete";
        }
    }

    @GetMapping()
    public List<Login> getLoginByInfo(
            @RequestParam(required = false) String firstName,
            @RequestParam(required = false) String lastName,
            @RequestParam(required = false) String email) {

        return loginService.getLoginsByInfo(firstName, lastName, email);
    }

}
