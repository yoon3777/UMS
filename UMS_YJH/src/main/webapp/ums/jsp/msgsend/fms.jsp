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
							
							/* alert($(this).parent().find('td').eq(2).text()); */
							/* alert($(this).parent().eq(0).text()); */
							
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
						swal("수신대상등록에 실패하였습니다.", "수신번호 중복", "error");
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
					msgCnt : totalCnt,
					sendType : $("#sendType").val()
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
	
	function fileChk(file){
		var filesize = file.files[0].size;
		var size = Math.round(filesize/1024);
		var filename = $("#fileInput").val().split('/').pop().split('\\').pop();
		var f = filename.slice(filename.lastIndexOf(".")+1).toLowerCase();
		if(f =='bmp' || f == 'gif' || f == 'jpg' || f == 'tif' || f == 'tiff' || f == 'doc' || f== 'docx' || f == 'xls' || f == 'xlsx' || f == 'ppt' || f == 'pptx'
				|| f == 'htm' || f == 'html' || f == 'hwp' || f == 'pdf'){
			$(".fileSize").text(size+"KB");
			$(".fileNm").text(filename);
		} else {
			swal("불가능한 확장자 입니다.", "", "warning");
		}
		
	}

</script>
<input type="hidden" id="sendType" value="${sessionScope.page}" />
<div class="card">
	<div class="row" style="padding: 15px;">
		<div class="col-lg-4">
			<div class="row">
				<div class="container-fluid">
					<div class="col-12">
						<h5 class="title-font">
							<i class="fa fa-envelope"></i> 메시지작성
						</h5>
						<form id="sendMsgFrm" name="sendMsgFrm" method="post">
							<div class="fms-box">
								<div class="pt-3 form-group">
									<label for="InputSubject1">팩스 파일첨부</label>
									<input id="fileInput" name="attachFile" type="file" class="form-control" onchange="fileChk(this)" style="width: 300px; position: absolute" ;/>
									<div class="input-group">
										<input type="text" id="userfile" class="form-control" name="userfile" disabled="" />
										<label for="fileInput" class="btn btn-default" style="border: 1px solid #ced4da">
											<span class="glyphicon fa fa-upload"></span>
										</label>
									</div>
								</div>
								<span class=fms-span> 스캔 가능 파일 : bmp, gif, jpg, tif, tiff, doc, docx, xls, xlsx, ppt, pptx, htm, html, hwp, pdf </span>
								<table class="table table-border" style="margin-top: 20px;">
									<thead>
										<tr>
											<th>파일이름</th>
											<th>파일크기</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="fileNm"></td>
											<td class="fileSize"></td>
										</tr>
									</tbody>
								</table>
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
				<div class="container-fluid b-dashed b-b b-l">
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
				<div class="container-fluid b-dashed b-l">
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
