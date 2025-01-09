package controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import common.Common;
import dao.LoginDAO;
import dao.MypageDAO;
import vo.PatientVO;

@Controller
public class MypageController {
	LoginDAO login_dao;
	public void setLogin_dao(LoginDAO login_dao) {
		this.login_dao = login_dao;
	}

	MypageDAO mypage_dao;
	public void setMypage_dao(MypageDAO mypage_dao) {
		this.mypage_dao = mypage_dao;
	}

	//마이페이지로 연결 ----------------------------------------------------------------------------------------------
	@RequestMapping("mypage.do")
	public String mypage(Model model, int pat_idx) {
		PatientVO vo = login_dao.selectPatientByIdx(pat_idx);
		model.addAttribute("vo", vo);
		return Common.mypage.VIEW_PATH + "mypage_main.jsp";
	}

	//회원정보 수정 ----------------------------------------------------------------------------------------------
	@RequestMapping("mypage_update_form.do")
	public String updateInfoForm(Model model, int pat_idx) {
		PatientVO vo = login_dao.selectPatientByIdx(pat_idx);

		model.addAttribute("vo", vo);
		return Common.mypage.VIEW_PATH + "update_info.jsp";
	}

	//기본정보변경
	@RequestMapping("mypage_update_info.do")
	public String updateInfo(PatientVO vo, String[] pat_email_addr, 
			String pat_phone1_1, String pat_phone1_2,
			String pat_phone2_1, String pat_phone2_2) {

		String fullEmail = vo.getPat_email() + "@" + pat_email_addr[0];
		String fullPhone = vo.getPat_phone() +  "-" + pat_phone1_1 +  "-" +  pat_phone1_2;
		String fullPhone2 = vo.getPat_phone2() +  "-" +  pat_phone2_1 +  "-" +  pat_phone2_2;

		vo.setPat_email(fullEmail);
		vo.setPat_phone(fullPhone);
		vo.setPat_phone2(fullPhone2);

		int res = mypage_dao.updatePatientInfo(vo);
		System.out.println("update 결과 : " + res);
		return "redirect:mypage.do?pat_idx=" + vo.getPat_idx(); 
	}

	//비밀번호변경
	@RequestMapping("mypage_update_pwd.do")
	public String updatePwd(String pwd_new, int pat_idx) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("pwd_new", pwd_new);
		map.put("pat_idx", pat_idx);

		int res = mypage_dao.updatePatientPwd(map);
		System.out.println("pwd update 결과 : " + res);
		return "redirect:mypage.do?pat_idx=" + pat_idx; 
	}	

	//증명서 발급 ----------------------------------------------------------------------------------------------
	@RequestMapping("mypage_certificates_print.do")
	public String certificatesPrint() {
		return Common.mypage.VIEW_PATH + "certificates_print.jsp";
	}

	//예약 내역 ----------------------------------------------------------------------------------------------
	@RequestMapping("mypage_reservation_list.do")
	public String reservationList(Model model, int pat_idx) {
		//진료과, 교수명, 교수사진, 진료일정, 진료과위치

		return Common.mypage.VIEW_PATH + "reservation_list.jsp";
	}

	//진료비 결제
	@RequestMapping("mypage_payment_page.do")
	public String paymentPage() {
		return Common.mypage.VIEW_PATH + "payment_page.jsp";
	}

	//작성글관리
	@RequestMapping("mypage_managing_posts.do")
	public String managingPost() {
		return Common.mypage.VIEW_PATH + "managing_posts.jsp";
	}

	//메인페이지로 돌아가기 ----------------------------------------------------------------------------------------------
	@RequestMapping("mypage_main.do")
	public String mainPage(int pat_idx) {
		return "main.do?pat_idx=" + pat_idx;
	}

}







