package vo;

/*
--교수일정테이블
CREATE TABLE schedule (
	pro_idx 		NUMBER(3) 	NOT NULL,
	week	 	VARCHAR(255) 	NULL,
	dayandnight 	VARCHAR(255) 	NULL
);
*/

public class ScheduleVO {
	private int pro_idx;
	private String week, dayandnight;
	
	public int getPro_idx() {
		return pro_idx;
	}
	public void setPro_idx(int pro_idx) {
		this.pro_idx = pro_idx;
	}
	public String getWeek() {
		return week;
	}
	public void setWeek(String week) {
		this.week = week;
	}
	public String getDayandnight() {
		return dayandnight;
	}
	public void setDayandnight(String dayandnight) {
		this.dayandnight = dayandnight;
	}
}
