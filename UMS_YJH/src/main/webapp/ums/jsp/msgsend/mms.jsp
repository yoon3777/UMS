<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script type="text/javascript">
	$(document).ready(function() {
		schSendItems();
		
		$('#fileInput').on('change', function(){ 
			if(window.FileReader){ 
				var filename = $(this)[0].files[0].name;
			} else {
				var filename = $(this).val().split('/').pop().split('\\').pop();
			} 
				$('#userfile').val(filename);
			});
	});
	var totalCnt;
	var tabRow;
	
	function schSendItems() {
		$.ajax({
			type : "POST",
			url : '${contextPath}/msgsend/list.json',
			success : function(data) {
				var $tbody = $("#receiveList");
				totalCnt = data.TOTAL_CNT;
				$("#totalCnt").text("총" + data.TOTAL_CNT + "건");
				if (data.TOTAL_CNT > 0) {
					$tbody.html("");
					for (var i = 0; i < data.LIST.length; i++) {
						/* var $tr = $("<tr onclick='deleteDest(" + tabRow + ")'>"); */
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
						
						$('#tab').find("tbody").find("td:nth-child(n)").bind('click',function(){
							$(this).parent().siblings().css("background","white");
							$(this).parent().css("background","#daeffd");
							tabRow = $(this).parent().find('td').eq(2).text();
						})
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
						swal("수신대상이 추가되었습니다.", "총건:1건\n중복건:0건", "success");

						$("#sendItemFrm").find("input").each(function() {
							$(this).val("");
						});
					} else if(data.RESULT_CODE == "0"){
						swal("수신대상등록에 실패하였습니다.", "미입력", "error");
					} else if(data.RESULT_CODE == "2"){
						swal("수신대상등록에 실패하였습니다.", "수신번호 중복", "errors");
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
			/* var formData = new FormData();
			formData.append("subject", $("#subject").val())
			formData.append("msgContent", $("#msgContent").val());
			formData.append("departNum", $("#departNum").val());
			formData.append("schdType", $('input[name=radio]:checked').val());
			formData.append("sendDate", s_date + s_time);
			formData.append("msgCnt", totalCnt);
			formData.append("sendType", $("#sendType").val());
			formData.append("attachFile", $("#fileInput")[0].files[0]);
			
			console.log(formData[0]); */
			
			/* var formData = new FormData($('#sendMsgFrm')[0]);
			console.log(formData); */
			data = {
					subject : $("#subject").val(),
					msgContent : $("#msgContent").val(),
					departNum : $("#departNum").val(),
					schdType : $('input[name=radio]:checked').val(),
					sendDate : s_date + s_time,
					msgCnt : totalCnt,
					sendType : $("#sendType").val(),
					attachFile : $("#fileInput").val()
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
				enctype: 'multipart/form-data',
				dataType : 'JSON',
				processData : false,
				contentType : false,
				success : function(data) {
					if (data.RESULT_CODE == "1") {
						swal("메시지 발송이 완료 되었습니다.", "성공", "success");

						$("#sendMsgFrm").find("input").each(function() {
							$(this).val("");
						});
						$("#sendMsgFrm").find("textarea").each(function() {
							$(this).val("");
						});
						$("#sendItemFrm").find("input").each(function() {
							$(this).val("");
						});
					} else {
						swal("메시지 전송 실패.", "", "error");
					}
					schSendItems();
				},
				complete : function(data) {

				},
				error : function() {
					swal("실패", "", "error");
				}
			});
		}
	})
}

	function byteCheck() {
		var str = $('#msgContent').val();
		var size = 0;
		for (var i = 0; i < str.length; i++) {

			size++;
			if (44032 < str.charCodeAt(i) && str.charCodeAt(i) <= 55203) { // hangul Syliables
				size++;
			}
			if (12593 <= str.charCodeAt(i) && str.charCodeAt(i) <= 12686) {
				size++;
			}
		}
		$('#byteChk').text(size);

		if (size > 90) {
			$('.contentType').css('background', 'green');
			$('.contentType').text("장문");
			$('#sendType').val("LMS");
		} else {
			$('.contentType').css('background', 'black');
			$('.contentType').text("단문");
			$('#sendType').val("SMS");
		}
	}
	
	function fileThumbnail(f){
		
		var file = f.files;
		
		var reader = new FileReader();
			
		reader.onload = function(e){
			$("#thumbnail").append("<img src="+e.target.result+" style='hegith:30px; width:200px;'>");
		}
			reader.readAsDataURL(file[0]);
	};
	
	function deleteDest(){
		$.ajax({
			type:'POST',
			url: '${contextPath}/msgsend/deleteDest'+tabRow,
			success : function(data) {
				swal("수신자 삭제 성공", "1건 삭제", "success");
				schSendItems();
			},
			complete : function(data) {

			},
			error : function() {
				swal("실패", "", "error");
			}
		})
	}
	function deleteADest(){
		$.ajax({
			type:'POST',
			url: '${contextPath}/msgsend/deleteADest',
			success : function(data) {
				swal("전체  수신자 삭제 성공", totalCnt+"건 삭제", "success");
				schSendItems();
			},
			complete : function(data) {

			},
			error : function() {
				swal("실패", "", "error");
			}
		})
	}

</script>
<input type="hidden" id="sendType" value="${sessionScope.page}" />
<div class="card">
	<div class="row" style="padding: 15px;">
		<div class="col-lg-4">
			<div class="row">
				<div class="container-fluid b-dashed  b-r">
					<div class="col-12">
						<h5 class="title-font">
							<i class="fa fa-envelope"></i> 메시지작성
						</h5>
						<form id="sendMsgFrm" name="sendMsgFrm" method="post" enctype="multipart/form-data">
							<div class="msgBox">
								<div class="content-box">
									<div class="form-group form-box">
										<label>메시지제목</label>
										<input type="text" id="subject" name="subject" class="form-control" />
									</div>
									<div id="thumbnail" style="text-align: center"></div>
									<div class="form-group form-box">
										<label>전송메시지</label>
										<textarea id="msgContent" name="msgContent" onKeyUp="byteCheck()" class="form-control no-margin" rows="10" placeholder="문자 내용을 입력해주세요. (90Bytes 초과시 LMS로 전환)"></textarea>
										<span class="textbytes" style="margin: 5px 0 0 0">
											<span id="byteChk">0</span>
											/2000bytes
										</span>
									</div>
								</div>
							</div>
							<label>
								<i class="fa fa-phone" aria-hidden="true"></i> 발신번호
							</label>
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
							<div class="pt-4" id="ReservationRadio"></div>

							<div class="pt-3 form-group">
								<label for="InputSubject1">파일첨부</label>
								<input id="fileInput" name="fileInput" type="file" accept="image/*" class="form-control" onchange="fileThumbnail(this)" style="width: 300px; position: absolute" ; />
								<div class="input-group">
									<input type="text" id="userfile" class="form-control" name="userfile" disabled="" />
									<label for="fileInput" class="btn btn-default" style="border: 1px solid #ced4da">
										<span class="glyphicon fa fa-upload"></span>
									</label>
								</div>
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
				<div class="container-fluid b-dashed b-b">
					<div class="col-12">
						<h5 class="title-font">
							<i class="fa fa-user-plus"></i> 수신자 추가
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
						<div class="row pt-3 pb-3">
							<div class="col-12">
								<button type="button" id="addBtn" class="btn btn-primary btn-block" onclick="addSendItem()">수신자 추가</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="container-fluid">
					<div class="col-12">
						<h5 class="mt-5 title-font">
							<i class="fa fa-user"></i> 수신자 목록
						</h5>
						<div style="text-align: right !important;">
							<button type="button" id="deleteDest" class="btn-delete" onclick="deleteDest()">수신자 삭제</button>
							<button type="button" id="deleteADest" class="btn-delete" onclick="deleteADest()">전체 삭제</button>
						</div>
						<span id="totalCnt" style="font-size: 14px; font-weight: bold">총0건</span>
						<div id="divBodyScroll">
							<table id="tab" class="table table-boredered">
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
								<tbody id="receiveList">
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
	</div>
</div>
