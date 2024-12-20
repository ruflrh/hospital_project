package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import common.Common;

@Controller
public class InfoController {
	
	//층별 안내
	@RequestMapping("floor_info.do")
	public String floorInfo() {
		return Common.info.VIEW_PATH + "floor_info.jsp";
	}
	
	//주차 안내
	@RequestMapping("parking_info.do")
	public String parkingInfo() {
		return Common.info.VIEW_PATH + "parking_info.jsp";
	}
	
	
	
}


