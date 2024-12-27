package controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import common.Common;
import dao.ReservationDAO;
import vo.DepartmentVO;

@Controller
public class ReservationController {
	
	ReservationDAO reservation_dao;
	
	public void setReservation_dao(ReservationDAO reservation_dao) {
		this.reservation_dao = reservation_dao;
	}
	

	@RequestMapping("/member_info.do")
	public String loadMemberInfo(Model model) {
	    // 데이터베이스에서 데이터를 가져옴
	    List<DepartmentVO> list = reservation_dao.select_dept();

	    // 대분류별로 데이터를 그룹화
	    Map<String, List<String>> categorizedDepartments = new HashMap<>();
	    for (DepartmentVO vo : list) {
	        categorizedDepartments
	            .computeIfAbsent(vo.getDept_category(), k -> new ArrayList<>())
	            .add(vo.getDept_name());
	    }

	    // JSP로 데이터 전달
	    model.addAttribute("list", categorizedDepartments);

	    return Common.reservation.VIEW_PATH + "member_info.jsp";
	}



	

    

    @RequestMapping("step2.do")
    public String step2() {
        return Common.reservation.VIEW_PATH + "step2.jsp";
    }
    
    @RequestMapping("/step3.do")
    public String handleStep3(
            @RequestParam("professor") String professor,
            @RequestParam("availableDays") String availableDays,
            Model model
    ) {
        // availableDays를 리스트로 변환
        List<String> availableDaysList = Arrays.asList(availableDays.split(","));

        // 출력 확인
        System.out.println("선택된 교수: " + professor);
        System.out.println("진료 가능 날짜: " + availableDaysList);

        // 모델에 데이터 추가
        model.addAttribute("professor", professor);
        model.addAttribute("availableDays", availableDaysList);

        // JSP로 이동
        return Common.reservation.VIEW_PATH + "step3.jsp"; // step3.jsp를 반환
    }

}
