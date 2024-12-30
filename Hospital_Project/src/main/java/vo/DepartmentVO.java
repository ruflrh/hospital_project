package vo;

/*
drop table department;

--진료과테이블

CREATE TABLE department (
	dept_idx NUMBER(10) PRIMARY KEY NOT NULL,
	dept_category VARCHAR2(50) NOT NULL,
	dept_name VARCHAR2(100) NOT NULL,
	dept_payment NUMBER(10)	NULL,
	dept_loc VARCHAR2(20) NULL
	);


---샘플데이터---

-- 내과 관련 데이터 --내과는 10번대
INSERT INTO department 
(dept_idx, dept_category, dept_name, dept_payment, dept_loc)
VALUES (11, '내과', '소화기내과', NULL, '3층');

INSERT INTO department 
(dept_idx, dept_category, dept_name, dept_payment, dept_loc)
VALUES (12, '내과', '호흡기내과', NULL, '3층');

INSERT INTO department 
(dept_idx, dept_category, dept_name, dept_payment, dept_loc)
VALUES (13, '내과', '심장내과', NULL, '3층');

INSERT INTO department 
(dept_idx, dept_category, dept_name, dept_payment, dept_loc)
VALUES (14, '내과', '내분비내과', NULL, '3층');

INSERT INTO department 
(dept_idx, dept_category, dept_name, dept_payment, dept_loc)
VALUES (15, '내과', '신장내과', NULL, '3층');

INSERT INTO department 
(dept_idx, dept_category, dept_name, dept_payment, dept_loc)
VALUES (16, '내과', '류마티스내과', NULL, '3층');

INSERT INTO department 
(dept_idx, dept_category, dept_name, dept_payment, dept_loc)
VALUES (17, '내과', '감염내과', NULL, '3층');

commit;

-- 외과 관련 데이터
INSERT INTO department -- 외과는 20번대
(dept_idx, dept_category, dept_name, dept_payment, dept_loc)
VALUES (21, '외과', '흉부외과', NULL, '2층');

INSERT INTO department 
(dept_idx, dept_category, dept_name, dept_payment, dept_loc)
VALUES (22, '외과', '정형외과', NULL, '2층');

INSERT INTO department 
(dept_idx, dept_category, dept_name, dept_payment, dept_loc)
VALUES (23, '외과', '신경외과', NULL, '2층');

INSERT INTO department 
(dept_idx, dept_category, dept_name, dept_payment, dept_loc)
VALUES (24, '외과', '성형외과', NULL, '2층');

INSERT INTO department 
(dept_idx, dept_category, dept_name, dept_payment, dept_loc)
VALUES (25, '외과', '산부인과', NULL, '2층');

INSERT INTO department 
(dept_idx, dept_category, dept_name, dept_payment, dept_loc)
VALUES (26, '외과', '비뇨기의학과', NULL, '2층');

INSERT INTO department 
(dept_idx, dept_category, dept_name, dept_payment, dept_loc)
VALUES (27, '외과', '소아외과', NULL, '2층');

commit;

-- 정신건강의학과 관련 데이터 --정신건강의학과는 30번대
INSERT INTO department 
(dept_idx, dept_category, dept_name, dept_payment, dept_loc)
VALUES (31, '정신건강의학과', '우울증, 불안장애, 정신분열', NULL, '4층');

INSERT INTO department 
(dept_idx, dept_category, dept_name, dept_payment, dept_loc)
VALUES (32, '정신건강의학과', '중독 치료(알코올, 약물)', NULL, '4층');

INSERT INTO department 
(dept_idx, dept_category, dept_name, dept_payment, dept_loc)
VALUES (33, '정신건강의학과', '소아청소년 정신건강', NULL, '4층');

commit;

*/

public class DepartmentVO {
	private int dept_idx;
	private String dept_name, dept_payment, dept_loc;
	
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
	public String getDept_loc() {
		return dept_loc;
	}
	public void setDept_loc(String dept_loc) {
		this.dept_loc = dept_loc;
	}
}
