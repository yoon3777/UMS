<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script type="text/javascript">
	$(document).ready(function() {

	});

	function modify() {

	}

	function logout() {
		window.location.href = "${contextPath}/";
	}
</script>
<span class="logUser">[${sessionScope.userNm}] 님 안녕하세요</span>
<button type="button" class="btn-head" style="margin-right: 10px;" onclick="modify()">정보 수정</button>
<button type="button" class="btn-head" style="margin-right: 50px;" onclick="logout()">로그아웃</button>
<span class="head">${sessionScope.page}</span>
