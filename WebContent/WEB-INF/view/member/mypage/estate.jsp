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

<title>부동산 등록페이지</title>
</head>
<body>

	<!--네비게이션바  -->
	<jsp:include page="/WEB-INF/view/common/nav.jsp"></jsp:include>


	



<!-- 본문시작 -->
	<div class="wrapper" id="grey-wrapper">
		<div>
			<input id="hamburger" type="checkbox"> <label for="hamburger">&equiv;</label>
			<nav>
				<header>메뉴</header>
				<ul>
					<li><a href="${contextPath}/member/mypage.do">마이페이지</a></li>
					<li><a href="${contextPath}/member/changeinfo.do">회원정보변경</a></li>
					<li><a href="${contextPath}/member/upEstate.do">부동산등록</a></li>
					<li><a href="#">나의 상권분석</a></li>
					<li><a href="#">내가 쓴 글</a></li>
					<li><a href="#">내 가게</a></li>
					<li><a href="${contextPath}/member/deleteMem.do">회원탈퇴</a></li>
				</ul>
			</nav>
		</div>
		<div class="container" style="margin-left: 7%;">
			<form action="${contextPath}/member/uploadEstate.do" method="post">

				<h1 style="text-align: center;">부동산 매물 등록</h1>
				<table class="table table-bordered table-hover"
					style="text-align: center; 1px solid #dddddd">


					<tbody>

						<tr>
							<td style="width: 110px;"><h5>매물명</h5></td>
							<td><input class="form-control" type="text" id="id"
								name="id"></td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>면적</h5></td>
							<td colspan="2"><input class="form-control" type="password"
								id="pw" name="pw"></td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>층정보</h5></td>
							<td colspan="2"><input class="form-control" type="text"
								id="name" name="name"></td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>보증금</h5></td>
							<td colspan="2"><input class="form-control" type="text"
								id="birth" name="birth"></td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>월세</h5></td>
							<td colspan="2"><input class="form-control" type="text"
								id="sex" name="sex"></td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>주차가능여부</h5></td>
							<td colspan="2"><input class="form-control" type="text"
								id="phone_no" name="phone_no"></td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>등록일자</h5></td>
							<td colspan="2"><input class="form-control" type="email"
								id="email" name="email"></td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>상세주소</h5></td>
							<td colspan="2"><input class="form-control" type="email"
								id="email_avail" name="email_avail"></td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>상세설명</h5></td>
							<td colspan="2"><input class="form-control" type="email"
								id="email_avail" name="email_avail"></td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>상세사진경로</h5></td>
							<td colspan="2"><input class="form-control" type="email"
								id="email_avail" name="email_avail"></td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>현재업종</h5></td>
							<td colspan="2"><input class="form-control" type="email"
								id="email_avail" name="email_avail"></td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>거래유형코드</h5></td>
							<td colspan="2"><input class="form-control" type="email"
								id="email_avail" name="email_avail"></td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>입주가능일</h5></td>
							<td colspan="2"><input class="form-control" type="email"
								id="email_avail" name="email_avail"></td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>융자금정보</h5></td>
							<td colspan="2"><input class="form-control" type="email"
								id="email_avail" name="email_avail"></td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>관리자승인여부</h5></td>
							<td colspan="2"><input class="form-control" type="email"
								id="email_avail" name="email_avail"></td>
						</tr>

						<tr>
							<td style="text-align: left" colspan="3">
								<div style="text-align: center;">
									<input class="btn btn-primary pull-center" type="submit"
										value="부동산매물등록하기"> <input
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

	</div>

	<!-- 본문 끝 -->


	<!-- footer위치 잡아주려고 추가함   -->
	<div class="push"></div>
	 

	<!-- 풋터 -->
    <jsp:include page="/WEB-INF/view/common/footer.jsp"></jsp:include>
    
    <!-- 자바스크립트  -->
	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="${contextPath}/js/bootstrap/bootstrap.min.js"></script>

</body>
</html>