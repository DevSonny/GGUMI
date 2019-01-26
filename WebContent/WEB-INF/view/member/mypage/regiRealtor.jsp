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
		<!-- 마이페이지 사이드 네비게이션바  -->
		<jsp:include page="/WEB-INF/view/common/nav/myPage_side_nav.jsp"></jsp:include>
	
		<div class="container">

			<form action="${contextPath}/member/insertRealtor.do" method="post" class="form-center">
				<h1 style="text-align: center;">공인중개사 등록</h1>
				<table class="table table-bordered table-hover" style="text-align: center; 1px solid #dddddd">
					<tr hidden="true">
						<td style="width: 110px;"><h5>회원번호</h5></td>
						<td>
							<input class="form-control" type="text" id="mem_no" name="mem_no" 
								maxLEngth="20" value="${sessionScope.memberVo.mem_no}" readonly>
						</td>
					</tr>
					<tr>
						<td style="width: 110px;"><h5>회원이름</h5></td>
						<td>
							<input class="form-control" type="text" id="name" name="name" 
								maxLEngth="20" value="${sessionScope.memberVo.name}" readonly>
						</td>
					</tr>
					<tr>
						<td style="width: 110px;"><h5>공인중개사번호</h5></td>
						<td>
							<input class="form-control" type="text" id="realtor_no" name="realtor_no" 
							placeholder="공인중개사번호를 입력해주세요">
						</td>
					</tr>
					<tr>
						<td style="width: 110px;"><h5>소속중개사명</h5></td>
						<td>
							<input class="form-control" type="text" id="realtor_name" name="realtor_name"
							placeholder="소속공인중개사를 입력해주세요">
						</td>
					</tr>
					<tr>
						<td style="text-align: left" colspan="2">
							<input class="btn btn-primary pull-right" type="submit" value="등록하기">
						</td>
					</tr>
				</table>
				<a href="${contextPath}/member/mypage.do">마이페이지로</a>
			</form>

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

</body>
</html>
