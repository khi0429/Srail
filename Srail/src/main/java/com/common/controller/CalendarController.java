package com.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller  
public class CalendarController {
	
	@RequestMapping("/calendar.do")
	public String showIndex(Model m){
		System.out.println("do실행");
		return "mainpage/calendar";
	}
	
}
