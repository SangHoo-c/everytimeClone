package com.oopsw.member;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SubjectService {
	@Autowired
	private SubjectDAO subjectDAO;
	
	public Collection<String> getTotalEvalCheck(String studentId){
		return subjectDAO.getTotEvalCheck(studentId);
	}
	
	public Collection<SubjectVO> getEvalCheck(String studentId){
		return subjectDAO.getEvalCheck(studentId);
	}
	
	public Collection<SubjectVO> getEvalAll() {
		return subjectDAO.getEvalAll();
	}
	
	public Collection<SubjectVO> getEvalSub(String subjectName) {
		return subjectDAO.getEvalSub(subjectName);
	}
	
	public Map<String, Object> getInfo(int subjectNo) {
		SubjectVO title=subjectDAO.getTitle(subjectNo); // ���� �������
		SubjectVO detail=subjectDAO.getDetail(subjectNo); // ����,����,���,������,���ص� �ִ�󵵼�
		Collection<SubjectVO> comment=subjectDAO.getComment(subjectNo); // ���ǿ� ���� ������ ����
		
		Map<String, Object> info = new HashMap<>();
		info.put("title", title);
		info.put("detail", detail);
		info.put("comment", comment);
		
		return info;
	}

	public void updateEval(SubjectVO evalSubject) {
		
		subjectDAO.getUpdateEval(
				evalSubject.getEvalAssignment(),
				evalSubject.getGradeNo(),
				evalSubject.getEvalExam(),
				evalSubject.getEvalAttendance(),
				evalSubject.getEvalTeam(),
				evalSubject.getEvalUnderstanding(),
				evalSubject.getEvalPoint(),
				evalSubject.getEvalText());
		return ;	
		
	}
}
