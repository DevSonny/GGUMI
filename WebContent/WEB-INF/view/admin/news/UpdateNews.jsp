<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>" />
<%@ page import="java.io.PrintWriter" %>

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
	<!--네비게이션바 시작  -->
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="${contextPath}/common/main.do">꾸미루미</a>
			</div>


			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="#">상권분석</a></li>
					<li><a href="#">결과리포트</a></li>
					<li><a href="${contextPath}/member/myStore.do">내가게</a></li>
					<li><a href="#">부동산</a></li>
				</ul>
          			
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">서비스소개</a></li>
					<li><a href="#">고객센터 </a></li>
					
					<c:if test="${sessionScope.memberVo == null and sessionScope.adminVo == null}">
					<li><button type="button" class="btn btn-success navbar-btn" onclick="location.href='${contextPath}/member/login.do'" 
							style="margin-left : 10px;">로그인</button></li>
					<li><button type="button" class="btn btn-primary navbar-btn" onclick="location.href='${contextPath}/member/join.do'" 
							style="margin-left : 10px;">회원가입</button></li>
					</c:if>
					
					
					<li class="dropdown">
					<c:if test="${sessionScope.memberVo != null and sessionScope.adminVo == null}">
						<a href="#" class="dropdown-`"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">${sessionScope.memberVo.id}<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="${contextPath}/member/mypage.do">마이페이지</a></li>
							<li><a href="${contextPath}/member/logout.do">로그아웃</a></li>
						</ul>
					</c:if>
					<c:if test="${sessionScope.memberVo == null and sessionScope.adminVo != null}">
						<a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">${sessionScope.adminVo.admin_id}<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="${contextPath}/admin/mypage.do">마이페이지</a></li>
							<li><a href="${contextPath}/admin/logout.do">로그아웃</a></li>
						</ul>
					</c:if>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- 네비게이션바 끝  -->
	
	<!-- 본문 시작 -->
	<div class="container">
		<div class="row">
		<form action="${contextPath}/admin/updatenews.do?news_no=${news.news_no }" method="POST" enctype="multipart/form-data" >
			<table class="table table-striped" style="text-align: center; border:1px solid #dddddd">
				<thead>
					<tr>
						<th colspan="2" style="background-color: #eeeeee; text-align: center;">창업뉴스 글쓰기 양식</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="text" class="form-control" placeholder="글 제목" name="title" maxlength="50" value="${news.title }"></td>
					</tr>
					<tr>
						<td><input type="text" class="form-control" placeholder="글 작성자" name="writer" maxlength="50" value="${news.content }"></td>
					</tr>
					<tr>
						<td><textarea class="form-control" placeholder="글 내용" name="content" maxlength="2048" style="height: 350px;">${news.writer }</textarea></td>
					</tr>
					<tr>
						<td><input type="file" name="uploadFile" value="첨부파일" /></td>
					</tr>
				</tbody>
			</table>
			<input type="submit" class="btn btn-primary pull-right" value="글 수정">
		</form>
			
		</div>
	</div>
    <!-- 본문 끝 -->
    
    <!-- 풋터 시작 -->
    <footer>
      <p>Blog template built for <a href="http://getbootstrap.com">Bootstrap</a> by <a href="https://twitter.com/mdo">@mdo</a>.</p>
      <p>
        <a href="#">Back to top</a>
      </p>
      <c:if
		test="${sessionScope.memberVo == null and sessionScope.adminVo == null}">
		<a href="${contextPath}/admin/login.do">관리자 로그인</a> &nbsp; &nbsp;
		<a href="${contextPath}/admin/join.do">관리자 회원가입</a>
	</c:if>
    </footer>
    <!--풋터 끝  -->
    
	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="${contextPath}/js/bootstrap/bootstrap.min.js"></script>
</body>
</html>