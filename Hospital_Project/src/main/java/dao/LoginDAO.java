package dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import vo.PatientVO;

public class LoginDAO {
	SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	//회원추가
	public int insertPatient(PatientVO vo) {
		int res = sqlSession.insert("login.insert_patient", vo);
		return res;
	}
	
	//아이디로 회원 조회
	public PatientVO selectPatientById(String pat_id) {
		PatientVO vo = sqlSession.selectOne("login.select_patient_id", pat_id);
		return vo;
	}
	
	//아이디와 비밀번호로 회원조회
	public PatientVO selectPatient(Map<String, Object> map) {
		PatientVO vo = sqlSession.selectOne("login.select_patient", map);
		return vo;
	}
	
	//아이디로 회원조회(인덱스만)
	public int selectPatientIdx(String pat_id) {
		int pat_idx = sqlSession.selectOne("login.select_patient_idx", pat_id);
		return pat_idx;
	}
	
	//인덱스로 회원조회
	public PatientVO selectPatientByIdx(int pat_idx) {
		PatientVO vo = sqlSession.selectOne("login.select_patient_by_idx", pat_idx);
		return vo;
	}
	
}
