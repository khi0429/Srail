package com.test.controller;

import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.JSONValue;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {

	@RequestMapping("/test.do")
	public void showTest(Model m) {
		System.out.println("showTest()@@@");
	}

	public static void main(String[] args) { 
		
		try{
		URL url = new URL("http://openapi.tago.go.kr/openapi/service/TrainInfoService/getStrtpntAlocFndTrainInfo?ServiceKey=%2F%2BrhkB9JMW9bCbX8vLw0n3%2BUmTPwVjd1PKzaG9I3zPaKG150UTcPJcMgX1d57w5Y%2B47O0xwrk4J4q523HoB1sA%3D%3D&numOfRow=10&pageNo=1&depPlaceId=NAT010000&arrPlaceId=NAT011668&depPlandTime=20170811&_type=json");
		InputStreamReader isr = new InputStreamReader(url.openConnection().getInputStream(), "UTF-8");
		JSONObject object = (JSONObject)JSONValue.parse(isr);
		
		System.out.print(object);
		}catch(Exception e){
			System.out.println("exception==>"+e);
		}
	}


}
