package com.oopsw.member;

public class StudentVO {
	private String studentId;
	private String pw;
	private String name;
	public StudentVO(){}
	public StudentVO(String studentId, String pw, String name) {
		this.studentId = studentId;
		this.pw = pw;
		this.name = name;
	}
	public String getStudentId() {
		return studentId;
	}
	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return name + studentId;
	}
}
