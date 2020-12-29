<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UMS</title>
<%@ include file="../../../include/inc_common.jsp"%>
<%@ include file="../../../include/inc_script.jsp"%>
<script type="text/javascript">
	$(document).ready(function() {
		// Store variables
		var menu_head = $('.menu > li > a'), menu_body = $('.menu li > #sub-menu');
		// Click function
		menu_head.on('click', function(event) {
			// Disable header links
			event.preventDefault();
			// Show and hide the tabs on click
			if ($(this).attr('class') != 'active') {
				menu_body.slideUp('normal');
				$(this).next().stop(true, true).slideToggle('normal');
				menu_head.removeClass('active');
				$(this).addClass('active');
			} else {
				$(this).removeClass('active');
				menu_body.slideUp('normal');
			}
		});
	});
</script>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-1">
				<div id="side">
					<tiles:insertAttribute name="sider" />
				</div>
			</div>
			<div class="col-11">
				<tiles:insertAttribute name="header" />
				<div id="content">
					<tiles:insertAttribute name="body" />
				</div>
			</div>
		</div>
	</div>
</body>
</html>