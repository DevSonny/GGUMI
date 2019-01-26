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
	
	<script type="text/javascript">
		function joinCheckFunction(){
			var id = $('#id').val();
			$.ajax({
				url: '${contextPath}/member/joinCheck.do',
				type: 'POST',
				data: {"id" : id},
				success : function(result){
					if(result == 1){
						$('#checkMessage').html('<b>사용할 수 있는</b> 아이디입니다.');
						$('#checkType').attr('class','modal-content panel-primary');
						$('#idCheckMessage').html('');
					}
					else{
						$('#checkMessage').html('<b>사용할 수 없는</b> 아이디입니다.');
						$('#checkType').attr('class','modal-content panel-danger');
						$('#idCheckMessage').html('사용할 수 없는 아이디입니다.');
					}
					$('#checkModal').modal("show");
					
				}
			})
		}
		function pwCheckFunction(){
			var pw = $('#pw').val();
			var pwCheck = $('#pwCheck').val();
			if(pw != pwCheck){
				$('#pwCheckMessage').html('비밀번호가 서로 일치하지 않습니다.');
			}else{
				$('#pwCheckMessage').html(''); 
			}
		}
	</script>
	<title>꾸미루미,빅데이터 상권분석</title>
</head>
<body>
	<!--네비게이션바  -->
	<jsp:include page="/WEB-INF/view/common/nav.jsp"></jsp:include>
	
	<!-- 본문 시작 -->
	<div class="wrapper" id="grey-wrapper">
		<div class="container">
			<form action="${contextPath}/member/insert.do" method="post" class="form-center">
				<h1 style="text-align:center;">회원 등록</h1>
				<table class="table table-bordered table-hover" style="text-align: center; 1px solid #dddddd">
						<tr>
							<td style="width: 110px;"><h5>아이디</h5></td>
							<td><input class="form-control" type="text" id="id" name="id" maxLEngth="20" required placeholder="아이디를 입력해주세요.">
								<p style="color:red; text-align:left;" id="idCheckMessage"></p>
							</td>
							<td style="width; 110px;"><button class="btn btn-primary" onclick="joinCheckFunction();" type="button">중복체크</button>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>비밀번호</h5></td>
							<td colspan="2"><input class="form-control" type="password" onkeyup="pwCheckFunction();" id="pw" name="pw" maxLEngth="20" required placeholder="비밀번호를 입력해주세요."></td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>비밀번호 확인</h5></td>
							<td colspan="2"><input class="form-control" type="password" onkeyup="pwCheckFunction();" id="pwCheck" name="pwCheck" maxLEngth="20" required placeholder="비밀번호 확인을 입력해주세요.">
								<p style="color:red; text-align:left;" id="pwCheckMessage"></p>
							</td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>이름</h5></td>
							<td colspan="2"><input class="form-control" type="text" id="name" name="name" maxLEngth="20" required placeholder="이름을 입력해주세요."></td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>생년월일</h5></td>
							<td colspan="2"><input class="form-control" type="text" id="birth" name="birth" maxLEngth="20" required placeholder="생일을 입력해주세요(YYYY-MM-DD)"></td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>성별</h5></td>
							<td colspan="2">
								<div class="form-group" style="text-align: left; margin: 0 auto;">
									<div class="btn-group" data-toggle="buttons">
										<label class="btn btn-primary active">
											<input type="radio" name="sex" autocomplete="off" value="남자" checked>남자 
										</label>
										<label class="btn btn-primary">
											<input type="radio" name="sex" autocomplete="off" value="여자">여자 
										</label>								
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>핸드폰번호</h5></td>
							<td colspan="2"><input class="form-control" type="text" id="phone_no" name="phone_no" maxLEngth="20" required placeholder="핸드폰번호를 입력해주세요(010-XXXX-XXXX)"></td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>이메일</h5></td>
							<td colspan="2"><input class="form-control" type="email" id="email" name="email" maxlength="50" required placeholder="이메일을 입력해주세요."></td> 
						</tr>
						<tr>
							<td style="width: 110px;"><h5>이메일수신여부</h5></td>
							<td colspan="2">
								<div class="form-group" style="text-align: left; margin: 0 auto;">
									<div class="btn-group" data-toggle="buttons">
										<label class="btn btn-primary active">
											<input type="radio" name="email_avail" autocomplete="off" value=1 checked>예 
										</label>
										<label class="btn btn-primary">
											<input type="radio" name="email_avail" autocomplete="off" value=0>아니오
										</label>								
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td style="text-align: left" colspan="3"><h5 style="color:red;" id="pwCheckMessage"></h5><input class="btn btn-primary pull-right" type="submit" value="회원가입"></td> 
						</tr>
				</table>
				<a href="${contextPath}/common/main.do">메인으로</a>
			</form>
			
		</div>
	    <div class="push"></div> <!-- footer위치 잡아주려고 추가함   -->
    </div>
    
    <!-- 아이디 중복체크 모달 -->
	<div class="modal fade" id="checkModal" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="vertical-alignment-helper">
			<div class="modal-dialog vertical-align-center">
				<div id="checkType" class="modal-content panel-info">
					<div class="modal-header panel-heading">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&times;</span>
							<span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title">
							아이디 중복체크
						</h4>
					</div>
					<div class="modal-body" id="checkMessage">	
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
					</div>
				</div>
			</div>
		</div>
	</div>
    <!-- 본문 끝 -->
    
    <!-- 풋터 -->
    <jsp:include page="/WEB-INF/view/common/footer.jsp"></jsp:include>
    
	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="${contextPath}/js/bootstrap/bootstrap.min.js"></script>

	
</body>
</html>


