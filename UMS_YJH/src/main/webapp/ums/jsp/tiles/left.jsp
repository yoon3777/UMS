<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script>
	$(document).ready(function() {
		// Store variables
		var accordion_head = $('.accordion > li > a'), accordion_body = $('.accordion li > .sub-menu');
		// Click function
		accordion_head.on('click', function(event) {
			// Disable header links
			event.preventDefault();
			// Show and hide the tabs on click
			if ($(this).attr('class') != 'active') {
				accordion_body.slideUp('normal');
				$(this).next().stop(true, true).slideToggle('normal');
				accordion_head.removeClass('active');
				$(this).addClass('active');
			} else {
				$(this).removeClass('active');
				accordion_body.slideUp('normal');
			}

		});

	});
</script>
<style type="text/css">
.accordion li>.sub-menu {
	display: none;
}

.accordion li:target>.sub-menu {
	display: block;
}

ul {
	list-style: none;
}
</style>
</head>
<body>
	<h3 class="my-4 text-center">UMS</h3>
	<div>
		<ul class="accordion">
			<li>
				<a href="#">메시지 전송</a>
				<ul class="sub-menu">
					<li>SMS/LMS</li>
					<li>MMS</li>
					<li>FMS</li>
					<li>VMS</li>
				</ul>
			</li>
			<li>
				<a href="#">전송 결과</a>
				<ul class="sub-menu">
					<li>결과 조회</li>
					<li>상세 조회</li>
				</ul>
			</li>
		</ul>
	</div>