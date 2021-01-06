<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script type="text/javascript">
	$(document).ready(function() {
		schReportItems();
	});

	function schReportItems() {
		$.ajax({
			type : "POST",
			url : '${contextPath}/msgreport/rlist.json',
			success : function(data) {
				var $tbody = $("#reportList");
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
						var $tdCol8 = $("<td />");
						var $tdCol9 = $("<td />");
						var $tdCol10 = $("<td />");

						$tdCol1.text(i + 1);
						$tdCol2.text(data.LIST[i].SUBJECT);
						$tdCol3.text(data.LIST[i].NOW_DATE);
						$tdCol4.text(data.LIST[i].SEND_DATE);
						$tdCol5.text(data.LIST[i].CALLBACK);
						$tdCol6.text(data.LIST[i].SENDTYPE);
						/* $tdCol7.text(data.LIST[i].SENDSTATUS); */
						$tdCol7.text(i);
						$tdCol8.text(data.LIST[i].DEST_COUNT);
						$tdCol9.text(data.LIST[i].SUCC_COUNT);
						$tdCol10.text(data.LIST[i].FAIL_COUNT);

						$tr.append($tdCol1);
						$tr.append($tdCol2);
						$tr.append($tdCol3);
						$tr.append($tdCol4);
						$tr.append($tdCol5);
						$tr.append($tdCol6);
						$tr.append($tdCol7);
						$tr.append($tdCol8);
						$tr.append($tdCol9);
						$tr.append($tdCol10);

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
	<div class="row">
		<div class="col-sm-5">
			<input type="date" id="starthate">
			~
			<input type="date" id="endDate">
		</div>
		<div class="col-sm-7">
			<input type="text" class="form-control">
			<button type="button" class="btn btn-primary">검색</button>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-12 pt-5">
			<table class="table table-boredered">
				<colgroup>
					<col style="width: 100px;" />
					<col style="width: 100px;" />
					<col style="width: 100px;" />
					<col style="width: 100px;" />
					<col style="width: 100px;" />
					<col style="width: 100px;" />
					<col style="width: 100px;" />
					<col style="width: 100px;" />
					<col style="width: 100px;" />
					<col style="width: 100px;" />
					<col style="width: 10px;" />
				</colgroup>
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>요청 일시</th>
						<th>전송 일시</th>
						<th>발신 번호</th>
						<th>전송 타입</th>
						<th>전송 상태</th>
						<th>총 건수</th>
						<th>성공 건수</th>
						<th>실패 건수</th>
					</tr>
				</thead>
				<tbody id="reportList">
					
				</tbody>
			</table>
		</div>
	</div>
	<div class="pt-5"></div>
</div>
<div class="pt-3"></div>