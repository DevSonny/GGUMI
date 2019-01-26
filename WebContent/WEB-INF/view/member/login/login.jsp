<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<c:set var="contextPath" value="<%= request.getContextPath()%>"/>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="${contextPath}/css/bootstrap/bootstrap.css">
	<link rel="stylesheet" href="${contextPath}/css/me/custom.css">
	<title>꾸미루미,빅데이터 상권분석</title>
</head>
<body>
	<!--네비게이션바  -->
	<jsp:include page="/WEB-INF/view/common/nav.jsp"></jsp:include>
	
	<!-- 본문 시작 -->
	<div class="wrapper" id="grey-wrapper">
		<form class="form-signin" action="${contextPath}/member/loginCheck.do" method="post">
        	<h2 class="form-signin-heading">회원 로그인</h2>
        	
        	<label for="id" class="sr-only">id</label>
        	<input type="text" id="id" name="id" class="form-control" placeholder="아이디" required autofocus>
        	
        	<label for="pw" class="sr-only">pw</label>
        	<input type="password" id="pw" name="pw" class="form-control" placeholder="비밀번호" required >
        	
        	<!-- <div class="checkbox">
          		<label>
            		<input type="checkbox" value="remember-me"> Remember me
          		</label>
        	</div> -->
        	<button class="btn btn-lg btn-primary btn-block" type="submit">로그인</button>
        	<c:if test="${requestScope.loginFail == true}">
        		<p style="color : red;">로그인 정보 정확하지 않습니다.</p>
        	</c:if>
      		<div class="pull-left"><a href="${contextPath}/common/main.do">메인으로 이동</a></div>
      		<div class="pull-right"><a  href="${contextPath}/member/join.do">회원가입</a></div>
      	</form>
		
		
		
		
	    <div class="push"></div> <!-- footer위치 잡아주려고 추가함   -->
    </div>
    <!-- 본문 끝 -->
    
    <!-- 풋터 -->
    <jsp:include page="/WEB-INF/view/common/footer.jsp"></jsp:include>
    
	<!-- 자바스크립트  -->
	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="${contextPath}/js/bootstrap/bootstrap.min.js"></script>
</body>
</html>