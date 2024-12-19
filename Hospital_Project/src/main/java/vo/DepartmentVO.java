package vo;

/*
--진료과테이블
CREATE TABLE department (
	dept_idx 		NUMBER(10) 	NOT NULL,
	dept_name 	VARCHAR2(100) 	NULL,
	dept_payment 	NUMBER(10) 	NULL
);
 
--시퀀스
create sequence dept_idx_seq;
*/

public class DepartmentVO {
	private int dept_idx;
	private String dept_name, dept_payment;
	
	public int getDept_idx() {
		return dept_idx;
	}
	public void setDept_idx(int dept_idx) {
		this.dept_idx = dept_idx;
	}
	public String getDept_name() {
		return dept_name;
	}
	public void setDept_name(String dept_name) {
		this.dept_name = dept_name;
	}
	public String getDept_payment() {
		return dept_payment;
	}
	public void setDept_payment(String dept_payment) {
		this.dept_payment = dept_payment;
	}
}
