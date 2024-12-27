package vo;

/*
SELECT 
dept.dept_name,
pro.pro_name,
pro.pro_file,
TO_CHAR(res.res_time, 'YYYY-MM-DD HH24:MI'),
dept.dept_loc
FROM 
    reservation res
JOIN 
    professor pro ON res.pro_idx = pro.pro_idx
JOIN 
    department dept ON pro.dept_idx = dept.dept_idx
JOIN 
    patient pat ON res.pat_idx = pat.pat_idx
WHERE 
    pat.pat_idx = #{pat_idx};
*/

public class MypageResListVO {
	private String dept_name, pro_name, pro_file, res_time, dept_loc;

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

	public String getDept_loc() {
		return dept_loc;
	}

	public void setDept_loc(String dept_loc) {
		this.dept_loc = dept_loc;
	}
}
