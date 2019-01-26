<%@page import="org.springframework.web.context.request.SessionScope"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.ggumi.vo.member.MemberVo"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>" />

<!DOCTYPE html>

<html>
<head>
<script src="http://code.jquery.com/jquery-latest.min.js"
	type="text/javascript"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${contextPath}/css/bootstrap/bootstrap.css">
<link rel="stylesheet" href="${contextPath}/css/me/custom.css">
<title>부동산매물등록 성공 페이지</title>
</head>
<body>
	<!--네비게이션바  -->
	<jsp:include page="/WEB-INF/view/common/nav.jsp"></jsp:include>
	
<br><br><br><br><br><br><br><br><br><br>
<div style="text-align: center;">
	<h2>${sessionScope.memberVo.id }님 부동산 매물등록이 완료되었습니다.</h2>
	<a href="${contextPath}/member/dddddddd">부동산매물페이지보기</a>
	<a href="${contextPath}/common/main.do">메인으로 가기</a>
</div>	
	
	<!-- 풋터 -->
    <jsp:include page="/WEB-INF/view/common/footer.jsp"></jsp:include>
    
    <!-- 자바스크립트  -->
	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="${contextPath}/js/bootstrap/bootstrap.min.js"></script>	
	
</body>
</html>