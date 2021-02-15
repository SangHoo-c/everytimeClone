package com.oopsw.member;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ScoreService {
	@Autowired
	private ScoreDAO scoreDAO;
	
	public Map<String, Object> getScore(String studentId) {
		Map<String, Object> gradeInfo = new HashMap<>();
		Collection<ScoreVO> li = scoreDAO.getScore(studentId);
		List<ScoreVO> list = (List<ScoreVO>) scoreDAO.getScore(studentId);
		int totalCredit=0;
		double totalScore=0.0, totalGrade=0.0;
		for(int i=0; i<list.size(); i++) {
			totalCredit += list.get(i).getCredits();
			totalScore += (list.get(i).getCredits())*(list.get(i).getScore());
			totalGrade += (list.get(i).getCredits())*(list.get(i).getGrade());
		}
		gradeInfo.put("totalGrade", Math.round(totalGrade/totalCredit*100)/100.0);
		gradeInfo.put("totalScore", Math.round(totalScore/totalCredit*10)/10.0);
		gradeInfo.put("totalCredit", totalCredit);
		gradeInfo.put("li", li);
		return gradeInfo;

	}
	public Map<String, Object> getScoreAll(String studentId){
		Map<String, Object> totalInfo = new HashMap<>();
		
		List<ScoreVO> list = (List<ScoreVO>) scoreDAO.getScoreAll(studentId);
		int totalCredit=0;
		double totalScore=0.0, totalGrade=0.0;
		for(int i=0; i<list.size(); i++) {
			totalCredit += list.get(i).getCredits();
			totalScore += (list.get(i).getCredits())*(list.get(i).getScore());
			totalGrade += (list.get(i).getCredits())*(list.get(i).getGrade());
		}
		totalInfo.put("totalGrade", Math.round(totalGrade/totalCredit*100)/100.0);
		totalInfo.put("totalScore", Math.round(totalScore/totalCredit*10)/10.0);
		totalInfo.put("totalCredit", totalCredit);
		return totalInfo;
	}
	public Map<String, Object> getScoreSemester(String studentId, int registerYear, String registerSemester) {
		Map<String, Object> gradeInfo = new HashMap<>();
		Collection<ScoreVO> li = scoreDAO.getScoreSemester(studentId, registerYear, registerSemester);
		List<ScoreVO> list = (List<ScoreVO>) scoreDAO.getScoreSemester(studentId, registerYear, registerSemester);
		int totalCredit=0;
		double totalScore=0.0, totalGrade=0.0;
		for(int i=0; i<list.size(); i++) {
			totalCredit += list.get(i).getCredits();
			totalScore += (list.get(i).getCredits())*(list.get(i).getScore());
			totalGrade += (list.get(i).getCredits())*(list.get(i).getGrade());
		}
		gradeInfo.put("totalGrade", Math.round(totalGrade/totalCredit*100)/100.0);
		gradeInfo.put("totalScore", Math.round(totalScore/totalCredit*10)/10.0);
		gradeInfo.put("totalCredit", totalCredit);
		gradeInfo.put("li", li);
		return gradeInfo;
	}
}
