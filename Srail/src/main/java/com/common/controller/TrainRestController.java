package com.common.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TrainRestController {

	@RequestMapping(value="/optionChange", method=RequestMethod.POST, 
			produces="application/text; charset=utf8")
	public String optionChange(@RequestParam(defaultValue="") String depPlace){
		System.out.println("depPlace==="+depPlace);
		return depPlace;  
	}
	
} 