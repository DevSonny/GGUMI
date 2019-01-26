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
	<div class="wrapper" id="grey-wrapper">
	
		<!-- 마이페이지 사이드 네비게이션바  -->
		<jsp:include page="/WEB-INF/view/common/nav/myPage_side_nav.jsp"></jsp:include>
		
		<div class="container">
			<c:if test="${sessionScope.memberVo != null and sessionScope.memberVo.mem_category_code == 100}">		        	
				<div class="jumbotron" style="margin-top : 100px;">
						<h1>${sessionScope.memberVo.id}님은 일반회원입니다.</h1>
						<h3>공인중개사 등록을 하시면 공인중개사 회원이 되며 부동산 매물을 등록할 수 있습니다.</h3><br>
						<p><a href="${contextPath}/member/regiRealtor.do">공인중개사 등록</a>&nbsp; &nbsp;&nbsp; &nbsp;
						<a href="${contextPath}/common/main.do">메인으로</a></p>
				</div>	  
				</c:if>
				<c:if test="${sessionScope.memberVo != null and sessionScope.memberVo.mem_category_code == 200}">
				<div class="jumbotron" style="margin-top : 100px;">
						<h1>${sessionScope.memberVo.id}님은 자영업자 회원입니다.</h1>
						<h3>해당 서비스는 공인중개사 회원을 위한 서비스입니다.</h3><br>
						<a href="${contextPath}/common/main.do">메인으로</a>
				</div>	  
				</c:if>
				
				<c:if test="${sessionScope.memberVo != null and sessionScope.memberVo.mem_category_code == 300}">
				<h1>공인중개사회원임 hi</h1>
				<h2>${sessionScope.memberVo.id }님환영합니다</h2>
				<h1>여기다가 부동산 매물 사진띄워지고 그럴꺼임 회원이 등록해놓은거 </h1>
				<a href="${contextPath}/member/viewMyStoreList.do">내가게 목록보기</a>
				<a href="${contextPath}/member/regiMyStore.do">내가게 추가하기 </a>
				</c:if>
			
		</div>
		

		<div class="push" ></div> <!-- footer위치 잡아주려고 추가함   -->
	</div>
	<!-- 본문 끝 -->
	
	<!-- 풋터 -->
    <jsp:include page="/WEB-INF/view/common/footer.jsp"></jsp:include>
    
    <!-- 자바스크립트  -->
	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="${contextPath}/js/bootstrap/bootstrap.min.js"></script>

</body>
</html>