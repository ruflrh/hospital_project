package kty_controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import common.Common;
import dao.ReservationDAO;
import service.CalendarService;

@Controller
public class ReservationController {
	
	ReservationDAO reservation_dao;
	
	public void setReservation_dao(ReservationDAO reservation_dao) {
		this.reservation_dao = reservation_dao;
	}
	

    @RequestMapping("member_info.do")
    public String reservation() {
        return Common.reservation.VIEW_PATH + "member_info.jsp";
    }

    @RequestMapping("step2.do")
    public String step2_reservation() {
        return Common.reservation.VIEW_PATH + "step2.jsp";
    }
    
    @RequestMapping("/step3.do")
    public String handleStep3_reservation(
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
