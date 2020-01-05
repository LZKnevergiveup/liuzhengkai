package com.unsi.vo;

public class NewsVO {
	private Integer news_id;
	private Integer user_id;
	private Integer person_id;
	private String news_content;
	private String news_time;
	private Integer news_read;
	public Integer getNews_id() {
		return news_id;
	}
	public void setNews_id(Integer news_id) {
		this.news_id = news_id;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public Integer getPerson_id() {
		return person_id;
	}
	public void setPerson_id(Integer person_id) {
		this.person_id = person_id;
	}
	public String getNews_content() {
		return news_content;
	}
	public void setNews_content(String news_content) {
		this.news_content = news_content;
	}
	public String getNews_time() {
		return news_time;
	}
	public void setNews_time(String news_time) {
		this.news_time = news_time;
	}
	public Integer getNews_read() {
		return news_read;
	}
	public void setNews_read(Integer news_read) {
		this.news_read = news_read;
	}
	public NewsVO(Integer user_id, Integer person_id, String news_content,
			String news_time) {
		super();
		this.user_id = user_id;
		this.person_id = person_id;
		this.news_content = news_content;
		this.news_time = news_time;
	}
	public NewsVO(Integer news_id) {
		super();
		this.news_id = news_id;
	}
	public NewsVO(Integer news_id, Integer user_id, Integer person_id,
			String news_content, String news_time) {
		super();
		this.news_id = news_id;
		this.user_id = user_id;
		this.person_id = person_id;
		this.news_content = news_content;
		this.news_time = news_time;
	}
	public NewsVO() {
		super();
	}
	@Override
	public String toString() {
		return "NewsVO [news_id=" + news_id + ", user_id=" + user_id
				+ ", person_id=" + person_id + ", news_content=" + news_content
				+ ", news_time=" + news_time + ", news_read=" + news_read + "]";
	}
	
	
}
