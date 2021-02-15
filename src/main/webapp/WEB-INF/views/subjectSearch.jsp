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
            <div class="input-group mb-3 mx-auto">
                <input type="text" class="form-control input-sub" placeholder="과목명을 입력해주세요" />
                <a class="btn btn-outline-secondary search-button" href="#" role="button"> 과목 강의평 검색 </a>
            </div>

            <div class="borderForDiv rounded-3">
                <div class="articles">
                <c:forEach var="sub" items="${searchList}">
                    <article>
                        <a class="articles lecinfo view-button" href="view?subjectNo=${sub.subjectNo }">
                            <h5>${sub.subjectName} : ${sub.professorName}</h5>
                            <div class="rate">
								<c:forEach begin='1' end='${sub.evalPoint }'>
									<span class="fa fa-star checked"></span>
								</c:forEach>
								<c:forEach begin='${sub.evalPoint }' end='4'>
									<span class="fa fa-star"></span>
								</c:forEach>
							</div>
						</a>
                    </article>
                    </c:forEach>
                </div>
            </div>
        </div>
        <script src="<c:url value="/resources/js/subjectList.js" />"></script>
        <script src="<c:url value="/resources/js/nav.js" />"></script>
</body>
</html>
