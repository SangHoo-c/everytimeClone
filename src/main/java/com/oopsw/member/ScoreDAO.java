package com.oopsw.member;

import java.util.Collection;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ScoreDAO {
	
	public Collection<ScoreVO> getScore(@Param("studentId")String studentId);
	
	public Collection<ScoreVO> getScoreAll(@Param("studentId")String studentId);
	
	public Collection<ScoreVO> getScoreSemester(@Param("studentId")String studentId, @Param("registerYear")int registerYear, @Param("registerSemester")String registerSemester);

}
