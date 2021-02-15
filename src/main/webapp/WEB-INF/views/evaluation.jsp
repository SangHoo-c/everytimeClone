<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
        crossorigin="anonymous"
    />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/popupstyle.css" />" rel="stylesheet">
    
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>강의평가</title>
        <c:forEach var="totalEvalCheck" items="${totalEvalCheck}">
    		<a hidden class="check-eval-done" data-value = ${totalEvalCheck}></a>         		
    	</c:forEach>
    	<input type="hidden" id="noEvalList" value='${noEvalList}' />
    	<input type="hidden" id="studentId" value='${loginOK.studentId}' />
    	
    </head>
    <body>
    	<div class="main-nav">
	        <nav class="nav">
	            <a class="nav-link active" aria-current="page" href="#"><h2>강의평가플랫폼</h2></a>
	            <a class="nav-link score-nav" href="evaluation">성적정보</a>
	            <div class="balloon">아직 강의평가 하지 <br>못한 과목이 있어요!</div>
	            <a class="nav-link evaluate-nav" href="lecture">강의평가</a>
	            <a class="nav-link logout-nav" href="logoutAction">로그아웃</a>
	        </nav>
	        
	        <div class="nav-name">
	            <h6 class="user-name">${loginOK.name}(${loginOK.studentId})</h6>
	            <h6>님, 환영합니다.</h6>
	        </div>
     	</div>
        <br>
        <div class="wrapper w-75">
            <div class="myLectureInfo">
                <h3>2020 - 2 학기 수강한 내역</h3>
                강의 평가를 모두 완료해야 성적 확인이 가능합니다.
            </div>
            <hr />
            <div class="myLecture">
            	<c:forEach var="evalSub" items="${noEvalList}">
            		<div class="lecture">
                    	<span class="subjectName">${evalSub.subjectName} </span>
                    	<span class="sub-professor">${evalSub.professorName}</span>
                    	<a class="button evaluate evaluate-button" data-value = ${evalSub.evalPoint} data-id=${evalSub.gradeNo} data-sname=${evalSub.subjectName} data-pname=${evalSub.professorName}  href="#">평가하기</a>
                   		<hr />
                	</div>
            	</c:forEach>
            </div>
            <div class="lecture">
                <!-- <a class="button check-button" href="grade?studentId=${loginOK.studentId }" >성적확인</a> -->
                <a class="button check-button" href="#" >성적확인</a>
            </div>
        </div>
		
        <!-- The Modal -->
        <div id="myModal" class="modal">
            <!-- Modal content -->
            <div class="modal-content">
                <span class="close">&times;</span>
                
                
                <div class="wrap">
                    <h2 class="register-year">2020</h2>
                    <h2>-</h2>
                    <h2 class="register-semester">2</h2>
                    <h2>학기 [</h2>
                    <h2 class="register-subject">과목명</h2>
                    <h2>:</h2>
                    <h2 class="register-professor">교수명</h2>
                    <h2>] 강의평가</h2>

                    <hr />

                    <dl>
                        <dt>과제</dt>
                        <dd>
                            <a data-name="assessment_homework" class = "eval_hw" data-value="2">많음</a>
                            <a data-name="assessment_homework" class="eval_hw active" data-value="1">보통</a>
                            <a data-name="assessment_homework" class = "eval_hw" data-value="0">없음</a>
                        </dd>

                        <dt>시험</dt>
                        <dd>
                            <a data-name="assessment_test" class="eval_test" data-value="3">세번이상</a>
                            <a data-name="assessment_test" class="eval_test active" data-value="2">두번</a>
                            <a data-name="assessment_test" class="eval_test" data-value="1">한번</a>
                            <a data-name="assessment_test" class="eval_test" data-value="0">없음</a>
                        </dd>

                        <dt>출결</dt>
                        <dd>
                            <a data-name="assessment_attendance" class="eval_attendance" data-value="3">전자출결</a>
                            <a data-name="assessment_attendance" class="eval_attendance active" data-value="2">직접호명</a>
                            <a data-name="assessment_attendance" class="eval_attendance" data-value="1">지정좌석</a>
                            <a data-name="assessment_attendance" class="eval_attendance" data-value="0">없음</a>
                        </dd>

                        <dt>조모임</dt>
                        <dd>
                            <a data-name="assessment_teamproject" class="eval_team active" data-value="2">많음</a>
                            <a data-name="assessment_teamproject" class="eval_team" data-value="1">보통</a>
                            <a data-name="assessment_teamproject" class="eval_team" data-value="0">없음</a>
                        </dd>

                        <dt>이해도</dt>
                        <dd>
                            <a data-name="assessment_teamproject" class="eval_understand active" data-value="2">높음</a>
                            <a data-name="assessment_teamproject" class="eval_understand" data-value="1">보통</a>
                            <a data-name="assessment_teamproject" class="eval_understand" data-value="0">낮음</a>
                        </dd>
                    </dl>

                    <hr />

                    <dl>
                        <dt>총평</dt>
                        <dd>
                            <a data-name="rate" class="eval_rate active" data-value="5">5</a>
                            <a data-name="rate" class="eval_rate" data-value="4">4</a>
                            <a data-name="rate" class="eval_rate" data-value="3">3</a>
                            <a data-name="rate" class="eval_rate" data-value="2">2</a>
                            <a data-name="rate" class="eval_rate" data-value="1">1</a>
                        </dd>
                    </dl>
                    <textarea
                    	id="inputTextArea"
                        name="text"
                        class="text"
                        placeholder="이 강의에 대한 총평을 작성해주세요.
(등록 후에는 수정 및 삭제가 불가능하므로 신중히 적어주세요.)"
                    ></textarea>

                    <br />
                    <a class="btn button evaluate-submit" href="#" role="button">작성하기</a>
                </div>
                
            </div>
        </div>
        <script src="<c:url value="/resources/js/popup.js" />"></script>
        <script src="<c:url value="/resources/js/nav.js" />"></script>
        
    </body>
</html>
