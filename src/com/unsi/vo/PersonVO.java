package com.unsi.vo;

public class PersonVO {
	private Integer person_id;
	private String person_name ;
	private String person_sex;
	private String person_phone;
	private String person_mail;
	private String person_qq;
	private String person_work;
	private String person_address;
	private String person_Postal;
	private Integer person_display;
	public Integer getPerson_id() {
		return person_id;
	}
	public void setPerson_id(Integer person_id) {
		this.person_id = person_id;
	}
	public String getPerson_name() {
		return person_name;
	}
	public void setPerson_name(String person_name) {
		this.person_name = person_name;
	}
	public String getPerson_sex() {
		return person_sex;
	}
	public void setPerson_sex(String person_sex) {
		this.person_sex = person_sex;
	}
	public String getPerson_phone() {
		return person_phone;
	}
	public void setPerson_phone(String person_phone) {
		this.person_phone = person_phone;
	}
	public String getPerson_mail() {
		return person_mail;
	}
	public void setPerson_mail(String person_mail) {
		this.person_mail = person_mail;
	}
	public String getPerson_qq() {
		return person_qq;
	}
	public void setPerson_qq(String person_qq) {
		this.person_qq = person_qq;
	}
	public String getPerson_work() {
		return person_work;
	}
	public void setPerson_work(String person_work) {
		this.person_work = person_work;
	}
	public String getPerson_address() {
		return person_address;
	}
	public void setPerson_address(String person_address) {
		this.person_address = person_address;
	}
	public String getPerson_Postal() {
		return person_Postal;
	}
	public void setPerson_Postal(String person_Postal) {
		this.person_Postal = person_Postal;
	}
	public Integer getPerson_display() {
		return person_display;
	}
	public void setPerson_display(Integer person_display) {
		this.person_display = person_display;
	}
	public PersonVO(Integer person_id, String person_name, String person_sex,
			String person_phone, String person_mail, String person_qq,
			String person_work, String person_address, String person_Postal,
			Integer person_display) {
		super();
		this.person_id = person_id;
		this.person_name = person_name;
		this.person_sex = person_sex;
		this.person_phone = person_phone;
		this.person_mail = person_mail;
		this.person_qq = person_qq;
		this.person_work = person_work;
		this.person_address = person_address;
		this.person_Postal = person_Postal;
		this.person_display = person_display;
	}
	
	public PersonVO(String person_name, String person_sex, String person_phone,
			String person_mail, String person_qq, String person_work,
			String person_address, String person_Postal) {
		super();
		this.person_name = person_name;
		this.person_sex = person_sex;
		this.person_phone = person_phone;
		this.person_mail = person_mail;
		this.person_qq = person_qq;
		this.person_work = person_work;
		this.person_address = person_address;
		this.person_Postal = person_Postal;
	}
	
	
	public PersonVO(Integer person_id, String person_name, String person_sex,
			String person_phone, String person_mail, String person_qq,
			String person_work, String person_address, String person_Postal) {
		super();
		this.person_id = person_id;
		this.person_name = person_name;
		this.person_sex = person_sex;
		this.person_phone = person_phone;
		this.person_mail = person_mail;
		this.person_qq = person_qq;
		this.person_work = person_work;
		this.person_address = person_address;
		this.person_Postal = person_Postal;
	}
	public PersonVO(Integer person_id) {
		super();
		this.person_id = person_id;
	}
	public PersonVO() {
		super();
	}
	@Override
	public String toString() {
		return "PersonVO [person_id=" + person_id + ", person_name="
				+ person_name + ", person_sex=" + person_sex
				+ ", person_phone=" + person_phone + ", person_mail="
				+ person_mail + ", person_qq=" + person_qq + ", person_work="
				+ person_work + ", person_address=" + person_address
				+ ", person_Postal=" + person_Postal + ", person_display="
				+ person_display + "]";
	}
	
	
}
