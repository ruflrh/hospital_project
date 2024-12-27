package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.DepartmentVO;

public class ReservationDAO {
	
	SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public List<DepartmentVO> select_dept(){
		List<DepartmentVO> list = sqlSession.selectList("dept.dept_list");
		return list;
	}
	
	/*
	 * public List<ReservationVO> select_list() { List<ReservationVO> list =
	 * sqlSession.selectList("r.able_date"); return list; }
	 */

}