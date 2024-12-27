package controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import common.Common;
import dao.LoginDAO;
import vo.PatientVO;

@Controller
public class LoginController {
	LoginDAO login_dao;
	public void setLogin_dao(LoginDAO login_dao) {
		this.login_dao = login_dao;
	}
	
	//기본 메인화면
	@RequestMapping(value = {"/", "main.do"})
	public String main_start(Model model) {
		//배너 이미지 담기
        ArrayList<String> imageList = new ArrayList<String>();
        
        imageList.add("/hos/resources/images/임시배너1.PNG");
        imageList.add("/hos/resources/images/임시배너2.PNG");
        imageList.add("/hos/resources/images/임시배너3.PNG");
        imageList.add("/hos/resources/images/idcheck_img.gif");
        
        model.addAttribute("images", imageList);
		return Common.main.VIEW_PATH + "MainPage_User.jsp";
	}
	
	//로그인 페이지
	@RequestMapping("login_page.do")
	public String login() {
		return Common.login.VIEW_PATH + "login.jsp";
	}
	
	//회원가입 페이지
	@RequestMapping("register_page.do")
	public String register() {
		return Common.login.VIEW_PATH + "register.jsp";
	}
	
	//환자정보 insert -----------------------------------------------------------------------------
	@RequestMapping("register_patient_insert.do")
	public String insertPatient(PatientVO vo, String pat_email_addr, 
								String pat_phone1_1, String pat_phone1_2,
								String pat_phone2_1, String pat_phone2_2) {
		
		String fullEmail = vo.getPat_email() + "@" + pat_email_addr;
		String fullPhone = vo.getPat_phone() +  "-" + pat_phone1_1 +  "-" +  pat_phone1_2;
		String fullPhone2 = vo.getPat_phone2() +  "-" +  pat_phone2_1 +  "-" +  pat_phone2_2;
		
		vo.setPat_email(fullEmail);
		vo.setPat_phone(fullPhone);
		vo.setPat_phone2(fullPhone2);
		
		int res = login_dao.insertPatient(vo);
		System.out.println("insert 결과 : " + res);
		return "redirect:login.do";
	} //insertPatient
	
	//환자정보 select (아이디 중복체크를 위한) ----------------------------------------------------------
	@RequestMapping("register_check_id.do")
	@ResponseBody
	public String checkId(String pat_id) {
		PatientVO vo = login_dao.selectPatientById(pat_id);
		
		String result = "no";
		if(vo != null) { //해당 아이디와 동일한 환자정보가 존재하는 경우
			result = "yes";
		}
		
		String resultStr = String.format("[{'result' : '%s'}]", result);
		return resultStr;
	} //checkId
	
	//회원정보 select (로그인 시 아이디, 비밀번호 체크를 위한)  ----------------------------------------------------------
	   @RequestMapping("login_chk_correct.do")
	   @ResponseBody
	   public String login(String pat_id, String pat_pwd) {
	      //아이디가 존재하는지 체크
	      PatientVO vo1 = login_dao.selectPatientById(pat_id); 
	      
	      //비밀번호가 일치하는지 체크
	      Map<String, Object> map = new HashMap<String, Object>();
	      map.put("pat_id", pat_id);
	      map.put("pat_pwd", pat_pwd);
	      PatientVO vo2 = login_dao.selectPatient(map);
	      
	      String result = "id_not_exist";
	      int pat_idx = 0;
	      if(vo2 != null) { //아이디와 비밀번호가 모두 일치하는 경우
	         result = "login_success";
	         pat_idx = login_dao.selectPatientIdx(pat_id);
	      } else if (vo1 != null) { //비밀번호는 일치하지 않지만 아이디는 일치하는 경우
	         result = "id_exist";
	      }
	      
	      //아이디에 해당하는 pat_idx 가져오기
	      
	      String resultStr = String.format("[{'result' : '%s'}, {'pat_idx' : '%d'}]", result, pat_idx);
	      return resultStr; 
	   }
	
	//환자정보 조회 ----------------------------------------------------------------------------------------------
	/*
	 * @RequestMapping("login_select_patient.do") public String selectPatient(Model
	 * model, int pat_idx) { PatientVO vo = patient_dao.selectPatientByIdx(pat_idx);
	 * model.addAttribute("vo", vo);
	 * 
	 * return Common.main.VIEW_PATH + "main.do?pat_idx=" + pat_idx; }
	 */
	
}
