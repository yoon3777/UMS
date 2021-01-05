<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script type="text/javascript">

</script>
<div class="pt-3"></div>
<div class="container-fluid">
	<div class="pt-3"></div>
	<div class="row col-sm-12">
		<div class="col-sm-4">
			제목
			<input type="text" class="form-control">
			<div class="pt-3"></div>
			<textarea class="form-control" placeholder="fdsa" style="height: 170px;"></textarea>
		</div>
		<div class="col-sm-3">
			전송 타입
			<input type="text" class="form-control">
			발신 번호
			<input type="text" class="form-control">
			요청 일시
			<input type="text" class="form-control">
			전송 일시
			<input type="text" class="form-control">
		</div>
		<div class="col-sm-5">
			첨부파일
			<input type="text" class="form-control" readonly>
		</div>
	</div>
	<div class="row">



		<div class="col-sm-12 pt-4 table-responsive">
			<table class="table table-boredered">
				<colgroup>
					<col style="width: 50px;" />
					<col style="width: 80px;" />
					<col style="width: 80px;" />
					<col style="width: 80px;" />
					<col style="width: 80px;" />
					<col style="width: 80px;" />
					<col style="width: 150px;" />
					<col style="width: 10px;" />
				</colgroup>
				<thead>
					<tr>
						<th>번호</th>
						<th>이름</th>
						<th>수신 번호</th>
						<th>요청 일시</th>
						<th>전송 일시</th>
						<th>전송 상태</th>
						<th>실패 사유</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="cont">1</td>
						<td class="cont">윤제현</td>
						<td class="cont">010-2078-7856</td>
						<td class="cont">2020-12-12</td>
						<td class="cont">헬로월드</td>
						<td class="cont">전송 완료</td>
						<td class="cont">네트워크 연결 X</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>
<div class="pt-3"></div>