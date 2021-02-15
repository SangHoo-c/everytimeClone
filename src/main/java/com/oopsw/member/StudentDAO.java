package com.oopsw.member;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
@Repository
public interface StudentDAO {

	public StudentVO login(@Param("studentId")String studentId, @Param("pw")String pw);
}
