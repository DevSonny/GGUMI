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
		<div class="row">
		<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;문의사항</h1>
		<form action="${contextPath}/common/getQuestionList.do" class="form-center">
			<table class="table table-striped" style="text-align: center; border:1px solid #dddddd">
				<thead>
					<tr>
						<td colspan="5" style='text-align:right;vertical-align:middle;'>
							<select name="searchCondotion">
								<option value="title">제목
								<option value="content">내용 
							</select>
							<input name="searchKeyword" type="text" />
							<input type="submit" value="검색" />
						</td>
					</tr>
					<tr>
						<th style="background-color: #eeeeee; text-align: center;">번호</th>
						<th style="background-color: #eeeeee; text-align: center;">제목</th>
						<th style="background-color: #eeeeee; text-align: center;">작성자</th>
						<th style="background-color: #eeeeee; text-align: center;">작성일</th>
						<th style="background-color: #eeeeee; text-align: center;">조회수</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="qv" items="${queall}">
						<tr>
							<td title="que_no"><c:out value="${qv.que_no }" /></td>
							<td title="title"><a href="${contextPath}/common/getQuestion.do?que_no=${qv.que_no }"><c:out value="${qv.title }" /></a></td>
							<td title="writer"><c:out value="${qv.writer }" /></td>
							<td title="regi_date"><c:out value="${qv.regi_date }" /></td>
							<td title="view_count"><c:out value="${qv.view_count }" /></td>
						</tr>
					</c:forEach>
					
				</tbody>
			</table>

		 <!-- 페이징처리 시작 -->
		</form>
<!-- 		<a href="bbs.jsp" class="btn btn-success btn-arrow-left">이전</a>
			<a href="bbs.jsp" class="btn btn-success btn-arrow-left">다음</a>	 -->			
			<a href="${contextPath}/common/insertQuestion.do" class="btn btn-primary pull-right">글쓰기</a>
		</div>
	</div>
	    
	
	
	<div class="push"></div> <!-- footer위치 잡아주려고 추가함   -->
	<div class="push"></div> <!-- footer위치 잡아주려고 추가함   -->
    
    <!-- 본문 끝 -->
    
    <!-- 풋터 -->
    <jsp:include page="/WEB-INF/view/common/footer.jsp"></jsp:include>
    
	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="${contextPath}/js/bootstrap/bootstrap.min.js"></script>
</body>
</html>