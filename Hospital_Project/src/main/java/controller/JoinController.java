package controller;

import java.io.File;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import common.Common;
import dao.PatBoardDAO;
import vo.PatBoardVO;

//고객참여 컨트롤러
@Controller
public class JoinController {
	
	PatBoardDAO patBoard_dao;
	public void setPatBoard_dao(PatBoardDAO patBoard_dao) {
		this.patBoard_dao = patBoard_dao;
	}
	
	@Autowired
	ServletContext application;
	
	
	// ---------------------------- 감사합니다 --------------------------------------
	//감사합니다 리스트 조회 
	@RequestMapping("/info_thanks_list_form.do")
	public String thanks_list_form(Model model) {
		List<PatBoardVO> list = patBoard_dao.selectThanks();
		
		model.addAttribute("list", list);
		
		return Common.join.VIEW_PATH + "thanks_list.jsp";
	}
	
	//감사합니다 글 작성 페이지 전환
	@RequestMapping("/info_thanks_insert_form.do")
	public String thanks_insert_form() {
		return Common.join.VIEW_PATH + "thanks_insert.jsp";
	}
	
	//감사합니다 추가
	@RequestMapping("/info_thanks_insert.do")
	public String thanks_insert(@ModelAttribute PatBoardVO vo, String board_phone,
								String board_phone_1, String board_phone_2) {
		
		System.out.println("board_phone: " + board_phone);
	    System.out.println("board_phone_1: " + board_phone_1);
	    System.out.println("board_phone_2: " + board_phone_2);
		
	    
	    
		String phone = board_phone+"-" +board_phone_1+"-"+board_phone_2;
		System.out.println("--전화번호"+phone);
		vo.setBoard_phone(phone);
		
		//사진 파일 업로드
		String webPath = "resources/uploadThanks/"; //상대경로
		String savePath = application.getRealPath(webPath); //절대경로
		
		System.out.println("--- 절대경로 : " + savePath);
		
		//업로드를 위한 파일 정보 
		MultipartFile photo = vo.getPhoto();
		String filename = "no_file";
		
		if( !photo.isEmpty() ) {
			filename = photo.getOriginalFilename();
			
			//저장할 파일 경로
			File saveFile = new File(savePath, filename);
			if( !saveFile.exists() ) {
				//절대경로 존재하지 않는다면 생성
				saveFile.mkdirs();
			}else {
				//파일 동일명 설정
				long time = System.currentTimeMillis();
				filename = String.format("%d_%s", time, filename);
				saveFile = new File(savePath, filename);
			}
			
			//절대경로에 파일 생성
			try {
				photo.transferTo(saveFile);
			} catch (Exception e) {
				e.printStackTrace();
			} 
			
		}else {
			filename = "no_file";
		}
		
		vo.setBoard_file(filename);
		
		
		int res = patBoard_dao.insertThanks(vo);
		
		System.out.println("----res : "+ res);
		return "redirect:/info_thanks_list_form.do";
	}
	
	
	
	// --------------------------- 건의합니다 ------------------------------------
	//건의합니다 작성 페이지로 전환
	@RequestMapping("/info_compl_insert_form.do")
	public String complaint_insert_form() {
		return Common.join.VIEW_PATH + "complaint_insert.jsp";
	}
	
	
	
	// --------------------------- 자원봉사 --------------------------------------
	//자원봉사 조회 페이지로 전환
	@RequestMapping("/info_volunteer_list_form.do")
	public String volunteer_list_form() {
		return Common.join.VIEW_PATH + "volunteer_list.jsp";
	}
	
	
}





