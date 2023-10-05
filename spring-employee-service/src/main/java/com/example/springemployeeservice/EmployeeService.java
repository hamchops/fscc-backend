package com.example.springemployeeservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Service;



import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Service
@SpringBootApplication
public class EmployeeService {
    private static final Logger logger = LoggerFactory.getLogger(EmployeeService.class);
    private EmployeeRepository  employeeRepository;
    

    @Autowired
    public void EmployeeServices(EmployeeRepository employeeRepository){
        this.employeeRepository = employeeRepository;
    }

    public Employee createEmployee(Employee employee) {
        return employeeRepository.save(employee);
    }

    public Employee getEmployeeById(Long id){
        return employeeRepository.findById(id).orElse(null);
    }

    /**
     * Updates an existing employee's information in the employee repository.
     */
    public Employee updateEmployeeById(Long id, Employee updateEmployee) {
        Employee existingEmployee = employeeRepository.findById(id).orElse(null);
        if (existingEmployee != null) {
            existingEmployee.setFirstName(updateEmployee.getFirstName());
            existingEmployee.setLastName(updateEmployee.getLastName());
            existingEmployee.setZipCode(updateEmployee.getZipCode());
            existingEmployee.setCity(updateEmployee.getCity());
            existingEmployee.setState(updateEmployee.getState());

            return employeeRepository.save(existingEmployee);
        }
        return null;
    }

    public void deleteEmployeeById(Long id) {
        employeeRepository.deleteById(id);
    }

    /**
     * This enum represents the different search types that can be used in the LoginService class.
     */
    private enum SearchType {
        FIRST_NAME_LAST_NAME,
        FIRST_NAME_STATE,
        LAST_NAME_STATE,
        FIRST_NAME,
        LAST_NAME,
        STATE,
        CITY,
        ALL
    }

    /**
     * This method returns a list of employees based on the provided search criteria.
     */
    public List<Employee> getEmployeesByInfo(String firstname, String lastname, String city, String state) {
        logger.info("Searching for employees with state: {}", state);

        if (firstname != null && lastname != null && state != null) {
            return employeeRepository.findByFirstNameAndLastNameAndCityAndState(firstname, lastname, city, state);
        }

        switch (getSearchType(firstname, lastname, city, state)) {
            case FIRST_NAME_LAST_NAME:
                return employeeRepository.findByFirstNameAndLastName(firstname, lastname);
            case FIRST_NAME_STATE:
                return employeeRepository.findByFirstNameAndState(firstname, state);
            case LAST_NAME_STATE:
                return employeeRepository.findByLastNameAndState(lastname, state);
            case FIRST_NAME:
                return employeeRepository.findByFirstName(firstname);
            case LAST_NAME:
                return employeeRepository.findByLastName(lastname);
            case STATE:
                return employeeRepository.findByState(state);
            case CITY:
                return employeeRepository.findByCity(city);
            default:
                return employeeRepository.findAll();
        }
    }

    /**
     * This method determines the search type based on the provided search criteria.
     */
    private SearchType getSearchType(String firstname, String lastname, String city, String state) {
        if (firstname != null && lastname != null && state == null && city == null) {
            return SearchType.FIRST_NAME_LAST_NAME;
        } else if (firstname != null && state != null && lastname == null && city == null) {
            return SearchType.FIRST_NAME_STATE;
        } else if (lastname != null && state != null && firstname == null && city == null) {
            return SearchType.LAST_NAME_STATE;
        } else if (firstname != null && lastname == null && state == null && city == null) {
            return SearchType.FIRST_NAME;
        } else if (lastname != null && firstname == null && state == null && city == null) {
            return SearchType.LAST_NAME;
        } else if (state != null && firstname == null && lastname == null && city == null) {
            return SearchType.STATE;
        } else if (city != null && firstname == null && lastname == null && state == null) {
            return SearchType.CITY;
        } else {
            return SearchType.ALL;
        }
    }
    

}


