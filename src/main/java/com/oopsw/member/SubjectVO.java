package com.oopsw.member;

public class SubjectVO {
	private int subjectNo;
	private String subjectName;
	private String professorName;
	private int evalTotal;
	private int evalPoint;
	private String evalText;
	private int evalAssignment;
	private int evalExam;
	private int evalAttendance;
	private int evalTeam;
	private int evalUnderstanding;
	private int registerYear;
	private String registerSemester;
	private int gradeNo;
	

	public int getGradeNo() {
		return gradeNo;
	}
	public void setGradeNo(int gradeNo) {
		this.gradeNo = gradeNo;
	}
	public int getSubjectNo() {
		return subjectNo;
	}
	public void setSubjectNo(int subjectNo) {
		this.subjectNo = subjectNo;
	}
	public String getSubjectName() {
		return subjectName;
	}
	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}
	public String getProfessorName() {
		return professorName;
	}
	public void setProfessorName(String professorName) {
		this.professorName = professorName;
	}
	public int getEvalTotal() {
		return evalTotal;
	}
	public void setEvalTotal(int evalTotal) {
		this.evalTotal = evalTotal;
	}
	public int getEvalPoint() {
		return evalPoint;
	}
	public void setEvalPoint(int evalPoint) {
		this.evalPoint = evalPoint;
	}
	public String getEvalText() {
		return evalText;
	}
	public void setEvalText(String evalText) {
		this.evalText = evalText;
	}
	public int getEvalAssignment() {
		return evalAssignment;
	}
	public void setEvalAssignment(int evalAssignment) {
		this.evalAssignment = evalAssignment;
	}
	public int getEvalExam() {
		return evalExam;
	}
	public void setEvalExam(int evalExam) {
		this.evalExam = evalExam;
	}
	public int getEvalAttendance() {
		return evalAttendance;
	}
	public void setEvalAttendance(int evalAttendance) {
		this.evalAttendance = evalAttendance;
	}
	public int getEvalTeam() {
		return evalTeam;
	}
	public void setEvalTeam(int evalTeam) {
		this.evalTeam = evalTeam;
	}
	public int getEvalUnderstanding() {
		return evalUnderstanding;
	}
	public void setEvalUnderstanding(int evalUnderstanding) {
		this.evalUnderstanding = evalUnderstanding;
	}
	public int getRegisterYear() {
		return registerYear;
	}
	public void setRegisterYear(int registerYear) {
		this.registerYear = registerYear;
	}
	public String getRegisterSemester() {
		return registerSemester;
	}
	public void setRegisterSemester(String registerSemester) {
		this.registerSemester = registerSemester;
	}
	@Override
	public String toString() {
		return "SubjectVO [subjectNo=" + subjectNo + ", subjectName=" + subjectName + ", professorName=" + professorName
				+ ", evalTotal=" + evalTotal + ", evalPoint=" + evalPoint + ", evalText=" + evalText
				+ ", evalAssignment=" + evalAssignment + ", evalExam=" + evalExam + ", evalAttendance=" + evalAttendance
				+ ", evalTeam=" + evalTeam + ", evalUnderstanding=" + evalUnderstanding + ", registerYear="
				+ registerYear + ", registerSemester=" + registerSemester + "]";
	}
	
}
