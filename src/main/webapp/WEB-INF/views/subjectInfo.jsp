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
        <div class="wrapper w-75">
            <div class="borderForDiv rounded-3">
                <h3>${info.title.subjectName }</h3>
                교수명 : ${info.title.professorName }
            </div>

            <div class="borderForDiv rounded-3">
                <h4>강의평</h4>
                <div class="rating">
                    <div class="rate"> 
								<c:forEach begin='1' end='${info.title.evalTotal }'>
									<span class="fa fa-star checked"></span>
								</c:forEach>
								<c:forEach begin='${info.title.evalTotal }' end='4'>
									<span class="fa fa-star"></span>
								</c:forEach>
								${info.title.evalTotal }
							</div>
                </div>

                <div class="details">
                    <p>
                        <label>과제</label>
                        <c:if test="${info.detail.evalAssignment eq 1 }"><span>많음</span></c:if>
                        <c:if test="${info.detail.evalAssignment eq 2 }"><span>보통</span></c:if>
                        <c:if test="${info.detail.evalAssignment eq 3 }"><span>없음</span></c:if>
                    </p>
                    <p>
                        <label>시험</label>
                        <c:if test="${info.detail.evalExam eq 1 }"><span>세번이상</span></c:if>
                        <c:if test="${info.detail.evalExam eq 2 }"><span>두번</span></c:if>
                        <c:if test="${info.detail.evalExam eq 3 }"><span>한번</span></c:if>
                        <c:if test="${info.detail.evalExam eq 4 }"><span>없음</span></c:if>
                    </p>
                    <p>
                        <label>출결</label>
                        <c:if test="${info.detail.evalAttendance eq 1 }"><span>전자출결</span></c:if>
                        <c:if test="${info.detail.evalAttendance eq 2 }"><span>직접호명</span></c:if>
                        <c:if test="${info.detail.evalAttendance eq 3 }"><span>지정좌석</span></c:if>
                        <c:if test="${info.detail.evalAttendance eq 4 }"><span>없음</span></c:if>
                    </p>
                    <p>
                        <label>조모임</label>
                        <c:if test="${info.detail.evalTeam eq 1 }"><span>많음</span></c:if>
                        <c:if test="${info.detail.evalTeam eq 2 }"><span>보통</span></c:if>
                        <c:if test="${info.detail.evalTeam eq 3 }"><span>없음</span></c:if>
                    </p>
                    <p>
                        <label>난이도</label>
                        <c:if test="${info.detail.evalUnderstanding eq 1 }"><span>높음</span></c:if>
                        <c:if test="${info.detail.evalUnderstanding eq 2 }"><span>보통</span></c:if>
                        <c:if test="${info.detail.evalUnderstanding eq 3 }"><span>낮음</span></c:if>
                    </p>
                </div>

                <div class="articles">
                <c:forEach var="list" items="${info.comment}">
                    <article>
                        <p class="rate">
                            <span class="star">
                                <span class="value">
                                <c:forEach begin='1' end='${list.evalPoint }'>
									<span class="fa fa-star checked"></span>
								</c:forEach>
								<c:forEach begin='${list.evalPoint }' end='4'>
									<span class="fa fa-star"></span>
								</c:forEach></span>
                            </span>
                        </p>
                        <p class="info">
                            <span class="semester">${list.registerYear }-${list.registerSemester }학기 수강자</span>
                        </p>
                        <p class="text">${list.evalText }</p>
                    </article>
                </c:forEach>
                </div>
            </div>
        </div>
        <script src="<c:url value="/resources/js/subjectList.js" />"></script>
        <script src="<c:url value="/resources/js/nav.js" />"></script>
    </body>
</html>
        