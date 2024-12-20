package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import common.Common;
import dao.LoginDAO;
import vo.PatientVO;

@Controller
public class MypageController {
	LoginDAO login_dao;
	public void setLogin_dao(LoginDAO login_dao) {
		this.login_dao = login_dao;
	}
	
	//마이페이지로 연결 ----------------------------------------------------------------------------------------------
	@RequestMapping("mypage.do")
	public String mypage(Model model, int pat_idx) {
		PatientVO vo = login_dao.selectPatientByIdx(pat_idx);
		model.addAttribute("vo", vo);
		return Common.mypage.VIEW_PATH + "mypage_main.jsp";
   }

	//회원정보 수정
	@RequestMapping("update_info.do")
	public String updateInfo() {
		return Common.mypage.VIEW_PATH + "update_info.jsp";
	}
	
	//증명서 발급
	@RequestMapping("certificates_print.do")
	public String certificatesPrint() {
		return Common.mypage.VIEW_PATH + "certificates_print.jsp";
	}
	
	//예약 내역
	@RequestMapping("reservation_list.do")
	public String reservationList() {
		return Common.mypage.VIEW_PATH + "reservation_list.jsp";
	}
	
	//예약 내역
	@RequestMapping("payment_page.do")
	public String paymentPage() {
		return Common.mypage.VIEW_PATH + "payment_page.jsp";
	}
	
	//예약 내역
	@RequestMapping("managing_posts.do")
	public String managingPost() {
		return Common.mypage.VIEW_PATH + "managing_posts.jsp";
	}
	
	
}







