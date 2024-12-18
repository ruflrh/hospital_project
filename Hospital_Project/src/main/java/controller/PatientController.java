package controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import common.Common;
import dao.PatientDAO;
import vo.PatientVO;

@Controller
public class PatientController {
	PatientDAO patient_dao;
	public void setPatient_dao(PatientDAO patient_dao) {
		this.patient_dao = patient_dao;
	}
	
	//기본 메인화면
	@RequestMapping(value = {"/", "main.do"})
	public String main_start(Model model) {
		List<PatientVO> list = patient_dao.selectList();
		
		//배너 이미지 담기
        ArrayList<String> imageList = new ArrayList<String>();
        
        imageList.add("/hos/resources/images/임시배너1.PNG");
        imageList.add("/hos/resources/images/임시배너2.PNG");
        imageList.add("/hos/resources/images/임시배너3.PNG");
        imageList.add("/hos/resources/images/idcheck_img.gif");
        
        model.addAttribute("images", imageList);
		model.addAttribute("list", list);
		return Common.main.VIEW_PATH + "MainPage_User.jsp";
	}
}
