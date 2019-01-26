<%@page import="org.springframework.web.context.request.SessionScope"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.ggumi.vo.member.MemberVo"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>" />
<!DOCTYPE html >
<html>
<head>
	<script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript" ></script>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="${contextPath}/css/bootstrap/bootstrap.css">
	<link rel="stylesheet" href="${contextPath}/css/me/custom.css">
	
<script language="javascript">
	
	function begin() {
		//비밀번호창으로 커서가 자동으로 가있게 해줌
		document.deleteinfo.password.focus();
	}

	function checkIt() {
		if (!document.delet.password.value) {
			//update.do로 이동하기 전에 checkIt()함수 먼저 실행
			alert("비밀번호를 입력하지 않으셨습니다.");
			document.deleteinfo.password.focus();
			return false;
		}
	}

	function out_mem() {
		if (confirm("정말 회원탈퇴를 하시겠습니까?")) {
			//yes
			// 회원탈퇴 창으로 가서 비밀번호 누르고 하게?
			location.replace = "/GGUMI/member/deleteMem.do";
			return true;
		} else {
			//no
			return false;

		}
	}
</script>	
	

<title>회원탈퇴화면</title>
</head>

<body onload="begin()">
	
	<!--네비게이션바  -->
	<jsp:include page="/WEB-INF/view/common/nav.jsp"></jsp:include>

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	
	<div style="text-align: center;">
	<form name="deleteinfo" action="/GGUMI/member/delete.do" method="post" onsubmit="return checkIt()">
		<c:if test="${sessionScope.memberVo != null and sessionScope.adminVo == null}">
			<table border="3" bordercolor="gray">
				<tr><h1>회원탈퇴화면</h1></tr>
				<tr>
					<td bgcolor="gray" >비밀번호확인</td>
					<td><input type="password" name="pw" width="" height="50px"></td>
				</tr>
			</table>
			<br>
			<input type="submit" value="회원탈퇴" onclick="out_mem();">
			<button type="button" onclick="location.href='/GGUMI/member/mypage.do' ">마이페이지</button>
				<br><br><br><br><br><br><br><br>
		</c:if>
	</form>
	</div>
	
	
	<!-- 풋터 -->
    <jsp:include page="/WEB-INF/view/common/footer.jsp"></jsp:include>
    
	<!-- 자바스크립트  -->
	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="${contextPath}/js/bootstrap/bootstrap.min.js"></script>
</body>
</html>