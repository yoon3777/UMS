<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
								<c:forEach items="${dest_list}" var="list" varStatus="i">
									<tr>
										<td class="content">
											<c:out value="${list.dest_seq}"></c:out>
										</td>
										<td class="content">
											<c:out value="${list.dest_name}"></c:out>
										</td>
										<td class="content">
											<c:out value="${list.dest_num}"></c:out>
										</td>
										<td class="content">
											<c:out value="${list.var1}"></c:out>
										</td>
										<td class="content">
											<c:out value="${list.var2}"></c:out>
										</td>
										<td class="content">
											<c:out value="${list.var3}"></c:out>
										</td>
										<td class="content">
											<c:out value="${list.var4}"></c:out>
										</td>
									</tr>
								</c:forEach>
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
		<div class="col-sm-8 pt-4">
			<textarea class="form-control" id="textarea" placeholder="문자 내용을 입력해주세요. (90Bytes 초과시 LMS로 전환)"></textarea>
			<div class="pt-1"></div>
			<button type="button" class="btn btn-primary btn-lg float-right" id="sendBtn">메시지 전송</button>
		</div>
	</div>
	<div class="pt-4"></div>
</div>
<div class="pt-3"></div>
<script>
	$(document).ready(function() {
		$('#addBtn').on("click", function() {
			var data = {
				dest_name : $('#dest_name').val(),
				dest_num : $('#dest_num').val(),
				var1 : $('#var1').val(),
				var2 : $('#var2').val(),
				var3 : $('#var3').val(),
				var4 : $('#var4').val()
			};
			
			console.log(data);
			
			$.ajax({
				data : data,
				type : 'post',
				dataType : 'text',
				url : 'insertDest',
				success : function(data) {
					alert('추가');
				},
				error : function(request, status, error) {
					/* alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error); */
					alert("실패");
				}
			});
		});
		/* $('#sendBtn').on("click", function(){
			$("input[name=radio]:checked").val()
			
		}); */
	})
</script>