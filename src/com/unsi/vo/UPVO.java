package com.unsi.vo;

public class UPVO {
	private Integer UP_id;
	private Integer user_id;
	private Integer person_id;
	private Integer UP_display;
	public Integer getUP_id() {
		return UP_id;
	}
	public void setUP_id(Integer uP_id) {
		UP_id = uP_id;
	}
	public Integer getPerson_id() {
		return person_id;
	}
	public void setPerson_id(Integer person_id) {
		this.person_id = person_id;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public Integer getUP_display() {
		return UP_display;
	}
	public void setUP_display(Integer uP_display) {
		UP_display = uP_display;
	}
	public UPVO(Integer user_id, Integer person_id) {
		super();
		this.user_id = user_id;
		this.person_id = person_id;
	}
	public UPVO(Integer uP_id) {
		super();
		UP_id = uP_id;
	}
	public UPVO() {
		super();
	}
	@Override
	public String toString() {
		return "UPVO [UP_id=" + UP_id + ", person_id=" + person_id
				+ ", user_id=" + user_id + ", UP_display=" + UP_display + "]";
	}
	
	
}
