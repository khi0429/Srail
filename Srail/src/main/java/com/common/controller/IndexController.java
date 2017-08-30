package com.common.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.train.model.TrainVO;
import com.train.service.TrainService;

@Controller
public class IndexController {

	@Autowired
	private TrainService trainService;
	
	@RequestMapping("/index")
	public String showIndex(Model m){
		System.out.println("index.do실행");
		List<TrainVO> placeArr=trainService.getPlace();
		m.addAttribute("placeArr",placeArr);
		return "/index";  
	}
	
	@RequestMapping("/top")
	public void showTop(){
		
	}
	
	@RequestMapping("/foot")
	public void showFoot(){
		
	}
	
}
 