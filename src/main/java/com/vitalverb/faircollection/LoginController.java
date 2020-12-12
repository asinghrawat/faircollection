package com.vitalverb.faircollection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.vitalverb.faircollection.model.Login;
import com.vitalverb.faircollection.model.LoginRepo;
import com.vitalverb.faircollection.model.User;
import com.vitalverb.faircollection.model.UserRepo;

@Controller
public class LoginController {
	
	@Autowired
	private UserRepo userRepo;
	
	@Autowired
	private LoginRepo loginRepo;
	
	@RequestMapping("/")
	public String checkMVC()
	{
		return "login";
	}
	
	@RequestMapping("/registration")
	public String registration()
	{
		return "registration";
	}
	
	
	@RequestMapping("/login")
	public String goTOHomePage(@RequestParam("username") String userName,
			@RequestParam("password") String password,Model model)
	{
		User user = null;
		Login login=null;
		try {
			user=userRepo.findByName(userName);
			login=loginRepo.findByUsername(userName);
			
		}
		catch(Exception ex) {System.out.println("User Not found");}
		
		if(login!=null&& login.getUsername().equals(userName)&&login.getPassword().equals(password))
		{
			model.addAttribute("UserName", userName);
			return "homepage";
		}
		model.addAttribute("error", "User not found !!");
		return "login";
		
	}
}
