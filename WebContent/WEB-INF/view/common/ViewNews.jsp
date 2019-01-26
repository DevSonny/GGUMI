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
		<div class="row">
			<table class="table table-striped" style="text-align: center; border:1px solid #dddddd">
				<thead>
					<tr>
						<th colspan="3" style="background-color: #eeeeee; text-align: center;">게시판 글쓰기 보기 양식</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="width: 20%;">글 번호</td>
						<td colspan="2">${news.news_no }</td>
					</tr>
					<tr>
						<td style="width: 20%;">글 제목</td>
						<td colspan="2">${news.title }</td>
					</tr>
					<tr>
						<td style='text-align:center;vertical-align:middle;'>내용</td>
						<td colspan="2" height="350" valign="middle" style='text-align:center;vertical-align:middle;'>${news.writer }</td>
					</tr>
					<tr>
						<td>작성자</td>
						<td colspan="2" >
							${news.content }
						</td>
					</tr>
					<tr>
						<td>작성일자</td>
						<td colspan="2">${news.regi_date }</td>
					</tr>
					<tr>
						<td>첨부파일</td>
						<td colspan="2"><a href="${contextPath}/common/download.do?filename=b.txt">파일</a></td>
					</tr>
					
				</tbody>
			</table>
			<a href="${contextPath}/common/getNewsList.do" class="btn btn-primary">목록</a>
<%-- 		<%
				if(AdminID != null && AdminID.equals(board.getAdminID())){
			%> --%>
					<a href="${contextPath}/admin/updatenewspage.do?news_no=${news.news_no }" type="GET" class="btn btn-primary">수정</a>
					<a onclick="return confirm('정말로 삭제하시겠습니까?')" href="${contextPath}/admin/deletenews.do?news_no=${news.news_no }" type="GET" class="btn btn-primary">삭제</a>
<%-- 		<%
				}
			%> --%>
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