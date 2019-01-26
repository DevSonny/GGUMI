<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div>
	<input id="hamburger" type="checkbox"> <label for="hamburger">&equiv;</label>
	<nav>
		<header>마이페이지</header>
		<ul>
			<li><a href="${contextPath}/member/mypage.do">회원정보</a></li>
			<li><a href="${contextPath}/member/changeinfo.do">회원정보 수정</a></li>
			<li><a href="#">내가 쓴 글 </a></li>
			<c:if test="${sessionScope.memberVo.mem_category_code == 200 or sessionScope.memberVo.mem_category_code == 100}">
			<li><a href="${contextPath}/member/myStore.do">내 가게</a></li>
			<li><a href="#">상권분석 이력 </a></li>
			</c:if>
			
			<c:if test="${sessionScope.memberVo.mem_category_code == 300 or sessionScope.memberVo.mem_category_code == 100}">
			<li><a href="${contextPath}/member/myEstate.do">부동산</a></li>
			</c:if>
			<li><a href="${contextPath}/member/deleteMem.do">회원 탈퇴</a></li>
		</ul>
	</nav>
</div>
</body>
</html>