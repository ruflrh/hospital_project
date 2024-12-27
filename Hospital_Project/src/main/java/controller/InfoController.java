package controller;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

import common.Common;
import dao.PatBoardDAO;

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
	
	//오시는 길 
	@RequestMapping("/way_info.do")
	public String wayinfo() {
		return Common.info.VIEW_PATH + "way_info.jsp";
	}
	
	// ------------------------ 공지사항 ---------------------
	//공지사항 조회 페이지로 전환
	@RequestMapping("/info_notice_form.do")
	public String hos_notice_form() {
		return Common.info.VIEW_PATH + "hos_notice.jsp";
	}
	
	
	
}


