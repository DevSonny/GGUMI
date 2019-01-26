<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="<%= request.getContextPath()%>"/>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="${contextPath}/css/bootstrap/bootstrap.css">
	<link rel="stylesheet" href="${contextPath}/css/me/custom.css">
	<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=BSDGhMacRKuqAudz9X_A&submodules=geocoder"></script>
	<title>꾸미루미,빅데이터 상권분석</title>
</head>
<body>
	<!--네비게이션바  -->
	<jsp:include page="/WEB-INF/view/common/nav.jsp"></jsp:include>
	
	<!-- 본문 시작 -->
	<div class="wrapper" id="grey-wrapper">
		<div>
			<input id="hamburger" type="checkbox"> <label for="hamburger">&equiv;</label>
			<nav>
				<header>내 가게</header>
				<ul>
					<li><a href="${contextPath}/member/myStoreList.do">내 가게 목록</a></li>
					<li><a href="${contextPath}/member/regiMyStore.do">내 가게 등록</a></li>
					<li><a href="#">주변상권 분석</a></li>
				</ul>
			</nav>
		</div>
	
		<div class="container">
		<form action="${contextPath}/member/insertMyStore.do" method="post"  name="form" id="form" class="form-center">
				<h1 style="text-align:center;">내 가게 등록</h1>
				<table class="table table-bordered table-hover" style="text-align: center; 1px solid #dddddd">
						<tr hidden="true">
							<td style="width: 110px;"><h5>회원번호</h5></td>
							<td colspan="2"><input class="form-control" type="text" id="mem_no" name="mem_no" maxLength="20" value="${sessionScope.memberVo.mem_no}" readonly/></td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>상호명</h5></td>
							<td colspan="2"><input class="form-control" type="text" id="store_name" name="store_name" maxLength="100" required placeholder="상호명을 입력해주세요."></td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>사업자등록번호</h5></td>
							<td colspan="2"><input class="form-control" type="text" id="biz_regi_no" name="biz_regi_no" maxLength="100" required placeholder="사업자등록번호를 입력해주세요.(XXX-XX-XXXXX)"></td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>사업장전화번호</h5></td>
							<td colspan="2"><input class="form-control" type="text" id="store_tel" name="store_tel" maxLength="20" required placeholder="사업장전화번호를 입력해주세요."></td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>우편번호</h5></td>
							<td><input class="form-control" type="text" id="zip_no" name="zip_no" maxLength="20"  placeholder="우편번호/주소검색을 클릭해주세요." required readonly ></td>
							<td style="width; 110px;"><button class="btn btn-primary" onClick="goPopup();" type="button">우편번호/주소검색</button>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>도로명주소</h5></td>
							<td colspan="2"><input class="form-control" type="text" id="road_address" name="road_address"  required readonly></td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>지번주소</h5></td>
							<td colspan="2"><input class="form-control" type="text" id="jibun_address" name="jibun_address" required readonly></td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>상세주소</h5></td>
							<td colspan="2"><input class="form-control" type="text" id="detail_address" name="detail_address" required readonly></td>
						</tr>
						<tr hidden="true">
							<td style="width: 110px;"><h5>위도</h5></td>
							<td colspan="2"><input class="form-control" type="text" id="lat" name="lat" required readonly></td>
						</tr>
						<tr hidden="true">
							<td style="width: 110px;"><h5>경도</h5></td>
							<td colspan="2"><input class="form-control" type="text" id="lng" name="lng" required readonly></td>
						</tr>
						<tr hidden="true">
							<td style="width: 110px;"><h5>행정동코드</h5></td>
							<td colspan="2"><input class="form-control" type="text" id="h_code" name="h_code" required readonly></td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>업종</h5></td>
							<td><input class="form-control" type="text" id="job_name" name="job_name" maxLength="50"  placeholder="업종을 선택헤주세요." required readonly ></td>
							<td style="width; 110px;"><button class="btn btn-primary" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample" onClick="selectJob();" type="button">업종선택</button>
						</tr>
						<tr>
							<td colspan="3">
						    	<div class="collapse" id="collapseExample">
							    	<div class="well">
							   		<div role="tabpanel">
								    	<!-- Nav tabs -->
								    	<ul class="nav nav-tabs" role="tablist" id="large-category">
									     	<!-- <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Home</a></li>
									    	<li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Profile</a></li>
									    	<li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">Messages</a></li>
									    	<li role="presentation"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">Settings</a></li> -->
								 		</ul>
								
								  		<!-- Tab panes -->
									  	<div class="tab-content" id="large-category-content">
									    	<!-- <div role="tabpanel" class="tab-pane active" id="home">home<hr>home2</div>
									    	<div role="tabpanel" class="tab-pane" id="profile">profile <hr> profile2</div>
									    	<div role="tabpanel" class="tab-pane" id="messages">messagees <hr> messages</div>
									    	<div role="tabpanel" class="tab-pane" id="settings">settings <hr> settings</div> -->
									  	</div>
								  	</div>
							  		</div>
								</div>
							</td>
						</tr>
						<tr hidden="true">
							<td style="width: 110px;"><h5>업종코드</h5></td>
							<td colspan="2"><input class="form-control" type="text" id="job_code" name="job_code"  value="CS100009" required readonly></td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>창업형태</h5></td>
							<td colspan="2">
								<div class="form-group" style="text-align: left; margin: 0 auto;">
									<div class="btn-group" data-toggle="buttons">
										<label class="btn btn-primary active">
											<input type="radio" name="business_code" autocomplete="off" value="1" checked>프랜차이즈
										</label>
										<label class="btn btn-primary">
											<input type="radio" name="business_code" autocomplete="off" value="2">개인사업
										</label>								
									</div>
								</div>
							</td>
						</tr>
						
						<tr>
							<td colspan="3"><input class="btn btn-primary pull-right" type="submit" value="등록"></td> 
						</tr>
				</table>
				<a href="${contextPath}/common/main.do">메인으로</a>
			</form>
			
		
		</div>
	    <div class="push"></div> <!-- footer위치 잡아주려고 추가함   -->
    </div>
    <!-- 본문 끝 -->
    
    <!-- 풋터 -->
    <jsp:include page="/WEB-INF/view/common/footer.jsp"></jsp:include>
    
    <!-- 자바스크립트  -->
	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="${contextPath}/js/bootstrap/bootstrap.min.js"></script>
    <script>
	function goPopup(){
		// 주소검색을 수행할 팝업 페이지를 호출합니다.
		// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrCoordUrl.do)를 호출하게 됩니다.
		var pop = window.open("${contextPath}/common/jusoPopup.do","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
	}
	function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,detBdNmList,bdNm,bdKdcd,siNm,sggNm,emdNm,liNm,rn,udrtYn,buldMnnm,buldSlno,mtYn,lnbrMnnm,lnbrSlno,emdNo,entX,entY){
			// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
			document.form.zip_no.value = zipNo;
			document.form.road_address.value = roadAddrPart1;
			document.form.jibun_address.value = jibunAddr;
			document.form.detail_address.value = addrDetail;
			
			var utmk = new naver.maps.Point(entX,entY);
			var latlng = naver.maps.TransCoord.fromUTMKToLatLng(utmk);
			var lat = latlng.lat();
			var lng = latlng.lng();
			
			document.form.lat.value= lat;
			document.form.lng.value= lng;			
			
			$.ajax({
				url: 'https://dapi.kakao.com/v2/local/geo/coord2regioncode.json?x='+lng+'&y='+lat,
				headers: { 'Authorization': 'KakaoAK 1d54db2e9c98c11234cb7fb3f03f38a2'}, 
				type: 'GET' 
			}).done(function(data1) { 
					for(i = 0; i<data1.documents.length;i++){							
						if(data1.documents[i].region_type.trim().toUpperCase() == 'H'){
							document.form.h_code.value = data1.documents[1].code;
							break;
						}
					}
				});
	}
	function selectJob(){
		$.ajax({
			type: 'POST',
			url: '${contextPath}/analysis/selectJobNameJobCode.do',
			success : function(list){
					$('#large-category').empty();
					$('#large-category-content').empty();
					for(var i=0;i<list.length;i++){
						if(list[i].job_code.endsWith('00000')){
							console.log(list[i]);
							$('#large-category').append("<li role=\"presentation\"><a href=\"#"+list[i].job_code+
									"\" aria-controls=\""+list[i].job_code+"\" role=\"tab\" data-toggle=\"tab\">"+list[i].job_name+"</a></li>");
							$('#large-category-content').append("<div role=\"tabpanel\" class=\"tab-pane\" id=\""+list[i].job_code+"\"></div>");  
							var cnt = 0;
							for(var j = 0; j<list.length;j++){
								if(list[j].job_code.startsWith(list[i].job_code.substring(0,3)) && list[j].job_code !== list[i].job_code){
									if(cnt%5 == 0){
										$('#'+list[i].job_code).append("<br>");
									} 
									$('#'+list[i].job_code).append(
											"<button class=\"btn btn-default\" data-toggle=\"collapse\" data-target=\"#collapseExample\""+ 
											"aria-expanded=\"false\" aria-controls=\"collapseExample\" type=\"button\" onclick=\"setJobCodeName('"+
													list[j].job_code+"','"+list[j].job_name+"');\""+"style=\"width : 110px; margin : 5px; font-size:14px;\" >"+
													list[j].job_name+"</button>");
									cnt++;
								}
							}        
						}
					}
				}
				
			
			}
		)
	}
	function setJobCodeName(code,name){
		document.form.job_name.value = name;
		document.form.job_code.value = code;
	}
	
	</script>
</body>

</html>