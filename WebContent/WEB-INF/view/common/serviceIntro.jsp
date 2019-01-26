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
	<div class="wrapper">
	
		<header class="masthead bg-primary text-white text-center">
			<div class="container">
				<img class="img-fluid mb-5 d-block mx-auto" src="${contextPath}/img/profile.png" alt="">
			  	<h1 class="text-uppercase mb-0">Start&nbsp;&nbsp;&nbsp;<span style="font-size:1.5em;">꾸미루미</span></h1>
			  	<hr class="star-light">
			  	<h2 class="font-weight-light mb-0">창업이 두려운 혹은 창업에 대해 전혀 모르는데 창업은 하고 싶은 당신을 위해<br> <span style="font-size:1.5em;">꾸미루미</span>가 <br>당신의 꿈을 이루어 드립니다</h2>
			  	<br>
			</div>
	    </header> 
		<div class="container">
	    	<div class="row">
	        	<div class="col-lg-4">
	          		<h2>머리말</h2>
					<p>꾸미루미는 창업예정자 및 기존 자영업자에게 <br>
					      상권관련 정보는  물론 골목상권 단위로 상권의 <br> 
					      위험을 감지합니다. 그리고 꾸미루미는 골목상권 내<br> 
					      자영업자의 어려움을 빅데이터를 통해 분석하여 <br>
					      파악하고 이를 정책에 반영하여 실질적인 도움을 <br>
					      드리기 위해 노력하고 있습니다.</p>
	          		<p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
	        	</div><!-- /.col-lg-4 -->
	        
	        	<div class="col-lg-4">
	          		<h2>사이트 사용 방법</h2>
				        <p>빅데이터 기반 상권 분석 서비스<br>
				                     지도를 사용한 편리한 UI/UX<br>
				                     서울시 빅데이터를 종합하여 상세히 분석<br>
				                     공인중개사와의 매칭 서비스<br>
				                     창업 News & 창업 교육 정보 제공</p>
          				<p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
	        	</div><!-- /.col-lg-4 -->
	        
	        	<div class="col-lg-4">
	          		<h2>사용 데이터</h2>
			          <p>상가/업소 정보 - 서울시<br>
			                          골목상권영역 - 서울시<br>
			                          유동인구 - 서울열린데이터광장<br>
			                          매출/소비정보 - 서울열린데이터광장
			          </p>
	          		  <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
	        	</div><!-- /.col-lg-4 -->
	      </div><!-- /.row -->
	     
	      <hr class="featurette-divider">
	      
	      <div class="row featurette">
	        <div class="col-md-7" style="margin-top:50px">
	          <h2 class="featurette-heading">지도를 이용한 간편한 서비스 <span class="text-muted">&nbsp;&nbsp;&nbsp;For easy With Map </span></h2>
	          <p class="lead">지도를 활용해서 직관적으로 주변 상권을 파악할 수 있고 Hot&Cool 상권 지역을 한 눈에 알 수 있습니다.</p>
	          <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more &raquo;</a></p>
	        </div>
	        <div class="col-md-5">
	          <img class="featurette-image img-responsive" src="${contextPath}/img/a.png" width="500px" height="500px" alt="Generic placeholder image">
	        </div>
	      </div>
	      <hr class="featurette-divider">
	      
	      <div class="row featurette">
	        <div class="col-md-5">
	          <img class="featurette-image img-responsive" src="${contextPath}/img/b.png" width="500px" height="500px" alt="Generic placeholder image">
	        </div>
	        <div class="col-md-7" style="margin-top:50px">
	          <h2 class="featurette-heading">고객 맞춤형 상권 분석 결과표<span class="text-muted">&nbsp;&nbsp;&nbsp;Only For You</span></h2>
	          <p class="lead">고객의 기존 정보와 고객이 추가한 정보를 적절하게 융합하여 분석하고 해당 고객에 맞는 분석 결과를 보기 쉽게 제공해주는 서비스.</p>
	          <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more &raquo;</a></p>
	        </div>
	      </div>
	      <hr class="featurette-divider">
	      
	      <div class="row featurette">
	        <div class="col-md-7" style="margin-top:50px">
	          <h2 class="featurette-heading">선택 지역 부동산 매물 정보 제공<span class="text-muted">&nbsp;&nbsp;&nbsp;Offer realty For You</span></h2>
	          <p class="lead">고객이 창업을 원하는 지역에 부동산 매물이 있는지에 대한 정보를 제공하고 부동산 중개업소와 연결해주는 플랫폼을 제공해 주는 서비스.</p>
	          <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more &raquo;</a></p>
	        </div>
	        <div class="col-md-5">
	          <img class="featurette-image img-responsive" src="${contextPath}/img/c.png" width="500px" height="500px" alt="Generic placeholder image">
	        </div>
	      </div>
	      <hr class="featurette-divider">
	       
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