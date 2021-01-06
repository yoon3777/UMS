<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script type="text/javascript">
	$(document).ready(function() {
		schDetailItems();
	});

	function schDetailItems() {
		$.ajax({
			type : "POST",
			url : '${contextPath}/msgreport/dlist.json',
			success : function(data) {
				var $tbody = $("#detailList");
				if (data.LIST.length > 0) {
					for (var i = 0; i < data.LIST.length; i++) {
						var $tr = $("<tr />");
						var $tdCol1 = $("<td />");
						var $tdCol2 = $("<td />");
						var $tdCol3 = $("<td />");
						var $tdCol4 = $("<td />");
						var $tdCol5 = $("<td />");
						var $tdCol6 = $("<td />");
						var $tdCol7 = $("<td />");

						$tdCol1.text(i + 1);

						$tr.append($tdCol1);

						$tbody.append($tr);
					}
				} else {
					$tbody.html("<tr><td colspan=\"10\" class=\"text-center\">결과가 없습니다.</td></tr>");
				}
			},
			complete : function(data) {

			},
			error : function() {
				alert('실패');
			}
		});
	}
</script>
<div class="pt-3"></div>
<div class="container-fluid">
	<div class="pt-3"></div>
	<div class="row col-sm-12">
		<div class="col-sm-4">
			제목
			<input type="text" class="form-control">
			<div class="pt-3"></div>
			<textarea class="form-control" style="height: 170px;"></textarea>
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
				<tbody id="detailList">

				</tbody>
			</table>
		</div>
	</div>
</div>
<div class="pt-3"></div>