package com.sorang.domain;

import java.io.Serializable;

public class Student implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private int birthday;
	private String name;
	private String mobile_number_student;
	private String mobile_number_mother;
	private String mobile_number_father;
	private String phone_number_home;
	private String address;
	
	public Student() {
		this.birthday = 0;
		this.name = "";
		this.mobile_number_student = "";
		this.mobile_number_mother = "";
		this.mobile_number_father = "";
		this.phone_number_home = "";
		this.address = "";
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getBirthday() {
		return birthday;
	}
	public void setBirthday(int birthday) {
		this.birthday = birthday;
	}
	public String getMobile_number_student() {
		return mobile_number_student;
	}
	public void setMobile_number_student(String mobile_number_student) {
		this.mobile_number_student = mobile_number_student;
	}
	public String getMobile_number_mother() {
		return mobile_number_mother;
	}
	public void setMobile_number_mother(String mobile_number_mother) {
		this.mobile_number_mother = mobile_number_mother;
	}
	public String getMobile_number_father() {
		return mobile_number_father;
	}
	public void setMobile_number_father(String mobile_number_father) {
		this.mobile_number_father = mobile_number_father;
	}
	public String getPhone_number_home() {
		return phone_number_home;
	}
	public void setPhone_number_home(String phone_number_home) {
		this.phone_number_home = phone_number_home;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	@Override
	public String toString() {
		return "Student " + getName().trim() + " , " + getBirthday() + " , " + getMobile_number_student().trim() + " , " + 
				getMobile_number_mother().trim() + " , " + getMobile_number_father().trim() + " , "  + getAddress().trim();
	}
}
