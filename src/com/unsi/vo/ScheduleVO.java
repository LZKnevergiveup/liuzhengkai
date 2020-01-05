package com.unsi.vo;

public class ScheduleVO {
	private Integer schedule_id;
	private Integer user_id;
	private String schedule_content;
	private String schedule_date;
	private String schedule_display;
	public Integer getSchedule_id() {
		return schedule_id;
	}
	public void setSchedule_id(Integer schedule_id) {
		this.schedule_id = schedule_id;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public String getSchedule_content() {
		return schedule_content;
	}
	public void setSchedule_content(String schedule_content) {
		this.schedule_content = schedule_content;
	}
	public String getSchedule_date() {
		return schedule_date;
	}
	public void setSchedule_date(String schedule_date) {
		this.schedule_date = schedule_date;
	}
	public String getSchedule_display() {
		return schedule_display;
	}
	public void setSchedule_display(String schedule_display) {
		this.schedule_display = schedule_display;
	}
	public ScheduleVO(Integer schedule_id, Integer user_id,
			String schedule_content, String schedule_date,
			String schedule_display) {
		super();
		this.schedule_id = schedule_id;
		this.user_id = user_id;
		this.schedule_content = schedule_content;
		this.schedule_date = schedule_date;
		this.schedule_display = schedule_display;
	}
	public ScheduleVO(Integer schedule_id, Integer user_id,
			String schedule_content, String schedule_date) {
		super();
		this.schedule_id = schedule_id;
		this.user_id = user_id;
		this.schedule_content = schedule_content;
		this.schedule_date = schedule_date;
	}
	public ScheduleVO(Integer user_id, String schedule_content,
			String schedule_date) {
		super();
		this.user_id = user_id;
		this.schedule_content = schedule_content;
		this.schedule_date = schedule_date;
	}
	public ScheduleVO(Integer schedule_id) {
		super();
		this.schedule_id = schedule_id;
	}
	public ScheduleVO() {
		super();
	}
	@Override
	public String toString() {
		return "ScheduleVO [schedule_id=" + schedule_id + ", user_id="
				+ user_id + ", schedule_content=" + schedule_content
				+ ", schedule_date=" + schedule_date + ", schedule_display="
				+ schedule_display + "]";
	}
	
	
	
}
