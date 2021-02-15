package com.oopsw.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StudentService {
	@Autowired
	private StudentDAO studentDAO;

	public StudentVO login(String studentId, String pw) {
		return studentDAO.login(studentId, pw);
	}
}
