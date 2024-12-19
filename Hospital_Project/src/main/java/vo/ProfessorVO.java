package vo;

/*
--교수테이블
CREATE TABLE professer (
		pro_idx	 	NUMBER(3)	 NOT NULL,
		dept_id	 	NUMBER(10)	 NULL,
		pro_name 	VARCHAR2(30)	 NULL,
		pro_field	 	CLOB	 	NULL,
		pro_file 		VARCHAR2(100) 	NULL
);

--시퀀스
create sequence pro_idx_seq;
*/

public class ProfessorVO {
	public int pro_idx, dept_id;
	public String pro_name, pro_field, pro_file;
	
	public int getPro_idx() {
		return pro_idx;
	}
	public void setPro_idx(int pro_idx) {
		this.pro_idx = pro_idx;
	}
	public int getDept_id() {
		return dept_id;
	}
	public void setDept_id(int dept_id) {
		this.dept_id = dept_id;
	}
	public String getPro_name() {
		return pro_name;
	}
	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}
	public String getPro_field() {
		return pro_field;
	}
	public void setPro_field(String pro_field) {
		this.pro_field = pro_field;
	}
	public String getPro_file() {
		return pro_file;
	}
	public void setPro_file(String pro_file) {
		this.pro_file = pro_file;
	}
}
