package controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import dao.UserDAO;
import dto.UserDTO;

//http://localhost:8090/khbook/signUp.kh

@Controller
public class UserController {
	private UserDAO dao;
	
	public UserController() {
		
	}
	
	public void setDao(UserDAO dao) {
		this.dao = dao;
	}
	
	
	@RequestMapping(value="/signUp.kh", method=RequestMethod.GET)
	public String form() {
		return "user/signUp";
	}
	
	@RequestMapping(value="/signUp.kh", method=RequestMethod.POST)
	public String submit(UserDTO udto){
		dao.register(udto);
		return "redirect:/user/signCom";
	}
	
	
}//end class
