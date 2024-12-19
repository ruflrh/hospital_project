package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.ReservationVO;

public class ReservationDAO {
	
	SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
}
