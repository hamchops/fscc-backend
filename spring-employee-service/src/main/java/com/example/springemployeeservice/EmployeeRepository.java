package com.example.springemployeeservice;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface EmployeeRepository extends JpaRepository<Employee, Long> {

    static final Logger logger = LoggerFactory.getLogger(EmployeeService.class); 
     
/**
 * Custom query to find Login entities that match the provided firstName, lastName, and email.
 */
@Query("SELECT e FROM Employee e WHERE e.firstName = :firstName AND e.lastName = :lastName AND e.city = :city AND e.state = :state")
List<Employee> findByInfo(@Param("firstName") String firstName, @Param("lastName") String lastName,  @Param("city") String city, @Param("state") String state);

    List<Employee> findByFirstNameAndLastNameAndCityAndState(String firstName, String lastName, String city, String state);

    List<Employee> findByFirstNameAndLastName(String firstName, String lastName);

    List<Employee> findByFirstNameAndState(String firstName, String state);

    List<Employee> findByLastNameAndState(String lastName, String state);
    
    List<Employee> findByFirstName(String firstName);

    List<Employee> findByLastName(String lastName);

    List<Employee> findByState(String state);

    List<Employee> findByCity(String city);

    
}
