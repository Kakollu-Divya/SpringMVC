package com.sathya.employees.Repository;



import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.sathya.employees.Entity.Employees;

@Repository
public interface EmployeesRepository extends JpaRepository<Employees, Long>{

	Optional<Employees> findByName(String name);
	
	Optional<Employees> findByEmail(String email);
}


	//Employees findByEmail(String s);
	
	

