<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<div class="wrapper">
		<div class="container" >
			<div class="jumbotron" style="margin-top : 100px;">
				<c:if test="${!empty joined_id }">
				<h1>${joined_id}님 고객 정보 등록이 완료 되었습니다.</h1>
				<br>
	        	<p><a href="${contextPath}/common/main.do">메인화면으로 이동</a>&nbsp; &nbsp;&nbsp; &nbsp; <a href="${contextPath}/member/login.do">로그인</a></p>
				</c:if>
				
				<c:if test="${empty joined_id }">
				<h1>이미 존재하거나 잘못 입력하셨습니다.<br>다시 입력해 주세요</h1>
				<br>
	        	<p><a href="${contextPath}/common/main.do">메인화면으로 이동</a>&nbsp; &nbsp;&nbsp; &nbsp; <a href="${contextPath}/member/join.do">다시입력하기</a></p>
	        	</c:if>
	        	
			</div>	  
	    </div>
	    
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