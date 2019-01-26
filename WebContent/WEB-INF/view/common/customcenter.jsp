<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>" />

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="${contextPath}/css/bootstrap/bootstrap.css">
	<link rel="stylesheet" href="${contextPath}/css/bootstrap/carousel.css">
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
				<header>고객센터</header>
				<ul>
					<li><a href="${contextPath}/common/getQuestionList.do">문의사항</a></li>
					<li><a href="#">자주 묻는 질문</a></li>
					<li><a href="#">내가 쓴 글 </a></li>
				</ul>
			</nav>
		</div>
		<div class="container">
	      
	    <center><iframe width="560" height="315" src="https://www.youtube.com/embed/8ptTfnadZ5w" width="800" height="600" frameborder="1" allow="autoplay; encrypted-media" allowfullscreen ></iframe></center>
	       
	    </div>
	    
	    <div class="push"></div> <!-- footer위치 잡아주려고 추가함   -->
	    <div class="push"></div> <!-- footer위치 잡아주려고 추가함   -->
    </div>
    <!-- 본문 끝 -->
    
    <!-- 풋터 -->
    <jsp:include page="/WEB-INF/view/common/footer.jsp"></jsp:include>
    
	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="${contextPath}/js/bootstrap/bootstrap.min.js"></script>
</body>
</html>