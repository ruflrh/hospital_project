package vo;

/*
--select
SELECT 
	pat.pat_idx AS pat_idx,
    dept.dept_name AS dept_name,
    dept.dept_payment AS dept_payment,
    pro.pro_name AS pro_name,
    pro.pro_file AS pro_file,
    res.res_idx AS res_idx,
    TO_CHAR(res.res_time, 'YYYY-MM-DD HH24:MI') AS res_time
FROM 
    reservation res
JOIN 
    professor pro ON res.pro_idx = pro.pro_idx
JOIN 
    department dept ON pro.dept_idx = dept.dept_idx
JOIN 
    patient pat ON res.pat_idx = pat.pat_idx
WHERE 
    pat.pat_idx = 16
    AND res.res_time > TO_DATE('2024-01-01', 'YYYY-MM-DD')
    AND res.res_time < TO_DATE('2024-02-26', 'YYYY-MM-DD');
*/

//진료비내역조회VO
public class MypagePayVO {
	private String dept_name, pro_name, pro_file, res_time;
	private int pat_idx, dept_payment;
	
	public String getDept_name() {
		return dept_name;
	}
	public void setDept_name(String dept_name) {
		this.dept_name = dept_name;
	}
	public String getPro_name() {
		return pro_name;
	}
	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}
	public String getPro_file() {
		return pro_file;
	}
	public void setPro_file(String pro_file) {
		this.pro_file = pro_file;
	}
	public String getRes_time() {
		return res_time;
	}
	public void setRes_time(String res_time) {
		this.res_time = res_time;
	}
	public int getPat_idx() {
		return pat_idx;
	}
	public void setPat_idx(int pat_idx) {
		this.pat_idx = pat_idx;
	}
	public int getDept_payment() {
		return dept_payment;
	}
	public void setDept_payment(int dept_payment) {
		this.dept_payment = dept_payment;
	}
}
