package com.sgkj.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sgkj.user.entity.User;
import com.sgkj.user.service.UserServiceImpl;
@Controller
@RequestMapping("/userController")
public class UserController {
	@Autowired  
	private UserServiceImpl userService;  
	  
	@RequestMapping(params="dologin") //url  
	public String dologin(User user, Model model){  
	    if(userService.doUserLogin(user)){  
	        model.addAttribute("success", "1");
	        model.addAttribute("name", user.getUsername());  
	        return "/success";  
	    }else{  
	        model.addAttribute("fail", "0");  
	        return "/fail";  
	    }     
	}  
	}  