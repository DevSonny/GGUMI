<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h2>${sessionScope.memberVo.id }님 내가게 등록 페이지 입니다.</h2>
		<h1>내 가게 등록페이지</h1>
		<form action="${contextPath}/member/insertMyStore.do" name="form" id="form" method="post">
			<table>			
				<tr><td>회원번호</td><td><input type="text"  style="width:500px;" id="mem_no"  name="mem_no" value="${sessionScope.memberVo.mem_no}" readonly/></td></tr>
				<tr><td>상호명</td><td><input type="text"  style="width:500px;" id="store_name"  name="store_name"/></td></tr>
				<tr><td>사업자등록번호</td><td><input type="text"  style="width:500px;" id="biz_regi_no"  name="biz_regi_no"/></td></tr>
				<tr><td>사업장전화번호</td><td><input type="text"  style="width:500px;" id="store_tel"  name="store_tel"/></td></tr>
				<tr><td>우편번호             </td><td><input type="text"  style="width:500px;" id="zip_no"  name="zip_no" readonly /></td><td><input type="button" onClick="goPopup();" value="우편번호/주소검색"/></td></tr>
				<tr><td>도로명주소       </td><td><input type="text"  style="width:500px;" id="road_address"  name="road_address" readonly /></td></tr>
				<tr><td>지번                 </td><td><input type="text"  style="width:500px;" id="jibun_address"  name="jibun_address" readonly /></td></tr>
				<tr><td>고객입력 상세주소    </td><td><input type="text"  style="width:500px;" id="detail_address"  name="detail_address" readonly/></td></tr>
				<tr><td>entX    </td><td><input type="text"  style="width:500px;" id="entX"  name="entX" /></td></tr>
				<tr><td>entY    </td><td><input type="text"  style="width:500px;" id="entY"  name="entY" /></td></tr>
				<tr><td>위도    </td><td><input type="text"  style="width:500px;" id="lat"  name="lat" readonly/></td></tr>
				<tr><td>경도    </td><td><input type="text"  style="width:500px;" id="lng"  name="lng" readonly/></td></tr>
				<tr><td>행정동코드</td><td><input type="text"  style="width:500px;" id="h_code"  name="h_code" readonly	/></td></tr>
				<tr><td>업종</td><td><input type="text"  style="width:500px;" id="job_name"  name="job_name"/></td><td><input type="button" id="button1" onclick="job_search();" value="job_search()" /></td></tr>
				<tr><td>업종코드</td><td><input type="text"  style="width:500px;" id="job_code"  name="job_code" value="CS100009" readonly/></td></tr>
				<tr><td>창업형태</td><td><input type="text"  style="width:500px;" id="business_code"  name="business_code"/></td></tr>
			</table>
			<input type="submit" value="등록"> <input type="reset" value="재작성">
		</form>
		<br><br>
		<a href="${contextPath}/common/main.do">메인으로</a>

</body>
</html>