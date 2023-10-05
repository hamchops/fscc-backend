package com.example.login;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;



public interface LoginRepository extends JpaRepository<Login, Long> {

     /**
     * Custom query to find Login entities that match the provided firstName, lastName, and email.
     */
@Query("SELECT e FROM Login e WHERE e.firstName = :firstName AND e.lastName = :lastName AND e.email = :email")
List<Login> findByLoginInfo(@Param("firstName") String firstName, @Param("lastName") String lastName, @Param("email") String email);

    List<Login> findByFirstNameAndLastNameAndEmail(String firstName, String Lastname, String email);

    List<Login> findByFirstNameAndLastName(String firstName, String lastName);

    List<Login> findByFirstNameAndEmail(String firstLastName, String email);

    List<Login> findByLastNameAndEmail(String lastName, String email);
    
    List<Login> findByFirstName(String firstLastName);

    List<Login> findByLastName(String lastName);

    List<Login> findByEmail(String email);


}
