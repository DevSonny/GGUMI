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
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=5Me6CUafPzLL9p2N2M01&amp;submodules=panorama"></script>
<script>
		var HOME_PATH = '${contextPath}';
</script>
<title>꾸미루미,빅데이터 상권분석</title>
</head>
<body>
	<!--네비게이션바  -->
	<jsp:include page="/WEB-INF/view/common/nav.jsp"></jsp:include>
	
	<!-- 서브 네비게이션바 -->
	<nav class="navbar navbar-default navbar-fixed-top" style="margin-top: 50px; margin-bottom: 0px; z-index: 1000;">
		<div class="navbar-header">
			<button class="navbar-toggle collapsed" type="button"
				data-toggle="collapse" data-target=".bs-example-js-navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="javascript:void(0);" onclick="map_selector(1)">구지도</a> 
			<a class="navbar-brand"	href="javascript:void(0);" onclick="map_selector(2)">동지도</a> 
			<a class="navbar-brand" href="javascript:void(0);" onclick="map_selector(3)">골목지도</a>
		</div>
		
		<div class="collapse navbar-collapse bs-example-js-navbar-collapse">
			<ul class="nav navbar-nav">
				<li class="dropdown">
					<a id="drop1" href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" role="button" aria-expanded="false">
						서울특별시<span class="caret"></span>
					</a>
					<ul class="dropdown-menu" role="menu" aria-labelledby="drop1">
						<li role="presentation">
							<a role="menuitem" tabindex="-1" href="#">현재 서울특별시만 서비스 중입니다</a>
						</li>
					</ul>
				</li>
				<li class="dropdown">
					<a id="drop2" href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" role="button" aria-expanded="false">
				 		<span id="gu_name" >행정구</span><span class="caret"></span>
					</a>
					<ul class="dropdown-menu" role="menu" aria-labelledby="drop2" id="area_gu" style="height: auto; max-height: 300px; overflow-x: hidden;"></ul>
				</li>
				<li class="dropdown">
					<a id="drop3" href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" role="button" aria-expanded="false">
						<span id="dong_name">행정동</span><span class="caret"></span>
					</a>
					<ul class="dropdown-menu" role="menu" aria-labelledby="drop1" id="area_dong" style="height: auto; max-height: 300px; overflow-x: hidden;">
						<li role="presentation">
							<a role="menuitem" tabindex="-1" href="#">구를 선택하세요</a>
						</li>
					</ul>
				</li>
				<li class="dropdown">
					<a id="drop4" href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" role="button" aria-expanded="false" onclick="selectJob();">
						<span id="job_name">업종</span><span class="caret"></span>
					</a>
					<ul class="dropdown-menu" role="menu" aria-labelledby="drop1" id="job" style="height: auto; max-height: 300px; overflow-x: hidden;"></ul>
				</li>
			</ul>
			
			<ul class="nav navbar-nav navbar-right">
				<li id="fat-menu" class="dropdown">
					<a id="drop5" href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" role="button" aria-expanded="false">
						<span>상세정보</span> <span class="caret"></span>
					</a>
					<ul class="dropdown-menu" role="menu" aria-labelledby="drop3">
						<li role="presentation">
							<a role="menuitem" tabindex="-1" href="#">Action</a>
						</li>
						<li role="presentation">
							<a role="menuitem" tabindex="-1" href="#">Another action</a>
						</li>
						<li role="presentation">
							<a role="menuitem" tabindex="-1" href="#">Something else here</a>
						</li>
						<li role="presentation" class="divider"></li>
						<li role="presentation">
							<a role="menuitem" tabindex="-1" href="#">Separated link</a>
						</li>
					</ul>
				</li>
			</ul>
		</div>
		<!-- /.nav-collapse -->
	</nav>
	<!-- 서브 네비게이션바 끝  -->

	<!-- 본문 시작 -->
	<div class="wrapper">
		<!-- 지도  -->
		<div class="map-main">
			<div id="map" style="width: 100%; height: 100%;"></div>
		</div>
		<!-- 지도 끝 -->
		
		<!-- 사이드바 -->
		<div class="map-sidebar" style="overflow:scroll;">
			 
		 <div class="panel-group" id="area_result_accordion" role="tablist" aria-multiselectable="true">
           <div class="panel panel-default">
             <div class="panel-heading" role="tab" id="area_result_heading">
               <h4 class="panel-title">
                 <a class="collapsed" data-toggle="collapse" data-parent="#area_result_accordion" href="#area_result" aria-expanded="false" aria-controls="area_result">

			         지역 선택 결과
			        </a>
			      </h4>
			    </div>
			    <div id="area_result" class="panel-collapse collapse" role="tabpanel" aria-labelledby="area_result_heading">
			      <div class="panel-body">
			      지역을 선택해주세요.<br> 선택하신 지역의 평균월매출과 유동인구를 확인할 수 있습니다.<br>
			      </div>
			    </div>
			  </div>
			 </div>
		  <div class="panel-group" id="job_result_accordion" role="tablist" aria-multiselectable="true">
           <div class="panel panel-default">
             <div class="panel-heading" role="tab" id="job_result_heading">
               <h4 class="panel-title">
                 <a class="collapsed" data-toggle="collapse" data-parent="#job_result_accordion" href="#job_result" aria-expanded="false" aria-controls="job_result">
			        	업종 선택 결과
			        </a>
			      </h4>
			    </div>
			    <div id="job_result" class="panel-collapse collapse" role="tabpanel" aria-labelledby="job_result_heading">
			      <div class="panel-body">
			     	  업종을 선택해주세요.<br> 선택하신 업종의 평균월매출을 확인할 수 있습니다.<br>
			      </div>
			    </div>
			  </div>
			 </div>
		
		<div class="panel-group" id="total_result_accordion" role="tablist" aria-multiselectable="true">
           <div class="panel panel-default">
             <div class="panel-heading" role="tab" id="total_result_heading">
               <h4 class="panel-title">
                 <a class="collapsed" data-toggle="collapse" data-parent="#total_result_accordion" href="#total_result" aria-expanded="false" aria-controls="total_result">
			  	        종합 결과
			        </a>
			      </h4>
			    </div>
			    <div id="total_result" class="panel-collapse collapse" role="tabpanel" aria-labelledby="total_result_heading">
			      <div class="panel-body">
			      지역과 업종을 모두 선택해주세요 <br> 선택하신 지역의 유동인구와 업종의 평균월매출을 확인할 수 있습니다.
			      </div>
			    </div>
			  </div>
			 </div>
			 
		<div class="panel-group" id="naver_shop_accordion" role="tablist" aria-multiselectable="true">
           <div class="panel panel-default">
             <div class="panel-heading" role="tab" id="naver_shop_heading">
               <h4 class="panel-title">
                 <a class="collapsed" data-toggle="collapse" data-parent="#naver_shop_accordion" href="#naver_shop" aria-expanded="false" aria-controls="naver_shop">
			         상가 목록 
			        </a>
			      </h4>
			    </div>
			    <div id="naver_shop" class="panel-collapse collapse" role="tabpanel" aria-labelledby="naver_shop_heading">
			      <div class="panel-body">
			      	naver_shop 들어갈 자리 <br>
			      	naver_shop 들어갈 자리 <br>
			      	naver_shop 들어갈 자리 <br>
			      	naver_shop 들어갈 자리 <br>
			      	naver_shop 들어갈 자리 <br>
			      	naver_shop 들어갈 자리 <br>
			      	naver_shop 들어갈 자리 <br>
			      	naver_shop 들어갈 자리 <br>
			      </div>
			    </div>
			  </div>
			</div>
		</div>
		<!-- 사이드바 끝 -->

	</div>
	<!-- 본문 끝 -->
	<!-- 풋터 없음 -->
	
	
	<!-- 자바스크립트  -->
	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="${contextPath}/js/bootstrap/bootstrap.min.js"></script>
	
	<script>
		var HOME_PATH = window.HOME_PATH || '.', urlPrefix = HOME_PATH
				+ '/data/region', urlSuffix = '.json', regionGeoJson = [], loadCount = 0;

		var s_job_code, s_h_code,s_population_no,monthly_sales;
		//맵 생성 및 설정
		var map = new naver.maps.Map('map', {
			zoom : 8,
			minzoom : 8,
			maxzoom : 15,
			center : new naver.maps.LatLng(37.540705, 126.956764),
			mapTypeControl : true,
			scaleControl : true,
			zoomControl : true,
			zoomControlOptions : {
				style : naver.maps.ZoomControlStyle.SMALL,
				position : naver.maps.Position.BOTTOM_LEFT
			}
		});

		map.

		/*  */
		var tooltip = $('<div style="position:absolute;z-index:1000;padding:5px 10px;background-color:#fff;border:solid 2px #000;font-size:14px;pointer-events:none;display:none;"></div>');

		tooltip.appendTo(map.getPanes().floatPane);

		function startDataLayer() {
			map.data.setStyle(function(feature) {
				var styleOptions = {
					fillColor : '#ff0000',
					fillOpacity : 0.0001,
					strokeColor : '#ff0000',
					strokeWeight : 2,
					strokeOpacity : 0.4
				};
				if (feature.getProperty('focus')) {
					styleOptions.fillOpacity = 0.6;
					styleOptions.fillColor = '#0f0';
					styleOptions.strokeColor = '#0f0';
					styleOptions.strokeWeight = 4;
					styleOptions.strokeOpacity = 1;
				}
				return styleOptions;
			});

			regionGeoJson.forEach(function(geojson) {
				map.data.addGeoJson(geojson);
			});

			map.data.addListener('click', function(e) {
				var feature = e.feature;
				if (feature.getProperty('focus') !== true) {
					feature.setProperty('focus', true);
				} else {
					feature.setProperty('focus', false);
				}
			});

			map.data.addListener('mouseover', function(e) {
				var feature = e.feature;
				var regionName;
					regionName = feature.getProperty('SIG_KOR_NM');


				tooltip.css({
					display : '',
					left : e.offset.x,
					top : e.offset.y
				}).text(regionName);

				map.data.overrideStyle(feature, {
					fillOpacity : 0.6,
					strokeWeight : 4,
					strokeOpacity : 1
				});
			});

			map.data.addListener('mouseout', function(e) {
				tooltip.hide().empty();
				map.data.revertStyle();
			});
		}

		function map_selector(i) {
		 
		 regionGeoJson.forEach(function(geojson) {
				map.data.removeGeoJson(geojson);
			});
		 
		 regionGeoJson = [];
		 var keyword = i + '';

			if (keyword.length === 1) {
				keyword = '0' + keyword;
			}

			$.ajax({
				url : urlPrefix + keyword + urlSuffix,
				success : function(idx) {
					return function(geojson) {

						console.log(geojson);
						regionGeoJson[idx] = geojson;
						console.log(idx);
						startDataLayer();
					}
				}(0)
			});
		}
		//마크
		function marker() {
			var marker = new naver.maps.Marker({
				position : new naver.maps.LatLng(37.5666103, 126.9783882),
				map : map
			});
		}
	
		/* 업종 불러오는 함수 */
		function selectJob(){
			$.ajax({
				type: 'POST',
				url: '${contextPath}/analysis/selectJobNameJobCode.do',
				success : function(list){
						for(var i=0;i<list.length;i++){
							$('#job').append("<li role='presentation'><a role='menuitem' tabindex='-1' href='javascript:void(0);' onclick='fix_job(\""+list[i].job_name+"\",\""+list[i].job_code+"\")'>"+list[i].job_name+"</a></li>");
						}
					}
				}
			)
		}
		
		/* 행정구 불러오는 ajax */
		$.ajax({
			type: 'POST',
			url: '${contextPath}/analysis/selectGu.do',
			success : function(list){
				console.log(list);
				for(var i=0;i<list.length;i++){
						$('#area_gu').append("<li role='presentation'><a id='gu"+i+"' role='menuitem' tabindex='-1' href='javascript:void(0);' onclick='selectArea_dong(\""+list[i].h_code+"\",\""+list[i].gu+"\")'>"+list[i].gu+"</a></li>");
				}
			}
		})
				

		/* 행정동 불러오는 함수 */
		function selectArea_dong(h_code,gu){
//------------ 행정구 선택했을때 지도 효과 넣기-------------------------------------

		/* 	if(gu=='강남구'){
				
				var gangnamgu = new naver.maps.Marker({
					position : new naver.maps.LatLng(37.517504, 127.047059),
					map : map
				});
			}else if(gu=='서초구'){
				var suchogu = new naver.maps.Marker({
					position : new naver.maps.LatLng(37.483568,127.032665),
					map : map
				});
			} */
/* 			
			var gangnamgu1 = new naver.maps.LatLng(37.517504, 127.047059);
			var suchogu1 = new naver.maps.LatLng(37.483568,127.032665);
			
			map.setCenter(gangnamgu1); // 중심 좌표 이동
			map.setZoom(9); // 줌 레벨 변경
			
			var gangnamgu2 = new naver.maps.Marker({
				position : new naver.maps.LatLng(37.517504, 127.047059),
				map : map
			}); */
//-----------------------------------------------------------------------------------
			/*fix_gu()와 같은 효과.*/
			
			$("#gu_name").html(gu);
			$.ajax({
				data : {h_code : h_code},
				type: 'POST',
				url: '${contextPath}/analysis/selectDong.do',
				success : function(list){
					console.log(list);
					$('#area_dong').empty();
					for(var i=0;i<list.length;i++){
			 				$('#area_dong').append("<li role='presentation'><a role='menuitem' tabindex='-1' href='javascript:void(0);' onclick='fix_dong(\""+list[i].h_dong+"\",\""+list[i].h_code+"\")'}'>"+list[i].h_dong+"</a></li>"); 
						}
					}
				}
			)
			
			$('#area_result').collapse({toggle: true});
			
			/*특정구의 유동인구를 보여주는 ajax*/
			$.ajax({
				data : {gu : gu},
				type: 'POST',
				url: '${contextPath}/analysis/selectPopulationByGu.do',
				success : function(list){
						console.log(list);
							$('#area_result').html("<br><span>&nbsp;&nbsp;"+gu+"의 유동인구수는 "+numberWithCommas(list[0].population_no)+"명입니다."+"</span><br><br>"); 
						}
					}
				)
		}
			
			/*선택한 동 고정하는 함수*/
			function fix_dong(dong,h_code){
				$("#dong_name").html(dong);
				s_h_code = h_code;

			/*사이드바에 특정동의 추정매출 띄워주는 ajax*/
				$.ajax({
					data : {h_code : h_code},
					type: 'POST',
					url: '${contextPath}/analysis/selectSalesByHCode.do',
					success : function(list){
						console.log(list);
						if(list.length==0){
							$('#area_result').html("<br><span>&nbsp;&nbsp;"+dong+"의 점포당 평균월매출액은 0원입니다.</span><br>"); 
						}
						else{
							$('#area_result').html("<br><span>&nbsp;&nbsp;"+dong+"의 점포당 평균월매출액은 "+numberWithCommas(list[0].monthly_sales)+"원입니다."+"</span><br>"); 
						}
					}
				}
			)
			
			/*사이드바에 특정동의 유동인구 띄워주는 ajax*/
				$.ajax({
					data : {h_code : h_code},
					type: 'POST',
					url: '${contextPath}/analysis/selectPopulationByHCode.do',
					success : function(list){
						console.log(list);
						if(list[0]==null){
							$('#area_result').append("<br><span>&nbsp;&nbsp;"+dong+"의 유동인구수는 0명입니다.</span><br>"); 
							s_population_no=0;
						}else{
							$('#area_result').append("<br><span>&nbsp;&nbsp;"+dong+"의 유동인구수는 "+numberWithCommas(list[0].population_no)+"명입니다."+"</span><br>"); 
							s_population_no=list[0].population_no;
						}
			
							if($("#dong_name").html()!="행정동"&&$("#job_name").html()!="업종"){
								show_total();
							}
						}
					}
				)
		}

		function fix_job(job,job_code){
			$("#job_name").html(job);
			s_job_code=job_code;
			/*사이드바에 특정업종의 추정매출 띄워주는 ajax*/
			$.ajax({
				data : {job_code : job_code},
				type: 'POST',
				url: '${contextPath}/analysis/selectSalesByJob.do',
				success : function(list){
					console.log(list);
						if($("#dong_name").html()!="행정동"&&$("#job_name").html()!="업종"){
			 				show_total(); 
						}else{
							$('#job_result').html("<br><span>&nbsp;&nbsp;"+job+" 업종의 점포당 평균월매출액은 "+numberWithCommas(list[0].monthly_sales)+"원입니다."+"</span><br>"); 
						}
					}
				}
			)
			$('#job_result').collapse({toggle: true});
		}
		
		/* 종합 결과 출력 함수 */
		function show_total(){
			var h_code = s_h_code;
			var job_code = s_job_code;
			$.ajax({
				data : {h_code : h_code, job_code : job_code},
				type: 'POST',
				url: '${contextPath}/analysis/selectSalesTotal.do',
				success : function(list){
					if(list[0]==null){
						$('#total_result').html("<br><span>&nbsp;&nbsp;"+$('#dong_name').html()+"의 "+$('#job_name').html()+"업종의 점포당 평균월매출액은 0원입니다.</span><br>");
					}else{
						$('#total_result').html("<br><span>&nbsp;&nbsp;"+$('#dong_name').html()+"의 "+$('#job_name').html()+"업종의 점포당 평균월매출액은 "+numberWithCommas(list[0].monthly_sales)+"원입니다.</span><br>");
					}
						$('#total_result').append("<br><span>&nbsp;&nbsp;"+$('#dong_name').html()+"의 유동인구수는 "+numberWithCommas(s_population_no)+"명입니다.</span><br>");
					}
				}
			)
			$('#total_result').collapse({toggle: true});
		}

		/* 숫자에 콤마 찍는 정규식 함수 */
		function numberWithCommas(x) {
		    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		}
	</script>
</body>
</html>