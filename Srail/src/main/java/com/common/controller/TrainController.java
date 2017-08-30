package com.common.controller;

import java.io.InputStreamReader;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class TrainController {

	@RequestMapping("/trainInfo")
	public String showTrainInfo(Model m, @RequestParam(defaultValue="") String dep,
			@RequestParam(defaultValue="") String arr) { 
		return "/train/trainInfo";
	}
	
} 