<%@page import="org.springframework.web.context.request.SessionScope"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.ggumi.vo.member.MemberVo"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>" />
<!DOCTYPE html >
<html>
<head>
	<script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript" ></script>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="${contextPath}/css/bootstrap/bootstrap.css">
	<link rel="stylesheet" href="${contextPath}/css/me/custom.css">
	
<title>GGUMI_회원탈퇴 성공페이지</title>
</head>
<body style="font-size:2.0em; margin: 150px 150px 150px 150px;">

	<!--네비게이션바  -->
	<jsp:include page="/WEB-INF/view/common/nav.jsp"></jsp:include>
	

<div style="text-align: center;">
		<form action="/GGUMI/common/main.do" >
			<h2>회원정보가 삭제되었습니다.</h2>
			<br> 메인페이지로 이동중
			<meta http-equiv="Refresh" content="3;url=/GGUMI/common/main.do">
			<input type="submit" value="확인" />

		</form>
</div>

<br><br>
   <div class="push"></div> <!-- footer위치 잡아주려고 추가함   -->

    <!-- 풋터 -->
    <jsp:include page="/WEB-INF/view/common/footer.jsp"></jsp:include>
    
	<!-- 자바스크립트  -->
	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="${contextPath}/js/bootstrap/bootstrap.min.js"></script>

</body>
</html>