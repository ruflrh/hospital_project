package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.PatBoardVO;

public class PatBoardDAO {
	
	SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	
	// ---------------------------- 감사합니다 --------------------------------------
	//감사합니다 조회
	public List<PatBoardVO> selectThanks(){
		List<PatBoardVO> list = sqlSession.selectList("patBoard.thanks_list");
		return list;
	}
	
	//감사합니다 추가
	public int insertJoin(PatBoardVO vo) {
		int res = sqlSession.insert("patBoard.thanks_insert", vo);
		return res;
	}
	
	
	
	


}
