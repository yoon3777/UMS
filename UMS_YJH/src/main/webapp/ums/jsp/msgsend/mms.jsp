<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script type="text/javascript">
	$(document).ready(function() {
		schSendItems();
		
		$("#fileInput").on('change', function(){
			if(window.FileReader){
				var filename = $(this)[0].files[0].name;
			}else{
				var filename = $(this).val().split('/').pop().split('\\').pop();
			}
			$("#userfile").val(filename);
		})
	});
	var totalCnt;
	
	function schSendItems() {
		$.ajax({
			type : "POST",
			url : '${contextPath}/msgsend/list.json',
			data : $("#sendItemFrm").serialize(),
			success : function(data) {
				var $tbody = $("#receiveList");
				totalCnt = data.TOTAL_CNT;
				$("#totalCnt").text("총" + data.TOTAL_CNT + "건");
				if (data.TOTAL_CNT > 0) {
					$tbody.html("");
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
						$tdCol2.text(data.LIST[i].DESTNM);
						$tdCol3.text(data.LIST[i].DESTNUM);
						$tdCol4.text(data.LIST[i].VAR1);
						$tdCol5.text(data.LIST[i].VAR2);
						$tdCol6.text(data.LIST[i].VAR3);
						$tdCol7.text(data.LIST[i].VAR4);

						$tr.append($tdCol1);
						$tr.append($tdCol2);
						$tr.append($tdCol3);
						$tr.append($tdCol4);
						$tr.append($tdCol5);
						$tr.append($tdCol6);
						$tr.append($tdCol7);

						$tbody.append($tr);
					}
				} else {
					$tbody.html("<tr><td colspan=\"7\" class=\"text-center\">추가 된 수신자가 없습니다.</td></tr>");
				}
			},
			complete : function(data) {

			},
			error : function() {
				alert('실패');
			}
		});
	}

	function addSendItem() {
		swal({
			  text : "수신자를 추가하시겠습니까?",
			  icon: "info",
			  buttons: true,
			  closeOnClickOutside:false,
			  buttons : {
				  cancle : {
					  text : '아니요',
					  value : false
				  },
				  confirm : {
					  text : '예',
					  value : true
				  }
			  }
		}).then((result)=>{
			if(result){
			$.ajax({
				type : "POST",
				url : '${contextPath}/msgsend/addSendItem.json',
				data : $("#sendItemFrm").serialize(),
				success : function(data) {
					if (data.RESULT_CODE == "1") {
						swal("수신대상이 추가되었습니다.", "총건:1건\n중복건:1건", "success");

						$("#sendItemFrm").find("input").each(function() {
							$(this).val("");
						});
					} else {
						swal("수신대상등록에 실패하였습니다.", "미입력", "danger");
					}
					schSendItems();
				},
				complete : function(data) {

				},
				error : function(request, status, error) {
					alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
					alert("실패");
				}
			});
		}
	})
}

	function sendMsg() {
		if($('input[name=radio]:checked').val()==1){
			var date =$('#Date').val();
			var time = $('#Time').val() + '00';
			var s_date = date.replace(/\-/g, '');
			var s_time = time.replace(':', '');
			}
			data = {
					subject : $("#subject").val(),
					msgContent : $("#msgContent").val(),
					departNum : $("#departNum").val(),
					schdType : $('input[name=radio]:checked').val(),
					sendDate : s_date + s_time,
					msgCnt : totalCnt
			};
		swal({
			  text : "메시지를 전송하시겠습니까?",
			  icon: "info",
			  buttons: true,
			  closeOnClickOutside:false,
			  buttons : {
				  cancle : {
					  text : '아니요',
					  value : false
				  },
				  confirm : {
					  text : '예',
					  value : true
				  }
			  }
		}).then((result)=>{
			if(result){
			$.ajax({
				type : "POST",
				url : '${contextPath}/msgsend/sendMsg',
				data : data,
				success : function(data) {
					if (data.RESULT_CODE == "1") {
						swal("메시지 발송이 완료 되었습니다.", "성공", "success");

						$("#sendMsgFrm").find("input").each(function() {
							$(this).val("");
						});
						$("#sendMsgFrm").find("textarea").each(function() {
							$(this).val("");
						});
					} else {
						swal("메시지 전송 실패.", "??", "warning");
					}
				},
				complete : function(data) {

				},
				error : function() {
					swal("실패", "..", "warning");
				}
			});
		}
	})
}
</script>
<div class="jumbotron"></div>
<div class="row">
	<div class="col-lg-4">
		<div class="row">
			<div class="container-fluid">
				<div class="col-12">
					<h5 class="title-font">
						<i class="fa fa-envelope"></i>&nbsp;메시지작성
					</h5>
					<form id="sendMsgFrm" name="sendMsgFrm" method="post">
						<label>메시지제목</label>
						<input type="text" id="subject" name="subject" class="form-control" />
						<div class="pt-4"></div>
						<label>전송메시지</label>
						<textarea id="msgContent" name="msgContent" class="form-control" rows="10" placeholder="문자 내용을 입력해주세요. (90Bytes 초과시 LMS로 전환)"></textarea>
						<div class="pt-4"></div>
						<label>발신번호</label>
						<input type="text" id="departNum" name="departNum" class="form-control" maxlength="13" />
						<div id="divradio" class="pt-4">
							<label>
								<input type="radio" name="radio" value="0" checked onclick="ImmediatelyRadioCheck()" />
								즉시 전송
							</label>
							<label>
								<input type="radio" name="radio" value="1" onclick="ReservationRadioCheck()" />
								예약 전송
							</label>
						</div>

						<div class="pt-1" id="ReservationRadio"></div>
						<div class="pt-3 form-group">
							<label for="InputSubject1">파일첨부</label>
							<input id="fileInput" filestyle="" type="file" class="form-control" style="width:50px;position: absolute";/>
							<div class="bootstrap-filestyle input-group">
								<input type="text" id="userfile" class="form-control" name="userfile" disabled=""/>
								<label for="fileInput" class="btn btn-default" style="border:1px solid #ced4da">
									<span class="glyphicon fa fa-upload"></span>
								</label>
							</div>
						</div>
						<div>
						
						</div>
					</form>
					<div class="pt-4">
						<button type="button" class="btn btn-primary btn-block btn-lg" onclick="sendMsg()">메시지 전송</button>
					</div>

				</div>
			</div>
		</div>
	</div>
	<div class="col-lg-8">
		<div class="row">
			<div class="col-12">
				<h5 class="title-font">
					<i class="fa fa-user-plus"></i>&nbsp;수신자 추가
				</h5>
				<form id="sendItemFrm" name="sendItemFrm" method="post">
					<div class="row">
						<div class="col-lg-6">
							<label>이름</label>
							<input type="text" name="destNm" class="form-control" />
						</div>
						<div class="col-lg-6">
							<label>수신번호</label>
							<input type="text" id="destNum" name="destNum" class="form-control" maxlength="13" />
						</div>
					</div>
					<div class="row">
						<div class="col-lg-6">
							<label>변수1</label>
							<input type="text" name="var1" class="form-control" />
						</div>
						<div class="col-lg-6">
							<label>변수2</label>
							<input type="text" name="var2" class="form-control" />
						</div>
					</div>
					<div class="row">
						<div class="col-lg-6">
							<label>변수3</label>
							<input type="text" name="var3" class="form-control" />
						</div>
						<div class="col-lg-6">
							<label>변수4</label>
							<input type="text" name="var4" class="form-control" />
						</div>
					</div>
				</form>
				<div class="row pt-3">
					<div class="col-12 text-right">
						<div class="btn-group">
							<button type="button" id="addBtn" class="btn btn-primary btn-lg mr-1" onclick="addSendItem()">대상자 추가</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-12">
				<h5 class="mt-5 title-font">
					<i class="fa fa-user"></i>&nbsp;수신자 목록
				</h5>
				<span id="totalCnt" style="font-size: 14px; font-weight: bold">총0건</span>
				<div id="divBodyScroll">
					<table class="table table-boredered">
						<colgroup>
							<col style="width: 50px;" />
							<col style="width: 100px;" />
							<col style="width: 100px;" />
							<col style="width: 100px;" />
							<col style="width: 100px;" />
							<col style="width: 100px;" />
							<col style="width: 100px;" />
							<col style="width: 17px;" />
						</colgroup>
						<thead>
							<tr>
								<th class="title">No.</th>
								<th class="title">이름</th>
								<th class="title">수신번호</th>
								<th class="title">변수1</th>
								<th class="title">변수2</th>
								<th class="title">변수3</th>
								<th class="title">변수4</th>
							</tr>
						</thead>
						<tbody id="receiveList" style="text-align: center">
							<tr>
								<td colspan="7" class="text-center">추가 된 수신자가 없습니다.</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
