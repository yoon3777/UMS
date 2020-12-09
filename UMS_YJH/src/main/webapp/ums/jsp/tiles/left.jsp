<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script>
	$(function() {

		$("dl dt").click(function(){
			if($("+dd",this).css("display")=="none"){
			$(this).siblings("dd").slideUp("slow");
			$("+dd",this).slideDown("slow");
			}
		});
	});
</script>
<style type="text/css">
#menubox dt {
	font-weight: bold;
	cursor: pointer;
}
dd {
	display: none;
}
</style>
</head>
<body>
	<h3 class="my-4 text-center">UMS</h3>
	<div id="menubox">
		<dl>
			<dt>메시지 전송</dt>
				<dd>SMS/LMS</dd>
				<dd>MMS</dd>
				<dd>FMS</dd>
				<dd>VMS</dd>
			<dt>전송 결과</dt>
				<dd>결과 조회</dd>
				<dd>상세 조회</dd>
		</dl>
	</div>