<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>" />

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
		<div>
			<input id="hamburger" type="checkbox"> <label for="hamburger">&equiv;</label>
			<nav>
				<header>내 가게</header>
				<ul>
					<li><a href="${contextPath}/member/myStoreList.do">내 가게 목록</a></li>
					<li><a href="${contextPath}/member/regiMyStore.do">내 가게 등록</a></li>
					<li><a href="#">주변상권 분석</a></li>
				</ul>
			</nav>
		</div>
		
		<div class="container" >
			<c:if test="${sessionScope.memberVo != null and sessionScope.memberVo.mem_category_code != 200}">
					<div class="jumbotron" style="margin-top : 100px;">
			        	
							<h1>${sessionScope.memberVo.id}님은 일반회원입니다.</h1>
							<h3>가게를 등록해주시면 자영업자 회원이 되며 내가게 서비스를 이용할 수 있습니다.</h3><br>
							<p><a href="${contextPath}/member/regiMyStore.do">내가게 등록</a>&nbsp; &nbsp;&nbsp; &nbsp;
							<a href="${contextPath}/common/main.do">메인으로</a></p>
			        	
					</div>	  
			</c:if>

			<h1>regiMyStoreREsult페이지이다.</h1>
			<h2>${sessionScope.memberVo.id }님환영합니다</h2>
			<a href="${contextPath}/member/viewMyStoreList.do">내가게 목록보기</a>
			<a href="${contextPath}/member/regiMyStore.do">내가게 추가하기 </a>

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