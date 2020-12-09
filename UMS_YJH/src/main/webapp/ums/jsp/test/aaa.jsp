<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-2.2.4.js"></script>
<link rel="stylesheet" href="resources/css/bootstrap-4.3.1.min.css" />
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>
	<div class="row">
		<div class="col-2">side</div>
		<div class="col-10">
			<div>header</div>
			<div>content</div>
		</div>
	</div>
	<div>footer</div>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="page-header">
					<h1>컨텐츠 표시</h1>
					<h2>form</h2>
				</div>
				<form>
					<div class="checkbox">
						<label for="cb1">
							<input type="checkbox" id="cb1">
							Check Box
						</label>
					</div>
					<div class="checkbox disabled">
						<label for="cb2">
							<input type="checkbox" id="cb2" disabled>
							Check Box
						</label>
					</div>
					<div class="radio">
						<label for="rb1">
							<input type="radio" id="rb1" name="rb">
							Radio Button No, 1.
						</label>
					</div>
					<div class="radio">
						<label for="rb2">
							<input type="radio" id="rb2" name="rb" checked>
							Radio Button No, 2.
						</label>
					</div>
					<div class="radio disabled">
						<label for="rb3">
							<input type="radio" id="rb3" name="rb" disabled>
							Radio Button No, 3.
						</label>
					</div>
					<div class="form-group">
						<input type="button" class="btn" value="Click">
					</div>
				</form>
			</div>
		</div>
	</div>

</body>
</html>