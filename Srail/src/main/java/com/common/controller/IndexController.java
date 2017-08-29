package com.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

	@RequestMapping("/index.do")
	public String showIndex(Model m){
		System.out.println("index.do실행");
		return "/index";
	}
	
	@RequestMapping("/top.do")
	public void showTop(){
		
	}
	
	@RequestMapping("/foot.do")
	public void showFoot(){
		
	}
}
