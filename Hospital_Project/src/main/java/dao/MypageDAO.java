package dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import vo.PatientVO;
import vo.ReservationVO;

public class MypageDAO {
	SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	//기본정보변경
	public int updatePatientInfo(PatientVO vo) {
		int res = sqlSession.update("mypage.update_patient_info", vo);
		return res;
	}
	
	//비밀번호변경
	public int updatePatientPwd(Map<String, Object> map) {
		int res = sqlSession.update("mypage.update_patient_pwd", map);
		return res;
	}
	
	//예약내역조회 (진료과, 교수명, 교수사진, 진료일정, 진료과위치)
	//public ReservationVO selectReservationList(int pat_idx) {
	//}
	
}
