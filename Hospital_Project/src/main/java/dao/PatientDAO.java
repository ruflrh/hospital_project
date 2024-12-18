package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.PatientVO;

public class PatientDAO {
	
	SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	//테스트 조회
	public List<PatientVO> selectList(){
		List<PatientVO> list = sqlSession.selectList("p.patient_list");
		return list;
	}
	
}





