<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<tiles:insertAttribute name="js" />
<tiles:insertAttribute name="css" />
<title>UMS</title>
</head>
<body>
	<div style="width: 100%; height: 100%;">

		<div class="row">
			<div id="side" class="col-1">
				<tiles:insertAttribute name="left" />
			</div>
			<div class="col-11">
				<div id="top">
					<tiles:insertAttribute name="header" />
				</div>
				<div id="content">
					<tiles:insertAttribute name="body" />
				</div>
			</div>
		</div>
		<div id="bottom">
			<tiles:insertAttribute name="footer" />
		</div>
</body>
</html>