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
			<form action="${contextPath}/member/update.do" method="post" class="form-center">
				<h1 style="text-align: center;">회원 정보</h1>
				<table class="table table-bordered table-hover" style="text-align: center;  border:1px solid #dddddd;">
					<tbody>
						<tr>
							<td style="width: 110px;"><h5>아이디</h5></td>
							<td colspan="2">
								<input class="form-control" type="text" id="id" name="id" maxLEngth="20" 
								value="${sessionScope.memberVo.id}" readonly>
							</td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>비밀번호</h5></td>
							<td colspan="2"><input class="form-control" type="password"
								id="pw" name="pw" maxLEngth="20" readonly="readonly" value="${sessionScope.memberVo.pw}"></td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>이름</h5></td>
							<td colspan="2"><input class="form-control" type="text"
								id="name" name="name" maxLEngth="20" readonly="readonly" value="${sessionScope.memberVo.name}"></td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>생년월일</h5></td>
							<td colspan="2"><input class="form-control" type="text" id="birth" name="birth" maxLEngth="20" value="${sessionScope.memberVo.birth}" readonly="readonly"></td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>성별</h5></td>
								<td colspan="2"><input class="form-control" type="text"
								id="sex" name="sex" maxLEngth="20" readonly="readonly" value="${sessionScope.memberVo.sex}"></td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>핸드폰번호</h5></td>
							<td colspan="2"><input class="form-control" type="text"
								id="phone_no" name="phone_no" maxLEngth="20" readonly="readonly"
								value="${sessionScope.memberVo.phone_no}"></td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>이메일</h5></td>
							<td colspan="2"><input class="form-control" type="email"
								id="email" name="email" maxlength="50" readonly="readonly"
								value="${sessionScope.memberVo.email}"></td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>이메일수신여부</h5></td>
								<td colspan="2"><input class="form-control" type="email"
								id="email_avail" name="email_avail" maxlength="20" readonly="readonly" value="${sessionScope.memberVo.email_avail}"></td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>회원등급유형</h5></td>
								<td colspan="2"><input class="form-control" type="text"
								id="mem_category_code" name="mem_category_code" maxlength="20" readonly="readonly" value="${sessionScope.memberVo.mem_category_code}"></td>
						</tr>
						<tr>
							<td style="text-align: left" colspan="3">
								<div style="text-align: center;">
									<input class="btn btn-primary pull-center" type="button"
										onclick="location.href='${contextPath}/member/changeinfo.do' "
										value="회원정보수정"> <input
										class="btn btn-primary pull-center" type="button"
										onclick="location.href='${contextPath}/common/main.do' "
										value="메인으로">
								</div>
							</td>
						</tr>
			
						
			
					</tbody>


				</table>
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
</html>