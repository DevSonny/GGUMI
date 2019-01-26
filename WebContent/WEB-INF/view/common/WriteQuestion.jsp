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
<link rel="stylesheet" href="${contextPath}/css/me/custom.css">
<title>꾸미루미,빅데이터 상권분석</title>
</head>

<body>
	<!--네비게이션바  -->
	<jsp:include page="/WEB-INF/view/common/nav.jsp"></jsp:include>

	<!-- 본문 시작 -->
	<div class="container">
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
		<div class="row">
			<form action="${contextPath}/common/questionwrite.do" method="POST">
				<table class="table table-striped"
					style="text-align: center; border: 1px solid #dddddd">
					<thead>
						<tr>
							<th colspan="2"
								style="background-color: #eeeeee; text-align: center;">게시판
								글쓰기 양식</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="text" class="form-control"
								placeholder="글 제목" name="title" maxlength="50"></td>
						</tr>
						<tr>
							<td><input type="text" class="form-control"
								placeholder="글 작성자" name="writer" maxlength="50"></td>
						</tr>
						<tr>
							<td><textarea class="form-control" placeholder="글 내용"
									name="content" maxlength="2048" style="height: 350px;"></textarea></td>
						</tr>
					</tbody>
				</table>
				<input type="submit" class="btn btn-primary pull-right" value="글 등록">
			</form>
			<form action="${contextPath}/common/getQuestionList.do" method="POST">
				<input type="submit" class="btn btn-primary pull-right" value="뒤로가기">
			</form>
		</div>
	</div>
	<!-- 본문 끝 -->

	<!-- 풋터 -->
    <jsp:include page="/WEB-INF/view/common/footer.jsp"></jsp:include>

	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="${contextPath}/js/bootstrap/bootstrap.min.js"></script>
</body>
</html>