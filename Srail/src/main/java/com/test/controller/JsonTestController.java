package com.test.controller;

import java.io.InputStreamReader;
import java.net.URL;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.JSONValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class JsonTestController {
	
	@RequestMapping("/jsonTest.do")  
	public JSONObject jsonArr(){
		JSONObject object=null;
		//JSONArray jsonArr=new JSONArray();
		try{
			URL url = new URL("http://openapi.tago.go.kr/openapi/service/TrainInfoService/getStrtpntAlocFndTrainInfo?&_type=json&ServiceKey=%2F%2BrhkB9JMW9bCbX8vLw0n3%2BUmTPwVjd1PKzaG9I3zPaKG150UTcPJcMgX1d57w5Y%2B47O0xwrk4J4q523HoB1sA%3D%3D&numOfRow=10&pageNo=1&depPlaceId=NAT010000&arrPlaceId=NAT011668&depPlandTime=20170811&trainGradeCode=00");
			InputStreamReader isr = new InputStreamReader(url.openConnection().getInputStream(), "UTF-8");
			object = (JSONObject)JSONValue.parse(isr);
			//jsonArr.add(object);
			System.out.print("@@@@@@@@@@@"+object);
		}catch(Exception e){
			System.out.println("exception==>"+e);
		}
		
		return object;
	}
	


}
