package dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import vo.PatientVO;

public class PatientDAO {
	SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public int insertPatient(PatientVO vo) {
		int res = sqlSession.insert("patient.insert_patient", vo);
		return res;
	}
	
	public PatientVO selectPatientById(String pat_id) {
		PatientVO vo = sqlSession.selectOne("patient.select_patient_id", pat_id);
		return vo;
	}
	
	public PatientVO selectPatient(Map<String, Object> map) {
		PatientVO vo = sqlSession.selectOne("select_patient", map);
		return vo;
	}
	
}
