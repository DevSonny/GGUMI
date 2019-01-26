<%@page import="org.springframework.web.context.request.SessionScope"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.ggumi.vo.member.MemberVo"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>" />

<!DOCTYPE html>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="${contextPath}/css/bootstrap/bootstrap.css">
	<link rel="stylesheet" href="${contextPath}/css/me/custom.css">
	
	
<title>회원정보수정</title>
</head>
<body>	
	<!--네비게이션바  -->
	<jsp:include page="/WEB-INF/view/common/nav.jsp"></jsp:include>

<!-- 본문 시작 -->
	<div class="wrapper" id="grey-wrapper">
		<div>
			<input id="hamburger" type="checkbox"> <label for="hamburger">&equiv;</label>
			<nav>
				<header>마이페이지</header>
				<ul>
					<li><a href="${contextPath}/member/mypage.do">회원정보</a></li>
					<li><a href="${contextPath}/member/changeinfo.do">회원정보 수정</a></li>
					<li><a href="#">상권분석 이력 </a></li>
					<li><a href="#">내가 쓴 글 </a></li>
					<li><a href="${contextPath}/member/myStore.do">내 가게</a></li>
					<li><a href="${contextPath}/member/uploadEstate.do">부동산</a></li>
					<li><a href="${contextPath}/member/deleteMem.do">회원 탈퇴</a></li>
				</ul>
			</nav>
		</div>
		<div class="container">
				<form action="${contextPath}/member/update.do" method="post" class="form-center">
				<h1 style="text-align: center;">회원 정보 수정</h1>
				<table class="table table-bordered table-hover" style="text-align: center; 1px solid #dddddd">

					<tbody>
	
						<tr>
							<td style="width: 110px;"><h5>아이디</h5></td>
							<td><input class="form-control" type="text" id="id" name="id" maxLEngth="20" readonly="readonly" value="${sessionScope.memberVo.id}" placeholder="아이디는 변경하실 수 없습니다."></td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>비밀번호</h5></td>
							<td colspan="2"><input class="form-control" type="password" id="pw" name="pw" maxLEngth="20" placeholder="비밀번호를 입력해주세요."></td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>이름</h5></td>
							<td colspan="2"><input class="form-control" type="text" id="name" name="name" maxLEngth="20" value="${sessionScope.memberVo.name }"></td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>생년월일</h5></td>
						    <td colspan="2"><input class="form-control" type="text" id="birth" name="birth" maxLEngth="20" value="${sessionScope.memberVo.birth}"></td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>성별</h5></td>
							<td colspan="2">
								<div class="form-group"
									style="text-align: left; margin: 0 auto;">
									<div class="btn-group" data-toggle="buttons">
										<label class="btn btn-primary active"> 
											<input type="radio" name="sex"  value="남자" checked>남자
										</label> <label class="btn btn-primary"> 
											<input type="radio" name="sex"  value="여자" >여자
										</label>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>핸드폰번호</h5></td>
							<td colspan="2"><input class="form-control" type="text"
								id="phone_no" name="phone_no" maxLEngth="20" placeholder="${sessionScope.memberVo.phone_no}"></td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>이메일</h5></td>
							<td colspan="2"><input class="form-control" type="email"
								id="email" name="email" maxlength="50" placeholder="${sessionScope.memberVo.email}"></td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>이메일수신여부</h5></td>
							<td colspan="2">
								<div class="form-group"
									style="text-align: left; margin: 0 auto;">
									<div class="btn-group" data-toggle="buttons">
										<label class="btn btn-primary active"> <input type="radio" name="email_avail" value=1 checked>예
										</label> 
										<label class="btn btn-primary"> <input type="radio" name="email_avail" value=0 >아니오
										</label>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td style="text-align: left" colspan="3">
								<div style="text-align: center;">
									<input class="btn btn-primary pull-center" type="submit" value="확인">
									<input class="btn btn-primary pull-center" type="button" onclick="location.href='${contextPath}/member/mypage.do' " value="취소">
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</form>
		</div>
		<div class="push"></div>
		<!-- footer위치 잡아주려고 추가함   -->
	
	</div>
	<!-- 본문 끝 -->

	 <!-- 풋터 -->
    <jsp:include page="/WEB-INF/view/common/footer.jsp"></jsp:include>
    
    <!-- 자바스크립트  -->
	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="${contextPath}/js/bootstrap/bootstrap.min.js"></script>

</body>
</html>