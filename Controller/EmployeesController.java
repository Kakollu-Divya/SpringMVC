package com.sathya.employees.Controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sathya.employees.Entity.Employees;
import com.sathya.employees.Model.EmployeesModel;
import com.sathya.employees.Service.EmployeesService;

import org.springframework.ui.Model;


@Controller
public class EmployeesController {
	
	@Autowired
	private EmployeesService empService;
	
	@GetMapping("/")
	public String home() {
		return "home";
	}
	
	@GetMapping("/about")
	public String about() {
		return "about";
		
	}
	
	@GetMapping("/contact")
	public String contact() {
		return "contact";
		
	}
	
	@GetMapping("/login")
	public String login() {
		return "login";
		
	}
	
	@GetMapping("/register")
	public String register() {
		return "register";
		
	}
	
	@PostMapping("/saveEmployees")
	public String saveEmployees(EmployeesModel empModel,Model m)
	{
		if(empModel.getId()==0) {
			m.addAttribute("message","Register Successfully");
		}
		else {
			m.addAttribute("message","Update Successfuuly");
		}
		empService.saveEmployees(empModel);
		return "registersuccess";
		
	}
	
	@GetMapping("/getAll")
	public String getEmployees(Model model) {
		  model.addAttribute("listofEmployees", empService.getEmployees());
		return "final"; 
	}
	
	@GetMapping("/deleteEmployees/{id}")
	public String deleteEmployees(@PathVariable long id) {
		 empService.deleteEmployees(id);
		return "redirect:/getAll";
		
	}
	
	@GetMapping("/updateEmployees/{id}")
	public String updateEmployees(@PathVariable(value = "id") long id,Model model) {
		return "update";
	}
	
	@PostMapping("/logins")
    public String logins(@RequestParam String name, @RequestParam String password, Model model) {
		
        boolean success = empService.authenticate(name, password);
        if (success) {
            return "Loginsuccessful"; // Redirect to the same page with a success message
        } else {
            model.addAttribute("message", "Login failed");
            return "Loginsuccessful"; // Redirect to the same page with a failure message
        }
    }


	
	@GetMapping("/search")
	public String searchEmployee() {
		return "search";
    }
	

	
	@GetMapping("/email")
    public String getEmployeeByemail(@RequestParam String search,Model model) {
    Employees employees =empService.getEmployeeByemail(search);
    
   model.addAttribute("employees", employees);
   return "search" ;
  
    }

}
