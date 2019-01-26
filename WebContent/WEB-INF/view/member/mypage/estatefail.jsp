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

<title>부동산등록 실패 페이지</title>
</head>
<body>
	<!--네비게이션바  -->
	<jsp:include page="/WEB-INF/view/common/nav.jsp"></jsp:include>
	

<br><br><br><br><br><br><br><br><br><br><br>
<div style="text-align: center;">
<c:if test="${sessionScope.memberVo == null}">
	<h2>로그인이 필요한 서비스 입니다.</h2>
	<a href="${contextPath}/member/login.do">로그인</a>
	<a href="${contextPath}/member/join.do">회원가입</a>
</c:if>
<c:if test="${sessionScope.memberVo != null and sessionScope.memberVo.mem_category_code != 300}">
	<h2>${sessionScope.memberVo.id}님은 일반회원이십니다. 공인중개사로 등록되시면 부동산등록 서비스를 이용할수 있습니다.</h2>
	<a href="${contextPath}/member/regiRealtor.do">공인중개사 등록</a>&emsp;&emsp;
	<a href="${contextPath}/common/main.do">메인으로</a>
</c:if>
</div>

	<!-- 풋터 -->
    <jsp:include page="/WEB-INF/view/common/footer.jsp"></jsp:include>
    
    <!-- 자바스크립트  -->
	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="${contextPath}/js/bootstrap/bootstrap.min.js"></script>

</body>
</html>