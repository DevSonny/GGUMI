<%@page import="org.springframework.web.context.request.SessionScope"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.ggumi.vo.member.MemberVo"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>" />
<!DOCTYPE html >
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="${contextPath}/css/bootstrap/bootstrap.css">
	<link rel="stylesheet" href="${contextPath}/css/me/custom.css">
<title>회원탈퇴 실패 페이지</title>
</head>
<body>
	<!--네비게이션바  -->
	<jsp:include page="/WEB-INF/view/common/nav.jsp"></jsp:include>
	
	
<div>
<div style="text-align: center;">
<br><br><br><br><br><br><br><br>
<h1>회원정보를 다시 한번 확인해주세요</h1>
<br><br><br><br>
<a href="/GGUMI/member/changeinfo.do">다시 입력하기</a> 
<a href="/GGUMI/common/main.do">메인화면으로</a> <br><br><br><br>

</div>
</div>

    <!-- 풋터 -->
    <jsp:include page="/WEB-INF/view/common/footer.jsp"></jsp:include>
    
    <!-- 자바스크립트  -->
	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="${contextPath}/js/bootstrap/bootstrap.min.js"></script>

</body>
</html>