package com.sathya.employees.Model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class EmployeesModel {
	

	private long id;
	
    private String name;
	
	private long mobile;
	
	private String email;
	
	private String address;
	
	private String gender;
	
	private String password;

}
