<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script type="text/javascript">
	$(document).ready(function() {
		schReportItems();

	});

	var msgid = [];

	function schReportItems() {
		$.ajax({
			type : "POST",
			url : '${contextPath}/msgreport/rlist.json',
			success : function(data) {
				var $tbody = $("#reportList");
				if (data.LIST.length > 0) {
					for (var i = 0; i < data.LIST.length; i++) {
						msgid[i] = data.LIST[i].MSGID;
						var $tr = $("<tr onclick='moveDetail(" + i + ")'>");
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
						$tdCol3.text(data.LIST[i].NOWDATE);
						$tdCol4.text(data.LIST[i].SENDDATE);
						$tdCol5.text(data.LIST[i].DEPARTNUM);
						$tdCol6.text(data.LIST[i].SENDTYPE);
						$tdCol7.text(data.LIST[i].SENDSTATUS);
						$tdCol8.text(data.LIST[i].MSGCNT);
						$tdCol9.text(data.LIST[i].SUCCCNT);
						$tdCol10.text(data.LIST[i].FAILCNT);

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

	function schReport() {
		$.ajax({
			type : "POST",
			url : '${contextPath}/msgreport/schReport.json',
			data : $('#schReportFrm').serialize(),
			success : function(data) {
				var $tbody = $("#reportList");
				if (data.LIST.length > 0) {
					for (var i = 0; i < data.LIST.length; i++) {
						msgid[i] = data.LIST[i].MSGID;
						var $tr = $("<tr onclick='moveDetail(" + i + ")'>");
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
						$tdCol3.text(data.LIST[i].NOWDATE);
						$tdCol4.text(data.LIST[i].SENDDATE);
						$tdCol5.text(data.LIST[i].DEPARTNUM);
						$tdCol6.text(data.LIST[i].SENDTYPE);
						$tdCol7.text(data.LIST[i].SENDSTATUS);
						$tdCol8.text(data.LIST[i].MSGCNT);
						$tdCol9.text(data.LIST[i].SUCCCNT);
						$tdCol10.text(data.LIST[i].FAILCNT);

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
				alert('검색실패');
			}
		})
	}

	function moveDetail(i) {
		var id = msgid[i];
		window.location.href = "${contextPath}/msgreport/detail" + id;
		console.log(id);
	}
</script>
<div class="card" style="padding: 20px;">
	<h5 class="title-font">
		<i class="fa fa-search" aria-hidden="true"></i> 결과 조회
	</h5>
	<form id="schReportFrm" name="schReportFrm" method="post">
		<div class="row pt-3">

			<div class="col-5" style="display: flex;">

				<div class="col-5">
					<input type="date" id="startDate" name="startDate" class="form-control">
				</div>
				<div class="col-5">
					<input type="date" id="endDate" name="endDate" class="form-control">
				</div>
			</div>
			<div class="col-1">
				<select id="schType" name="schType" class="form-control selectpicker noborder">
					<option name="subject" value="subject" >제목</option>
					<option name="departNum" value="departNum">발신번호</option>
				</select>
			</div>
			<div class="col-6" style="margin-left: -25px !important;">
				<input type="text" id="schContent" name="schContent" class="form-control" placeholder="검색 키워드를 입력하세요.">
			</div>

		</div>
	</form>
	<div class="pt-4"></div>
	<button class="btn btn-primary" type="button" onclick="schReport()">찾기</button>
	
	<div class="row pt-4">
		<div class="col-sm-12">
			<table class="table table-boredered table-hover">
				<colgroup>
					<col style="width: 20px;" />
					<col style="width: 80px;" />
					<col style="width: 150px;" />
					<col style="width: 150px;" />
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
</div>