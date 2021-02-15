package com.oopsw.member;

import java.util.Collection;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
@Repository
public interface SubjectDAO {

	public Collection<SubjectVO> getEvalAll();
	
	public Collection<SubjectVO> getEvalSub(@Param("subjectName")String subjectName);

	public SubjectVO getTitle(@Param("subjectNo")int subjectNo);
	
	public SubjectVO getDetail(@Param("subjectNo")int subjectNo);
	
	public Collection<SubjectVO> getComment(@Param("subjectNo")int subjectNo);
	
	public Collection<SubjectVO> getEvalCheck(@Param("studentId") String studentId);
//	public Collection<SubjectVO> getEvalCheck();
	
	public Collection<String> getTotEvalCheck(@Param("studentId") String studentId);

	public void getUpdateEval(
			@Param("evalAssignment") int evalAssignment, 
			@Param("gradeNo") int gradeNo,
			@Param("evalExam")int evalExam,
			@Param("evalAttendance")int evalAttendance,
			@Param("evalTeam")int evalTeam,
			@Param("evalUnderstanding")int evalUnderstanding,
			@Param("evalPoint")int evalPoint,
			@Param("evalText")String evalText
			);
}
