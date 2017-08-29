package com.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {

	@RequestMapping("/join.do")
	public String joinForm(Model m){
		System.out.println("join.do");
		return "member/join";
	}
	
}
