<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${loginOK ==null }">
	<script>
		location.href="";
	</script>
</c:if>
    
<!DOCTYPE html>
<html lang="en">
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
        crossorigin="anonymous"
    />
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>강의평가</title>
        <c:forEach var="totalEvalCheck" items="${totalEvalCheck}">
    		<a hidden class="check-eval-done" data-value = ${totalEvalCheck}></a>         		
    	</c:forEach>
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
        
        <div class="wrapper chart">
            <h2>성적조회</h2>
            <article class="overview">
                <div class="column gpa">
                    <h4>전체 평점</h4>
                    <p class="value">${totalInfo.totalGrade }</p>
                    <p class="total">/ 4.5</p>
                </div>
                <div class="column acquisition">
                    <h4>취득 학점</h4>
                    <p class="value">${totalInfo.totalCredit }</p>
                    <p class="total" title="졸업 학점 설정">/ 130</p>
                </div>
                <div class="column percentage">
                    <h4>전체 백분율</h4>
                    <p class="value">${totalInfo.totalScore }</p>
                    <p class="total" title="졸업 학점 설정">/ 100</p>
                </div>
            </article>
        </div>

        <div class="wrapper w-75">
        <input type="hidden" id="student-id" value="${loginOK.studentId}"/>
        <div class="overview">
            <select class="form-select btn-outline-dark" id="yearList" >
                <option>년도</option>
                <option value="2016">2016</option>
                <option value="2017">2017</option>
                <option value="2018">2018</option>
                <option value="2019">2019</option>
                <option value="2020">2020</option>
            </select>
            <select class="form-select btn-outline-dark" id="semesterList">
                <option>학기</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="하계계절">하계계절</option>
                <option value="동계계절">동계계절</option>
            </select>
            <a class="button check-button" href="#" role="button">조회</a>
            </div>
        </div>

        <div class="wrapper w-75">
            <div class="table">
                <div class="heading">
                    <span class="cell subjectNum"> 과목코드 </span>
                    <span class="cell type"> 이수구분 </span>
                    <span class="cell subjectName"> 과목명 </span>
                    <span class="cell professor"> 교수명 </span>
                    <span class="cell credit"> 학점 </span>
                    <span class="cell score"> 점수 </span>
                    <span class="cell grade"> 성적 </span>
                </div>
                <c:forEach var="sclist" items="${gradeInfo.li}">
                <div class="row">
                    <span class="cell subjectNum"> ${sclist.subjectNo } </span>
                    <span class="cell type"> ${sclist.classification } </span>
                    <span class="cell subjectName"> ${sclist.subjectName } </span>
                    <span class="cell professor"> ${sclist.professorName } </span>
                    <span class="cell credit"> ${sclist.credits } </span>
                    <span class="cell score"> ${sclist.score } </span>
                    <span class="cell grade"> 
                    	<c:if test="${sclist.grade eq 4.5 }"><span>A+</span></c:if>
                        <c:if test="${sclist.grade eq 4.0 }"><span>A0</span></c:if>
                        <c:if test="${sclist.grade eq 3.5 }"><span>B+</span></c:if>
                        <c:if test="${sclist.grade eq 3.0 }"><span>B0</span></c:if>
                        <c:if test="${sclist.grade eq 2.5 }"><span>C+</span></c:if>
                        <c:if test="${sclist.grade eq 2.0 }"><span>C0</span></c:if>
                        <c:if test="${sclist.grade eq 1.5 }"><span>D+</span></c:if>
                        <c:if test="${sclist.grade eq 1.0 }"><span>D</span></c:if>
                        <c:if test="${sclist.grade eq 0.0 }"><span>F</span></c:if>
                     </span>
                </div>
                </c:forEach>
            </div>
            <div class="table">
                <div class="heading">
                    <span class="result"> 취득학점 </span>
                    <span class="result"> 평점평균 </span>
                    <span class="result"> 환산점수 </span>
                </div>
                <div class="row">
                    <span class="result"> ${gradeInfo.totalCredit } </span>
                    <span class="result"> ${gradeInfo.totalGrade } </span>
                    <span class="result"> ${gradeInfo.totalScore } </span>
                </div>
            </div>
        </div>
        <br><br><br><br>
    </body>
    <script src="<c:url value="/resources/js/semesterCheck.js" />"></script>
    <script src="<c:url value="/resources/js/nav.js" />"></script>
</html>
        