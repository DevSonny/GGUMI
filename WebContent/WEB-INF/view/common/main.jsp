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
	<div class="wrapper">
		<div class="jumbotron">
			<div class="container">
				<h1>꾸미루미, &nbsp;<span style="color:#00D8FF;">빅데이터</span> 상권분석</h1><br>
				<p>서울열린데이터광장에서 제공하는 서울시 빅데이터를 기반으로 자영업자가 가장 많이 창업하고 있는 43개의 생활밀착업종을 
				선별하여 업종별 다양한 정보를 상권 단위로 제공합니다. 목표 대상은 전국민(소상공업 창업에 관심이 있거나, 현재 창업중인 자)입니다. 
				상권현황과 경쟁정도, 입지등급, 수익성 등의 분석 정보 제공을 통해 준비된 창업을 유도하고 경영안정을 도모하는 사업.</p>
	        	<p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more &raquo;</a></p>
			</div>
		</div>
		
		
		<div class="container">
	      <div class="row">
	        <div class="col-md-3">
	          <h2>상권분석</h2>
	          <p>특정 지역·영역·업종의 업종, 매출, 유동인구, 지역 43종의 상권정보 제공.<br>
	                    행정구역 단위의 창업 관련 지표를 지도 상에서 분석할 수 있는 분석기능과 자영업 관련 통계정보를 제공합니다.<br>
	                    업종과 지역, 상권의 조건을 설정하고 검색하여 상권 리포트를 조회할 수 있고 지도에서 직접 간단한 정보 조회로 비교함에 
	                    담거나 지역명이나 업종명으로 빠르게 검색할 수 있는 기능도 제공하고 있습니다</p><br>
	          <p><a class="btn btn-default" href="#" role="button">Go!! 상권분석 &raquo;</a></p>
	        </div>
	        <div class="col-md-3">
	          <h2>결과 리포트</h2>
	          <p>업종(추이, 창·폐업률 등), 매출(추이, 특성 등), 인구(유동, 거주 등), 지역(주요집객시설, 학교, 교통 등) 정보를 활용한 <span style="color:blue;">상권분석</span><br>
	                     업소별 경쟁영역 내 거래건수를 기반으로 경쟁수준을 평가할 수 있는 <span style="color:blue;">경쟁분석</span><br>
	                     특정 입지에 대한 43개 표본 엽종별 입지가치(예상매출액)의 평균을 종합하여 평가한 <span style="color:blue;">입지분석</span><br>
	                     특정 위치·업종의 추정매출액, 투자비 회수를 위한 목표매출 및 고객수, 유사한 입지·업종의 매출현황을 비교분석한 <span style="color:blue;">수익분석</span><br>등을 
	           <span style="color:#FF007F;">종합한</span> 결과를 보여줍니다</p>
	          <p><a class="btn btn-default" href="${contextPath}/member/totalResultpage.do" role="button">Go!! 결과 리포트 &raquo;</a></p>
	       </div>
	        <div class="col-md-3">
	          <h2>내 가게</h2>
	          <p>기존의 <span style="color:blue;">자영업</span>을 운영하고 있는 사용자를 위한 서비스를 제공합니다.<br> 자신의 점포 위치와 업종을 등록하면
	                    주변의 경쟁업종 분석과 상권 내에서 소비하고 있는 고객들의 유형과 소비특성 정보를
	                    제공해 타겟 고객을 선정하는데 도움을 드립니다</p><br><br><br><br><br>
	          <p><a class="btn btn-default" href="${contextPath}/member/myStore.do" role="button">Go!! 내 가게 &raquo;</a></p>
	        </div>
	        <div class="col-md-3">
	          <h2>부동산</h2>
	          <p>꾸미루미는 지도 기반으로 고객이 원하는 지역에 &nbsp; <span style="color:blue;">부동산 매물 찾기 서비스</span>를 제공합니다<br>
	                     고객이 창업을 하고 싶은 지역에 부동산 매물이 있는지 여부를 확인할 수 있는 정보를 제공하고 공인중개업소와 연결해주는 플랫폼을 제공하여
	                     공인중개업소 직원과 바로 매칭하여 정확한 매물 정보를 듣고 거래까지 할 수 있게 도와줍니다</p><br><br><br><br>
	          <p><a class="btn btn-default" href="#" role="button">Go!! 부동산 &raquo;</a></p>
	        </div>
	      </div>
	       <hr> <br>
	       
	      <div style="width:45%;float:left;">
	      <h2>공지사항&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	      <a href="${contextPath}/common/getNoticeList.do?start=0">더보기></a></h2>
		      	<table class="table table-striped" style="text-align: center; border:1px solid #dddddd">
					<thead>
						<tr>
							<th style="background-color: #eeeeee; text-align: center;">번호</th>
							<th style="background-color: #eeeeee; text-align: center;">제목</th>
							<th style="background-color: #eeeeee; text-align: center;">작성자</th>
							<th style="background-color: #eeeeee; text-align: center;">작성일</th>
							<th style="background-color: #eeeeee; text-align: center;">조회수</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="five" items="${five}">
							<tr>
								<td title="notice_no"><c:out value="${five.notice_no }" /></td>
								<td title="title"><a href="${contextPath}/common/getNotice.do?notice_no=${five.notice_no }"><c:out value="${five.title }" /></a></td>
								<td title="writer"><c:out value="${five.writer }" /></td>
								<td title="regi_date"><c:out value="${five.regi_date }" /></td>
								<td title="view_count"><c:out value="${five.view_count }" /></td>
							</tr>
						</c:forEach>					
					</tbody>
				</table>
		  </div>
	      <div style="width:45%;float:right;">
		  <h2><a href="${contextPath}/common/getNewsList.do">창업 News / 교육</a></h2>
			<table class="table table-striped" style="text-align: center; border:1px solid #dddddd">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align: center;">번호</th>
						<th style="background-color: #eeeeee; text-align: center;">제목</th>
						<th style="background-color: #eeeeee; text-align: center;">작성자</th>
						<th style="background-color: #eeeeee; text-align: center;">작성일</th>
						<th style="background-color: #eeeeee; text-align: center;">조회수</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="fiven" items="${fiven}">
						<tr>
							<td title="news_no"><c:out value="${fiven.news_no }" /></td>
							<td title="title"><a href="${contextPath}/common/getNews.do?news_no=${fiven.news_no }"><c:out value="${fiven.title }" /></a></td>
							<td title="writer"><c:out value="${fiven.writer }" /></td>
							<td title="regi_date"><c:out value="${fiven.regi_date }" /></td>
							<td title="view_count"><c:out value="${fiven.view_count }" /></td>
						</tr>
					</c:forEach>					
				</tbody>
			</table>
	    </div>
	      
	    </div>
	    <div class="push"></div> <!-- footer위치 잡아주려고 추가함   -->
    </div>
    <!-- 본문 끝 -->
    
    <!-- 풋터 -->
    <jsp:include page="/WEB-INF/view/common/footer.jsp"></jsp:include>
    
    <!-- 자바스크립트  -->
	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="${contextPath}/js/bootstrap/bootstrap.min.js"></script>
</body>
</html>