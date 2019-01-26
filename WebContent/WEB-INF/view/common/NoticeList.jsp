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
	<div class="container">
		<div class="row">
		<h1>공지사항</h1>
		<form action="${contextPath}/common/getNoticeList.do">
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
				<c:set var="perPage" scope="session" value="10"/>
    			<c:set var="totalPages" scope="session" value="${bv.total/perPage}"/>
    			<c:set var="pageIndex" scope="session" value="${param.start/perPage+1}"/>
					<c:forEach var="bv" items="${all}" begin="${param.start}" end="${param.start+9}">
						<c:set var="totalCount" scope="session" value="${bv.total}"/>
						<tr>
							<td title="notice_no"><c:out value="${bv.notice_no }" /></td>
							<td title="title"><a href="${contextPath}/common/getNotice.do?notice_no=${bv.notice_no }"><c:out value="${bv.title }" /></a></td>
							<td title="writer"><c:out value="${bv.writer }" /></td>
							<td title="regi_date"><c:out value="${bv.regi_date }" /></td>
							<td title="view_count"><c:out value="${bv.view_count }" /></td>
						</tr>
					</c:forEach>
					
				</tbody>
			</table>
			<!-- 페이징처리 시작 -->
			<c:if test="${!empty param.start && param.start >(perPage-1) && param.start !=0 }">
          				<a href="${contextPath}/common/getNoticeList.do?start=<c:out value="${param.start - perPage}"/>">Prev </a>
     		</c:if>
			<c:forEach var="boundaryStart" varStatus="status" begin="0" end="${totalCount - 1}" step="${perPage}">
        	<c:choose>
            	<c:when test="${status.count>0 && status.count != pageIndex}">
                     <a href="${contextPath}/common/getNoticeList.do?start=<c:out value='${boundaryStart}'/>">
                        <c:out value="${status.count}"/> |
                     </a>
           		</c:when>
		        <c:otherwise>
		                <c:out value="${status.count}"/> |
		        </c:otherwise>
       		</c:choose>
   		 </c:forEach>

		 <c:if test="${empty param.start || param.start<(totalCount-perPage)}">
		       <a href="${contextPath}/common/getNoticeList.do?start=<c:out value="${param.start + perPage}"/>">Next </a>
		 </c:if>
		 <!-- 페이징처리 시작 -->
		</form>
<!-- 		<a href="bbs.jsp" class="btn btn-success btn-arrow-left">이전</a>
			<a href="bbs.jsp" class="btn btn-success btn-arrow-left">다음</a>	 -->			
			<a href="${contextPath}/admin/insertNotice.do" class="btn btn-primary pull-right">글쓰기</a>
		</div>
	</div>
	    
	
	
	<div class="push"></div> <!-- footer위치 잡아주려고 추가함   -->
    <!-- 본문 끝 -->
    
    <!-- 풋터 -->
    <jsp:include page="/WEB-INF/view/common/footer.jsp"></jsp:include>
    
	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="${contextPath}/js/bootstrap/bootstrap.min.js"></script>
</body>
</html>