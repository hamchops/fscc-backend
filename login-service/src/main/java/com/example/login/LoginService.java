package com.example.login;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import com.example.login.util.JwtUtil;

@Service
public class LoginService {

    private static final Logger logger = LoggerFactory.getLogger(LoginService.class);

    private final LoginRepository loginRepository;

    private final PasswordEncoder passwordEncoder;
    private final JwtUtil jwtUtil;

    public LoginService(final LoginRepository loginRepository,
            final PasswordEncoder passwordEncoder,
            final JwtUtil jwtUtil) {
        this.loginRepository = loginRepository;
        this.passwordEncoder = passwordEncoder;
        this.jwtUtil = jwtUtil;
    }

    public Login createUser(Login request) throws Exception {
        List<Login> userList = loginRepository.findAll();
        Login userToCreate = request;

        for (Login user : userList) {
            if (user.getEmail().equals(request.getEmail())) {
                throw new Exception("User with email " + request.getEmail() + " already exists.");
            }
        }

        userToCreate.setPassword(passwordEncoder.encode(userToCreate.getPassword()));

        loginRepository.save(userToCreate);

        return (userToCreate);
    }

    public String generateToken(String email) {
        return jwtUtil.generateToken(email);
    }

    public void validateToken(String token) {
        jwtUtil.validateToken(token);
    }

    /**
     * Updates the information of a login user by their ID.
     * If the user exists, it updates their first name, last name, email, and password with the values from the `updateLogin` object.
     * The password is also encrypted using a password encoder.
     */
    public Login updateLoginById(Long id, Login updateLogin) {
        Login existingLogin = loginRepository.findById(id).orElse(null);
        logger.info("pre-encryption password:", updateLogin.getPassword());
        if (existingLogin != null) {
            existingLogin.setFirstName(updateLogin.getFirstName());
            existingLogin.setLastName(updateLogin.getLastName());
            existingLogin.setEmail(updateLogin.getEmail());
            existingLogin.setPassword(passwordEncoder.encode(updateLogin.getPassword()));
            logger.info("post-encryption password:", existingLogin.getPassword());
            return loginRepository.save(existingLogin);
        }
        return null;
    }

    public Login createLogin(Login login) {
        return loginRepository.save(login);
    }

    public Login getLoginById(Long id) {
        return loginRepository.findById(id).orElse(null);
    }

    /**
     * This enum represents the different search types that can be used in the LoginService class.
     */
    private enum SearchType {
        FIRST_NAME_LAST_NAME,
        FIRST_NAME_EMAIL,
        LAST_NAME_EMAIL,
        FIRST_NAME,
        LAST_NAME,
        EMAIL,
        ALL
    }

    /**
     * Retrieves a list of Login objects based on the provided first name, last name, and email.
     */
    public List<Login> getLoginsByInfo(String firstName, String lastName, String email) {
        if (firstName != null && lastName != null && email != null) {
            return loginRepository.findByFirstNameAndLastNameAndEmail(firstName, lastName, email);
        }

        SearchType searchType = getSearchType(firstName, lastName, email);

        switch (searchType) {
            case FIRST_NAME_LAST_NAME:
                return loginRepository.findByFirstNameAndLastName(firstName, lastName);
            case FIRST_NAME_EMAIL:
                return loginRepository.findByFirstNameAndEmail(firstName, email);
            case LAST_NAME_EMAIL:
                return loginRepository.findByLastNameAndEmail(lastName, email);
            case FIRST_NAME:
                return loginRepository.findByFirstName(firstName);
            case LAST_NAME:
                return loginRepository.findByLastName(lastName);
            case EMAIL:
                return loginRepository.findByEmail(email);
            default:
                return loginRepository.findAll();
        }
    }

    /**
     * Determines the appropriate search type based on the combination of input parameters.
     */
    private SearchType getSearchType(String firstName, String lastName, String email) {
        if (firstName != null && lastName != null && email == null) {
            return SearchType.FIRST_NAME_LAST_NAME;
        } else if (firstName != null && email != null && lastName == null) {
            return SearchType.FIRST_NAME_EMAIL;
        } else if (lastName != null && email != null && firstName == null) {
            return SearchType.LAST_NAME_EMAIL;
        } else if (firstName != null && lastName == null && email == null) {
            return SearchType.FIRST_NAME;
        } else if (lastName != null && firstName == null && email == null) {
            return SearchType.LAST_NAME;
        } else if (email != null && firstName == null && lastName == null) {
            return SearchType.EMAIL;
        } else {
            return SearchType.ALL;
        }
    }

    public boolean deleteLoginById(Long id) {
        try {
            loginRepository.deleteById(id);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

}
