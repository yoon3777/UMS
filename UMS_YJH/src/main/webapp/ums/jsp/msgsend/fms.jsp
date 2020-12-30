<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script>
	$(document).ready(function() {

		// 수신자 추가 버튼
		$('#addBtn').on("click", function() {

			var data = {
				dest_name : $('#dest_name').val(),
				dest_num : $('#dest_num').val(),
				var1 : $('#var1').val(),
				var2 : $('#var2').val(),
				var3 : $('#var3').val(),
				var4 : $('#var4').val()
			};

			$.ajax({
				data : data,
				type : 'post',
				url : 'insertDest',
				success : function() {
				},
				error : function(request, status, error) {
					alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
					alert("실패");
				}
			});
		});

		// 메시지 전송 버튼
		$('#sendBtn').on("click", function() {
			var date = $('#Date').val();
			var time = $('#Time').val() + '00';

			var s_date = date.replace(/\-/g, '');
			var s_time = time.replace(':', '');

			var data = {
				depart_num : $('#depart_num').val(),
				subject : $('#subject').val(),
				sch_type : $("input[name=radio]:checked").val(),
				send_date : s_date + s_time,
				total_count : $('#index').val() - 1,
				msg_content : $('#textarea').val()
			}
			console.log("총 수신자 수 :" + index);
			console.log("날짜값 확인 :" + s_date + s_time);
			
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
					data : data,
					type : 'post',
					url : 'sendMsg',
					success : function() {
						swal("메시지 발송이 완료 되었습니다.", {
							icon : "success",
						});
					},
					error : function(request, status, error) {
						alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
					}
				});
				} else{
				}
			});
			
			
			
			});

	})
</script>
<div class="pt-3"></div>
<div class="container-fluid" id="con">
	<div class="row pt-4">
		<div class="col-sm-3">
			발신번호
			<input type="text" class="form-control" id="depart_num" maxlength="13">
		</div>
		<div class="col-sm-2">
			변수1
			<input type="text" class="form-control" id="var1">
		</div>
		<div class="col-sm-2">
			변수2
			<input type="text" class="form-control" id="var2">
		</div>
		<div class="col-sm-2">
			변수3
			<input type="text" class="form-control" id="var3">
		</div>
		<div class="col-sm-2">
			변수4
			<input type="text" class="form-control" id="var4">
		</div>

	</div>
	<div class="row pt-4">
		<div class="col-sm-3">
			이름
			<input type="text" class="form-control" id="dest_name">
			<div class="pt-4"></div>
			수신번호
			<input type="text" class="form-control" id="dest_num" maxlength="13">
			<div class="pt-4"></div>
			<button type="button" class="btn btn-primary btn-lg btn-block" id="addBtn">추가</button>
			<div class="pt-4"></div>
			<button type="button" class="btn btn-danger btn-lg btn-block" id="delBtn">삭제</button>
		</div>
		<div class="col-sm-8 pt-4 table-responsive">
			<table id="tblBackground" cellspacing="0">
				<tr>
					<td>
						<div id="divHeadScroll">
							<table id="tblHead">
								<colgroup>
									<col style="width: 100px;" />
									<col style="width: 100px;" />
									<col style="width: 100px;" />
									<col style="width: 100px;" />
									<col style="width: 100px;" />
									<col style="width: 100px;" />
									<col style="width: 100px;" />
									<col style="width: 17px;" />
								</colgroup>
								<tr>
									<td class="title">번호</td>
									<td class="title">이름</td>
									<td class="title">수신번호</td>
									<td class="title">변수1</td>
									<td class="title">변수2</td>
									<td class="title">변수3</td>
									<td class="title">변수4</td>
									<td></td>
								</tr>
							</table>
						</div>
						<div id="divBodyScroll">
							<table id="tblBody">

							</table>
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>

	<div class="pt-3"></div>
</div>

<div class="pt-3"></div>

<div class="container-fluid" id="con">
	<div class="row pt-4">
		<div class="col-sm-3">
			제목
			<input type="text" class="form-control" id="depart_num">
			<div class="pt-3"></div>
			<div class="pt-4" style="height: 150px;">
				<div id="divradio">
					<label>
						<input type="radio" name="radio" id="radio1" value="0">
						즉시 전송
					</label>
					<label>
						<input type="radio" name="radio" id="radio2" value="1">
						예약 전송
					</label>
				</div>
				<div class="pt-3"></div>
				<div style="height: 100px;">
					<input type='date' id='Date' style="margin-left: 40px;" />
					<input type='time' id='Time' style="margin-left: 30px;" />
				</div>
			</div>

		</div>
		<div class="col-sm-8">
			첨부파일
			<div style="height: 150px; border:1px solid black">
			<input type="file" style="float:right"/>
			<div class="pt-1"></div>
			<table class="table table-border">
				<thead>
					<tr>
						<th>파일명</th>
						<th>크기</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>테스트</td>
						<td>테스트</td>
					<tr>
				</tbody>
			</table>
			</div>
			<div class="pt-1"></div>
			<button type="button" class="btn btn-primary btn-lg float-right" id="sendBtn">메시지 전송</button>
		</div>
	</div>
	<div class="pt-2" id="aa"></div>
	<div class="pt-4"></div>
</div>
<div class="pt-3"></div>
