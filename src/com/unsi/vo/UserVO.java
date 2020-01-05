package com.unsi.vo;

public class UserVO {
	private Integer user_id;
	private String user_name;
	private String user_password;
	private Integer user_flag;
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
	public Integer getUser_flag() {
		return user_flag;
	}
	public void setUser_flag(Integer user_flag) {
		this.user_flag = user_flag;
	}
	public UserVO(Integer user_id, String user_name, String user_password,
			Integer user_flag) {
		super();
		this.user_id = user_id;
		this.user_name = user_name;
		this.user_password = user_password;
		this.user_flag = user_flag;
	}
	public UserVO(Integer user_id, String user_name, String user_password) {
		super();
		this.user_id = user_id;
		this.user_name = user_name;
		this.user_password = user_password;
	}
	public UserVO(String user_name, String user_password) {
		super();
		this.user_name = user_name;
		this.user_password = user_password;
	}
	
	public UserVO(Integer user_id, String user_password) {
		super();
		this.user_id = user_id;
		this.user_password = user_password;
	}
	public UserVO() {
		super();
	}
	@Override
	public String toString() {
		return "UserVO [user_id=" + user_id + ", user_name=" + user_name
				+ ", user_password=" + user_password + ", user_flag="
				+ user_flag + "]";
	}
	
	
	
	
}
