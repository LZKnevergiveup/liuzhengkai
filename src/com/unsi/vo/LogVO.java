package com.unsi.vo;

public class LogVO {
	private Integer log_id;
	private Integer user_id;
	private String log_date;
	private String log_title;
	private String log_content;
	private String log_time;
	private String log_display;
	
	
	public Integer getLog_id() {
		return log_id;
	}
	public void setLog_id(Integer log_id) {
		this.log_id = log_id;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public String getLog_date() {
		return log_date;
	}
	public void setLog_date(String log_date) {
		this.log_date = log_date;
	}
	public String getLog_title() {
		return log_title;
	}
	public void setLog_title(String log_title) {
		this.log_title = log_title;
	}
	public String getLog_content() {
		return log_content;
	}
	public void setLog_content(String log_content) {
		this.log_content = log_content;
	}
	public String getLog_time() {
		return log_time;
	}
	public void setLog_time(String log_time) {
		this.log_time = log_time;
	}
	public String getLog_display() {
		return log_display;
	}
	public void setLog_display(String log_display) {
		this.log_display = log_display;
	}
	public LogVO(Integer log_id, Integer user_id, String log_date,
			String log_title, String log_content, String log_time,
			String log_display) {
		super();
		this.log_id = log_id;
		this.user_id = user_id;
		this.log_date = log_date;
		this.log_title = log_title;
		this.log_content = log_content;
		this.log_time = log_time;
		this.log_display = log_display;
	}
	public LogVO(Integer user_id, String log_date, String log_title,
			String log_content, String log_time) {
		super();
		this.user_id = user_id;
		this.log_date = log_date;
		this.log_title = log_title;
		this.log_content = log_content;
		this.log_time = log_time;
	}
	
	
	public LogVO(Integer log_id, Integer user_id, String log_date,
			String log_title, String log_content, String log_time) {
		super();
		this.log_id = log_id;
		this.user_id = user_id;
		this.log_date = log_date;
		this.log_title = log_title;
		this.log_content = log_content;
		this.log_time = log_time;
	}
	public LogVO(Integer log_id) {
		super();
		this.log_id = log_id;
	}
	public LogVO() {
		super();
	}
	@Override
	public String toString() {
		return "LogVO [log_id=" + log_id + ", user_id=" + user_id
				+ ", log_date=" + log_date + ", log_title=" + log_title
				+ ", log_content=" + log_content + ", log_time=" + log_time
				+ ", log_display=" + log_display + "]";
	}
	
	
}
