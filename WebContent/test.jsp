<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h2>${sessionScope.memberVo.id }�� ������ ��� ������ �Դϴ�.</h2>
		<h1>�� ���� ���������</h1>
		<form action="${contextPath}/member/insertMyStore.do" name="form" id="form" method="post">
			<table>			
				<tr><td>ȸ����ȣ</td><td><input type="text"  style="width:500px;" id="mem_no"  name="mem_no" value="${sessionScope.memberVo.mem_no}" readonly/></td></tr>
				<tr><td>��ȣ��</td><td><input type="text"  style="width:500px;" id="store_name"  name="store_name"/></td></tr>
				<tr><td>����ڵ�Ϲ�ȣ</td><td><input type="text"  style="width:500px;" id="biz_regi_no"  name="biz_regi_no"/></td></tr>
				<tr><td>�������ȭ��ȣ</td><td><input type="text"  style="width:500px;" id="store_tel"  name="store_tel"/></td></tr>
				<tr><td>�����ȣ             </td><td><input type="text"  style="width:500px;" id="zip_no"  name="zip_no" readonly /></td><td><input type="button" onClick="goPopup();" value="�����ȣ/�ּҰ˻�"/></td></tr>
				<tr><td>���θ��ּ�       </td><td><input type="text"  style="width:500px;" id="road_address"  name="road_address" readonly /></td></tr>
				<tr><td>����                 </td><td><input type="text"  style="width:500px;" id="jibun_address"  name="jibun_address" readonly /></td></tr>
				<tr><td>���Է� ���ּ�    </td><td><input type="text"  style="width:500px;" id="detail_address"  name="detail_address" readonly/></td></tr>
				<tr><td>entX    </td><td><input type="text"  style="width:500px;" id="entX"  name="entX" /></td></tr>
				<tr><td>entY    </td><td><input type="text"  style="width:500px;" id="entY"  name="entY" /></td></tr>
				<tr><td>����    </td><td><input type="text"  style="width:500px;" id="lat"  name="lat" readonly/></td></tr>
				<tr><td>�浵    </td><td><input type="text"  style="width:500px;" id="lng"  name="lng" readonly/></td></tr>
				<tr><td>�������ڵ�</td><td><input type="text"  style="width:500px;" id="h_code"  name="h_code" readonly	/></td></tr>
				<tr><td>����</td><td><input type="text"  style="width:500px;" id="job_name"  name="job_name"/></td><td><input type="button" id="button1" onclick="job_search();" value="job_search()" /></td></tr>
				<tr><td>�����ڵ�</td><td><input type="text"  style="width:500px;" id="job_code"  name="job_code" value="CS100009" readonly/></td></tr>
				<tr><td>â������</td><td><input type="text"  style="width:500px;" id="business_code"  name="business_code"/></td></tr>
			</table>
			<input type="submit" value="���"> <input type="reset" value="���ۼ�">
		</form>
		<br><br>
		<a href="${contextPath}/common/main.do">��������</a>

</body>
</html>