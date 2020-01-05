package com.unsi.vo;

public class NoticeVO {
	private Integer notice_id;
	private Integer user_id;
	private String notice_title;
	private String notice_content;
	private String notice_time;
	private Integer notice_display;
	
	
	public Integer getNotice_id() {
		return notice_id;
	}
	public void setNotice_id(Integer notice_id) {
		this.notice_id = notice_id;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public String getNotice_title() {
		return notice_title;
	}
	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}
	public String getNotice_content() {
		return notice_content;
	}
	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}
	public String getNotice_time() {
		return notice_time;
	}
	public void setNotice_time(String notice_time) {
		this.notice_time = notice_time;
	}
	public Integer getNotice_display() {
		return notice_display;
	}
	public void setNotice_display(Integer notice_display) {
		this.notice_display = notice_display;
	}
	public NoticeVO(Integer notice_id, Integer user_id, String notice_title,
			String notice_content, String notice_time, Integer notice_display) {
		super();
		this.notice_id = notice_id;
		this.user_id = user_id;
		this.notice_title = notice_title;
		this.notice_content = notice_content;
		this.notice_time = notice_time;
		this.notice_display = notice_display;
	}
	public NoticeVO(Integer user_id, String notice_title,
			String notice_content, String notice_time) {
		super();
		this.user_id = user_id;
		this.notice_title = notice_title;
		this.notice_content = notice_content;
		this.notice_time = notice_time;
	}
	
	public NoticeVO(Integer notice_id, Integer user_id, String notice_title,
			String notice_content, String notice_time) {
		super();
		this.notice_id = notice_id;
		this.user_id = user_id;
		this.notice_title = notice_title;
		this.notice_content = notice_content;
		this.notice_time = notice_time;
	}
	public NoticeVO(Integer notice_id) {
		super();
		this.notice_id = notice_id;
	}
	
	public NoticeVO() {
		super();
	}
	@Override
	public String toString() {
		return "NoticeVO [notice_id=" + notice_id + ", user_id=" + user_id
				+ ", notice_title=" + notice_title + ", notice_content="
				+ notice_content + ", notice_time=" + notice_time
				+ ", notice_display=" + notice_display + "]";
	}
	
	
	
}
