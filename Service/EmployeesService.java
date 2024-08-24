 package com.sathya.employees.Service;


import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sathya.employees.Entity.Employees;
import com.sathya.employees.Model.EmployeesModel;
import com.sathya.employees.Repository.EmployeesRepository;

@Service
public class EmployeesService {
	
	@Autowired
	private EmployeesRepository empRepository;
	
	public Employees saveEmployees(EmployeesModel empModel){
		
		Employees employee = new Employees();
		employee.setId(empModel.getId());
		employee.setName(empModel.getName());
		employee.setMobile(empModel.getMobile());
		employee.setEmail(empModel.getEmail());
		employee.setGender(empModel.getGender());
		employee.setAddress(empModel.getAddress());
		employee.setPassword(empModel.getPassword());
		
		
		return  empRepository.save(employee);
		
		
		
	}

	public List<Employees> getEmployees() {
		
		return empRepository.findAll();
	}

	public void deleteEmployees(Long id) {
		 empRepository.deleteById(id);
	}

	public Employees updateEmployees(long id) {
		return empRepository.findById(id).get();
	}
	
	
    public boolean authenticate(String name, String password) {
		
        Optional<Employees> emp = empRepository.findByName(name);
        if(emp.isPresent()) {
        	if(emp.get().getPassword().equals(password)) return true;
        }
        
        return false;
    }
    
    
     //serach
	public Employees getEmployeeByemail(String email) {
		 Optional<Employees> byEmail = empRepository.findByEmail(email);
		 if(byEmail.isPresent()) return byEmail.get();
		 return new Employees();																				
	}
		
	}

