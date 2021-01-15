<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UMS</title>
<%@ include file="../../../include/inc_common.jsp"%>
<%@ include file="../../../include/inc_script.jsp"%>
<style>
html, body {
	width: 100%;
	height: 100%;
	background: #fafafa;
}
</style>
<script type="text/javascript">
	/* $(document).ready(function() {
		// Store variables
		var menu_head = $('li > a'), menu_body = $('#subMenu');
		// Click function
		menu_head.on('click', function(event) {
			// Disable header links
			event.preventDefault();
			// Show and hide the tabs on click
			if ($(this).attr('class') != 'active') {

				$(this).next().stop(true, true).slideToggle('normal');
				menu_head.removeClass('active');
				$(this).addClass('active');
			} else {
				$(this).removeClass('active');
				menu_body.slideUp('normal');
			}
		});
	}); */
</script>
</head>
<body>
	<div>
		<div class="row wrap">
			<div class="col-2">
				<div class="side" style="z-index: 2;">
					<tiles:insertAttribute name="sider" />
				</div>
			</div>
			<div class="col-10" style="margin-left: 280px !important; z-index: 1;">
				<div class="header fixed-top">
					<tiles:insertAttribute name="header" />
				</div>
				<div id="content">
					<tiles:insertAttribute name="body" />
				</div>
			</div>
			<%-- <div class="footer">
				<tiles:insertAttribute name="footer" />
			</div> --%>
		</div>
	</div>
</body>
</html>