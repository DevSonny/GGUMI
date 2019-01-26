<%@page import="org.springframework.web.context.request.SessionScope"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.ggumi.vo.member.MemberVo"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>" />      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="${contextPath}/css/bootstrap/bootstrap.css">
	<link rel="stylesheet" href="${contextPath}/css/me/custom.css">
	
	
<title>회원정보수정</title>
</head>
<body style="font-size:2.0em; margin: 150px 150px 150px 150px;">

	<!--네비게이션바  -->
	<jsp:include page="/WEB-INF/view/common/nav.jsp"></jsp:include>



<c:if test="${!empty updated_id }">
	<p>${updated_id}님 고객 정보 수정이 완료 되었습니다.</p><br>
	<a href="/GGUMI/common/main.do">메인페이지로 이동</a>
</c:if>

<c:if test="${empty updated_id }">
	이미 존재하거나 잘못 입력하셨습니다. 
	다시 입력해 주세요
	<a href="/GGUMI/member/mypage.do">다시입력하기</a>	
</c:if>

	<!-- 풋터 -->
    <jsp:include page="/WEB-INF/view/common/footer.jsp"></jsp:include>
    
    <!-- 자바스크립트  -->
	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="${contextPath}/js/bootstrap/bootstrap.min.js"></script>

</body>
</html>