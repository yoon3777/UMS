<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script type="text/javascript">
	$(document).ready(function() {

	});

	function login() {
		$.ajax({
			type : 'POST',
			url : '${contextPath}/login.json',
			data : $("#loginFrm").serialize(),
			success : function(data) {
				if (data.RESULT_CODE == "1") {
					window.location.href = "${contextPath}/view" + data.USERNM;
				} else if (data.RESULT_CODE == "2") {
					swal("아이디가 틀렸습니다.", "", "error");
				} else if (data.RESULT_CODE == "3") {
					swal("비밀번호가 틀렸습니다.", "", "error");
				}
			},
			complete : function(data) {

			},
			error : function(data) {
				alert("로그인실패");
			}
		});
	}

	function userFind() {
		document.get
		$('.modal').fadeIn(300);
		$('.modal-layout').fadeIn(300);
	}
</script>
<div class="row" style="height: 150px;"></div>
<div class="row">
	<div class="col-4"></div>
	<div class="col-4">
		<div class="loginBox">
			<div class="container-fluid cf-lo">
				<div class="row" style="display: inline-block;">
					<div class="align-items-center justify-content-center logo-top">
						<img src="/assets/images/mono.jpg" / style="width: 200px; height: 80px;">
					</div>
				</div>
				<div class="pt-4"></div>
				<form id="loginFrm" name="loginFrm" method="post">
					<div class="row pt-4">
						<input type="text" id="userId" name="userId" class="form-control lo" placeholder="아이디" />
						<input type="password" id="userPw" name="userPw" class="form-control lo" placeholder="비밀번호" />
					</div>
				</form>
				<div class="row pt-4">
					<button type="button" class="btn-login btn-block" onclick="login()">로그인</button>
				</div>
				<div class="row pt-4 justify-content-center">
					<a href="#" class="font-login" onclick="userFind()">비밀번호 찾기/변경</a>
				</div>

			</div>
		</div>

	</div>
	<div class="col-4"></div>
</div>
<div class="modal">
	<p class="modal-header">모달 헤더</p>
	<div class="modal-content">
		<p>모달 내용</p>
	</div>
	<button type="button" id="modal-close" class="btn-login btn-block">X</button>
</div>
<div class="modal"></div>

<!--
<div class="row" style="height: 150px;"></div>
<div class="row">
	<div class="col-4"></div>
	<div class="col-4">
		<div class="loginBox">
			<div class="container-fluid cf-lo">
				<div class="row" style="display: inline-block;">
					<div class="sidebar-brand d-flex align-items-center justify-content-center">
						<div class="rotate-n-15">
							<i class="fa fa-envelope-o"></i>
						</div>
						&nbsp;UMS
					</div>
				</div>
				<div class="pt-4"></div>
				<div class="row pt-4">
					<input type="text" class="form-control lo" placeholder="아이디" />
					<input type="password" class="form-control lo" placeholder="비밀번호" />
				</div>
				<div class="row pt-4">
					<button type="button" class="btn btn-primary btn-block">로그인</button>
				</div>
				
				<div class="align-items-center justify-content-center logo-top">
					<img src="/assets/images/mono.jpg" / style="width: 150px; height: 60px;">
				</div>
			</div>
		</div>

	</div>
	<div class="col-4"></div>
</div>-->