<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<c:set var="contextPath" value="<%= request.getContextPath()%>"/>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="${contextPath}/css/bootstrap/bootstrap.min.css">
	<link rel="stylesheet" href="${contextPath}/css/me/custom.css">
	<title>꾸미루미,빅데이터 상권분석</title>
</head>
<body>
	<!--네비게이션바  -->
	<jsp:include page="/WEB-INF/view/common/nav.jsp"></jsp:include>

	
	<!-- 본문 시작 -->
	<div class="wrapper">
	
		<h1>관리자 가입페이지</h1>
		<form action="${contextPath}/admin/insert.do" method="post">
			관리자 아이디(id) :		<input type="text" name="admin_id"><br> 
			비밀번호(pw) :			<input type="password" name="admin_pw"><br>
			관리자 이름(name) : 	<input type="text" name="admin_name"><br> 
			<input type="submit" value="등록"> <input type="reset" value="재작성">
		</form>
		<br><br>
		<a href="${contextPath}/common/main.do">메인으로</a>
		
		
		
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


