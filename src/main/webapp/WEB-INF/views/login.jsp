<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
        crossorigin="anonymous"/>
    	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    	<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
        <title>login</title>
    </head>
    <body>
        <div class="wrapperLogin">
            <div class="mx-auto w-25 h-100">    
                <h3>로그인</h3>
                <div class="pb-1">
                    <input type="email" class="form-control input-id" placeholder="학번"/>
                </div>

                <div class="pb-1">
                    <input type="password" class="form-control input-pw" placeholder="비밀번호"/>
                </div>
                <a class="btn btn-primary w-100 login-button" id="" href="#" role="button">로그인</a>

            </div>
        </div>
    </body>
    <script src="<c:url value="/resources/js/login.js" />"></script>
</html>