<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
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
					<li><a href="${contextPath}/analysis/map.do">상권분석</a></li>
					<li><a href="${contextPath}/member/totalResult.do">결과리포트</a></li>
					<li><a href="${contextPath}/member/myStore.do">내 가게</a></li>
					<li><a href="#">부동산</a></li>
				</ul>
          			
				<ul class="nav navbar-nav navbar-right">
					<li><a href="${contextPath}/common/serviceIntro.do">서비스소개</a></li>
					<li><a href="${contextPath}/common/customcenterpage.do">고객센터 </a></li>
					
					<c:if test="${sessionScope.memberVo == null and sessionScope.adminVo == null}">
					<li><button type="button" class="btn btn-success navbar-btn" onclick="location.href='${contextPath}/member/login.do'" 
							style="margin-left : 10px;">로그인</button></li>
					<li><button type="button" class="btn btn-primary navbar-btn" onclick="location.href='${contextPath}/member/join.do'" 
							style="margin-left : 10px; margin-right: 15px;">회원가입</button></li>
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
</body>
</html>