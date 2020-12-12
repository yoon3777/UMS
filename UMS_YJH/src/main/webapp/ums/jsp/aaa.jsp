<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
#con {
	border: 1px solid black;
}

.card {
	text-align: center;
}

table {
    width: 100%; /* 140px * 5 column + 16px scrollbar width */
    border-spacing: 0;
}

tbody, thead tr { display: block; }

tbody {
    height: 220px;
    overflow-y: auto;
    overflow-x: hidden;
}

tbody td, thead th {
    width: 140px;
}

thead th:last-child {
    width: 156px; /* 140px + 16px scrollbar width */
}
</style>
<div class="pt-3"></div>
<div class="container-fluid" id="con">
	<div class="row pt-4">
		<div class="col-sm-3">
			발신번호
			<input type="text" class="form-control" value="">
		</div>
		<div class="col-sm-2">
			변수1
			<input type="text" class="form-control" value="">
		</div>
		<div class="col-sm-2">
			변수2
			<input type="text" class="form-control" value="">
		</div>
		<div class="col-sm-2">
			변수3
			<input type="text" class="form-control" value="">
		</div>
		<div class="col-sm-2">
			변수4
			<input type="text" class="form-control" value="">
		</div>

	</div>
	<div class="row pt-4">
		<div class="col-sm-3">
			이름
			<input type="text" class="form-control" value="">
			<div class="pt-4"></div>
			수신번호
			<input type="text" class="form-control" value="">
			<div class="pt-4"></div>
			<button type="button" class="btn btn-primary btn-lg btn-block">추가</button>
			<div class="pt-4"></div>
			<button type="button" class="btn btn-danger btn-lg btn-block">삭제</button>
		</div>
		<div class="col-sm-8 pt-4">
			<table class="table table-bordered">
				<thead style="background-color: gray">
					<tr>
						<th>번호</th>
						<th>이름</th>
						<th>수신번호</th>
						<th>변수1</th>
						<th>변수2</th>
						<th>변수3</th>
						<th>변수4</th>
					</tr>
				<tbody>
					<tr>
						<td>1</td>
						<td>2</td>
						<td>3</td>
						<td>4</td>
						<td>5</td>
						<td>6</td>
						<td>7</td>
					</tr>
					<tr>
						<td>1</td>
						<td>2</td>
						<td>3</td>
						<td>4</td>
						<td>5</td>
						<td>6</td>
						<td>7</td>
					</tr>
					<tr>
						<td>1</td>
						<td>2</td>
						<td>3</td>
						<td>4</td>
						<td>5</td>
						<td>6</td>
						<td>7</td>
					</tr>
					<tr>
						<td>1</td>
						<td>2</td>
						<td>3</td>
						<td>4</td>
						<td>5</td>
						<td>6</td>
						<td>7</td>
					</tr>
					<tr>
						<td>1</td>
						<td>2</td>
						<td>3</td>
						<td>4</td>
						<td>5</td>
						<td>6</td>
						<td>7</td>
					</tr>
					<tr>
						<td>1</td>
						<td>2</td>
						<td>3</td>
						<td>4</td>
						<td>5</td>
						<td>6</td>
						<td>7</td>
					</tr>
					<tr>
						<td>1</td>
						<td>2</td>
						<td>3</td>
						<td>4</td>
						<td>5</td>
						<td>6</td>
						<td>7</td>
					</tr>

				</tbody>
			</table>
		</div>
	</div>

	<div class="pt-3"></div>
</div>
