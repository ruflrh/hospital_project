package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.ReservationVO;

public class ReservationDAO {
	
	SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	
	
	/*
	 * public List<ReservationVO> select_list() { List<ReservationVO> list =
	 * sqlSession.selectList("r.able_date"); return list; }
	 */

}
