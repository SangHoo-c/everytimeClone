package com.oopsw.member;

import java.util.Collection;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private StudentService studentService;
	
	@Autowired
	private SubjectService subjectService;
	
	@Autowired
	private ScoreService scoreService;

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String loginUI(){
		return "login";
	}
	
	@RequestMapping(value = "/loginAction", method = RequestMethod.POST)
	public String loginAction(HttpServletRequest request,Model model){
		StudentVO loginOK = studentService.login(request.getParameter("studentId"), request.getParameter("pw"));
		if(loginOK !=null){
			HttpSession session=request.getSession(true);			
			session.setAttribute("loginOK", loginOK);
			Collection<SubjectVO> list=subjectService.getEvalAll();
			request.setAttribute("list", list);
			
			String studentId = (String)loginOK.getStudentId();
			Collection<String> totalEvalCheck = subjectService.getTotalEvalCheck(studentId);
			request.setAttribute("totalEvalCheck", totalEvalCheck);
			
			
			return "subjectList";
		}
		return "redirect:/";
	}
	
	@RequestMapping(value ="/evalUpdate", method = RequestMethod.GET)
	public String getEvalUpdate(HttpServletRequest request){
		
		HttpSession session=request.getSession(false);  
		StudentVO loginOK =(StudentVO)session.getAttribute("loginOK"); 
		String studentId = (String)loginOK.getStudentId();
		SubjectVO evalSubject = new SubjectVO();
		
		evalSubject.setGradeNo(Integer.parseInt(request.getParameter("gradeNo")));
		evalSubject.setEvalAssignment(Integer.parseInt(request.getParameter("evalAssignment")));
		evalSubject.setEvalAttendance(Integer.parseInt(request.getParameter("evalAttendance")));
		evalSubject.setEvalTeam(Integer.parseInt(request.getParameter("evalTeam")));
		evalSubject.setEvalExam(Integer.parseInt(request.getParameter("evalExam")));
		evalSubject.setEvalUnderstanding(Integer.parseInt(request.getParameter("evalUnderstanding")));
		evalSubject.setEvalPoint(Integer.parseInt(request.getParameter("evalPoint")));
		evalSubject.setEvalText(request.getParameter("evalText"));
		

		System.out.println(evalSubject);
		
		

		
		subjectService.updateEval(evalSubject);
		
		return "redirect:/evaluation";
	}
	
	@RequestMapping(value= "/lecture", method = RequestMethod.GET)
	public String getEvalAll(HttpServletRequest request) {
		Collection<SubjectVO> list=subjectService.getEvalAll();
		HttpSession session=request.getSession(false);  
		StudentVO loginOK =(StudentVO)session.getAttribute("loginOK"); 
		String studentId = (String)loginOK.getStudentId();
		
		Collection<String> totalEvalCheck = subjectService.getTotalEvalCheck(studentId);
		request.setAttribute("totalEvalCheck", totalEvalCheck);
		request.setAttribute("list", list);
		return "subjectList";
	}
	
	@RequestMapping(value = "/evaluation", method = RequestMethod.GET)
	public String showSubEval(HttpServletRequest request) {
		HttpSession session=request.getSession(false);  
		StudentVO loginOK =(StudentVO)session.getAttribute("loginOK"); 
		String studentId = (String)loginOK.getStudentId();
		
		Collection<SubjectVO> evalList = subjectService.getEvalCheck(studentId);
		Collection<String> totalEvalCheck = subjectService.getTotalEvalCheck(studentId);
		
		request.setAttribute("noEvalList", evalList);
		request.setAttribute("totalEvalCheck", totalEvalCheck);
		return "evaluation";
	}
	
//	@RequestMapping(value = "evaluation/update", method = RequestMethod.GET)
//	public String updateEval(@ModelAttribute )
	
	
	@RequestMapping(value = "/totalEvaluation", method = RequestMethod.GET)
	public String showTotSubEval(HttpServletRequest request) {
		HttpSession session=request.getSession(false);  
		StudentVO loginOK =(StudentVO)session.getAttribute("loginOK"); 
		String studentId = (String)loginOK.getStudentId();
		
		
		// request.setAttribute("", arg1);
		return "semesterCheck";
	}
	
	@RequestMapping(value= "/search", method = RequestMethod.GET)
	public String search(HttpServletRequest request,Model model) {
		Collection<SubjectVO> searchList=subjectService.getEvalSub(request.getParameter("subjectName"));
		if(searchList !=null){
			request.setAttribute("searchList", searchList);
			return "subjectSearch";
		}	
		return "redirect:/getEvalAll";
	}
	
	@RequestMapping(value= "/view", method = RequestMethod.GET)
	public String view(HttpServletRequest request) {
		Map<String, Object> info=subjectService.getInfo(Integer.parseInt(request.getParameter("subjectNo")));
		request.setAttribute("info", info);
		
		HttpSession session=request.getSession(false);  
		StudentVO loginOK =(StudentVO)session.getAttribute("loginOK"); 
		String studentId = (String)loginOK.getStudentId();
		Collection<String> totalEvalCheck = subjectService.getTotalEvalCheck(studentId);
		request.setAttribute("totalEvalCheck", totalEvalCheck);
		
		return "subjectInfo";
	}
	
	@RequestMapping(value= "/grade", method = RequestMethod.GET)
	public String grade(HttpServletRequest request, Model model) {
		Map<String, Object> gradeInfo=scoreService.getScore(request.getParameter("studentId"));
		Map<String, Object> totalInfo = scoreService.getScoreAll(request.getParameter("studentId"));
		request.setAttribute("gradeInfo", gradeInfo);
		request.setAttribute("totalInfo", totalInfo);
		return "semesterCheck";
	}
	
	@RequestMapping(value= "/check", method = RequestMethod.GET)
	public String check(HttpServletRequest request, Model model) {
		Map<String, Object> gradeInfo=scoreService.getScoreSemester(request.getParameter("studentId"),Integer.parseInt(request.getParameter("registerYear")),request.getParameter("registerSemester"));
		Map<String, Object> totalInfo = scoreService.getScoreAll(request.getParameter("studentId"));
		request.setAttribute("gradeInfo", gradeInfo);
		request.setAttribute("totalInfo", totalInfo);
		return "semesterCheck";

	}
}
