package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.NoticeVO;

public class NoticeDAO {

	SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	//공지사항 전체 조회
	public List<NoticeVO> selectNotList(){
		List<NoticeVO> list = sqlSession.selectList("notice.select_notice_list");
		return list;
	}
	
	//공지사항 상세 조회
	public NoticeVO selectNotOne( int not_idx ){
		NoticeVO vo = sqlSession.selectOne("notice.select_notice_one", not_idx);
		return vo;
	}
	
}
