package vo;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

/*
drop table patBoard;
drop sequence seq_patBoard_idx;

--시퀀스 --
create sequence seq_patBoard_idx;

--감사합니다/건의합니다 테이블
CREATE TABLE patBoard (
	board_idx 		NUMBER(10) primary key,
	pat_idx 		NUMBER(3),
	board_title 	VARCHAR2(300),
	board_content 	CLOB,
	board_file 		VARCHAR2(200),
	board_email 		VARCHAR2(200),
	board_phone 		VARCHAR2(20),
	board_type 		VARCHAR2(100), --수정불가
	BOARD_DATE 		DATE, --수정불가
	BOARD_NAME 		VARCHAR2(30)
);

insert into patBoard values(
	seq_patBoard_idx.nextVal,
	16, --윤도현환자
	'친절한 치료에 감동받았습니다.', 
	'지난주 응급실에서 만난 의사선생님께서 친절하게 진료 및 치료과정에 대해 설명해주셔서 안심하고 치료받을 수 있었습니다 감사합니다!',
	null,
	'rhruf329@naver.com',
	'010-2222-1111',
	'thanks',
	sysdate,
	'윤도현'
);

insert into patBoard values(
	seq_patBoard_idx.nextVal,
	16, --윤도현환자
	'진료 대기 중 대기공간 부족.', 
	'진료를 받기 위해 대기하는 환자들은 많은데 비해, 준비되어있는 공간이 많이 협소합니다. 이부분 신경써 주시면 감사하겠습니다',
	null,
	'rhruf329@naver.com',
	'010-2222-1111',
	'suggest',
	sysdate,
	'윤도현'
);
commit;

*/

public class PatBoardVO {

	private int board_idx, pat_idx;
	private String board_title, board_content, board_file, board_email, 
							board_phone, board_type, board_name;
	private String board_date;
	private MultipartFile photo;
	
	
	public MultipartFile getPhoto() {
		return photo;
	}
	public void setPhoto(MultipartFile photo) {
		this.photo = photo;
	}
	
	public String getBoard_name() {
		return board_name;
	}
	public void setBoard_name(String board_name) {
		this.board_name = board_name;
	}
	public String getBoard_date() {
		return board_date;
	}
	public void setBoard_date(String board_date) {
		this.board_date = board_date;
	}
	public String getBoard_phone() {
		return board_phone;
	}
	public void setBoard_phone(String board_phone) {
		this.board_phone = board_phone;
	}
	public int getBoard_idx() {
		return board_idx;
	}
	public void setBoard_idx(int board_idx) {
		this.board_idx = board_idx;
	}
	public int getPat_idx() {
		return pat_idx;
	}
	public void setPat_idx(int pat_idx) {
		this.pat_idx = pat_idx;
	}
	public String getBoard_title() {
		return board_title;
	}
	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}
	public String getBoard_content() {
		return board_content;
	}
	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}
	public String getBoard_file() {
		return board_file;
	}
	public void setBoard_file(String board_file) {
		this.board_file = board_file;
	}
	public String getBoard_email() {
		return board_email;
	}
	public void setBoard_email(String board_email) {
		this.board_email = board_email;
	}
	public String getBoard_type() {
		return board_type;
	}
	public void setBoard_type(String board_type) {
		this.board_type = board_type;
	}
	
}
