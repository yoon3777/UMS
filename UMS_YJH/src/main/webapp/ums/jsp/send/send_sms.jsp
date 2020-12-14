<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
#con {
	border: 1px solid black;
}

.card {
	text-align: center;
}

#tblBackground {
	/*화면에 보여야 할 Table의 가로크기를 잡아줍니다.*/
	width: 100%;
	table-layout: fixed;
}

#divHeadScroll {
	/* 안의 내용이 790보다 길게 적용이 되므로 overflow-x, overflow-y를 hidden을 걸어줘서 설정한 가로너비만큼만 화면에 보이도록 잡아줍니다.*/
	width: 100%;
	overflow-x: hidden;
	overflow-y: hidden;
	border-top: 2px solid #d0d0d0;
}

#tblHead {
	/*Table의 필드명의 너비를 여기에서 지정합니다. 
	필드명을 보여줄 테이블은 body보다 하나의 td를 더 가지며 마지막 td는 아무것도 입력하지 않고 크기만 잡아줍니다.
	 이렇게 하는 이유는 데이터를 보여주는 테이블은 세로 스크롤의 가로두께만큼 더 이동하기 때문입니다.*/
	table-layout: fixed;
	background-color: #efefef;
	padding-top: 4px;
	width: 1117px;
	height: 30px;
}

#divBodyScroll {
	/*overflow-x, overflow-y는 scroll로 지정하고,
	height는 테이블의 데이터가 나올 기본 크기를 잡아줍니다.
	세로길이를 잡아주지 않으면 overflow-y가 걸리지 않습니다.*/
	width: 100%;
	height: 230px;
	overflow-x: scroll;
	overflow-y: scroll;
	border-top: 1px solid #d0d0d0;
}

#tblBody {
	/*tblBody의 데이터는 필요한 열의 수만큼만 만드시고 헤더와 col의 width는 동일해야 합니다.*/
	width: 100%;
	table-layout: fixed;
	height: 30px;
}

/* 테이블 스타일용 */
.title {
	text-align: center;
	font-weight: bold;
	white-space: nowrap;
	text-overflow: ellipsis;
	padding: 10px 10px 10px 10px;
}

.content {
	border-bottom: 1px solid #efefef;
	padding: 10px 10px 10px 10px;
	text-align: center;
	white-space: nowrap;
	text-overflow: ellipsis;
	overflow: hidden;
}

#divradio {
	text-align: center;
}

input[name=radio] {
	margin-left: 10px;
}

#textarea {
	height: 150px;
}
#sendBtn {
width: 300px;
}
</style>
<script>
	$(document).ready(function() {
		var index = 1;

		$('#addBtn').on("click", function() {

			var rowItem = "<tr>"
			rowItem += "<td class='content right_Border'>" + index + "</td>"
			rowItem += "<td class='content right_border'>" + $('#dest_name').val() + "</td>"
			rowItem += "<td class='content right_border'>" + $('#dest_num').val() + "</td>"
			rowItem += "<td class='content right_border'>" + $('#var1').val() + "</td>"
			rowItem += "<td class='content right_border'>" + $('#var2').val() + "</td>"
			rowItem += "<td class='content right_border'>" + $('#var3').val() + "</td>"
			rowItem += "<td class='content right_border'>" + $('#var4').val() + "</td>"
			rowItem += "</tr>"
			$('#tblBody').append(rowItem);

			index++;
		});

		$('#delBtn').on("click", function() {
			$('#tblBody tr').last().remove();
			index--;
		});
		
		var hypenPhone = function(str){
			str = str.replace(/[^0-9]/g,'');
			var tmp='';
			if(str.length < 4){
				return str;
			}else if(str.length < 7){
				tmp += str.substr(0,3);
				tmp += '-';
				tmp += str.substr(3);
				return tmp;
			}else if(str.length < 11){
				tmp += str.substr(0,3);
				tmp += '-';
				tmp += str.substr(3,3);
				tmp += '-';
				tmp += str.substr(6);
				return tmp;
			}else {
				tmp += str.substr(0,3);
				tmp += '-';
				tmp += str.substr(3,4);
				tmp += '-';
				tmp += str.substr(7);
				return tmp;
			}
			return str;
		}
		
		var destNum = document.getElementById('dest_num');
		var departNum = document.getElementById('depart_num');
		
		destNum.onkeyup = function(){
			this.value = hypenPhone(this.value);
		}
		departNum.onkeyup = function(){
			this.value = hypenPhone(this.value);
		}

	

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

								<tr>
									<td class="content">1</td>
									<td class="content">윤제현</td>
									<td class="content">010-2078-7856</td>
									<td class="content">헬로월드</td>
									<td class="content">헬로월드</td>
									<td class="content">헬로월드</td>
									<td class="content">헬로월드</td>
								</tr>

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
			<div class="pt-2" style="border: 1px solid black; height: 150px;">
				<div id="divradio">
					<label>
						<input type="radio" name="radio" id="radio1">
						즉시 전송
					</label>
					<label>
						<input type="radio" name="radio" id="radio2">
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
	<div class="pt-3"></div>
</div>
<div class="pt-3"></div>
