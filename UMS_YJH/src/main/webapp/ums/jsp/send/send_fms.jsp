<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
									<!-- <td class="content">1</td>
									<td class="content">윤제현</td>
									<td class="content">010-2078-7856</td>
									<td class="content">헬로월드</td>
									<td class="content">헬로월드</td>
									<td class="content">헬로월드</td>
									<td class="content">헬로월드</td> -->
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
			<div class="pt-1"></div>
			<button type="button" class="btn btn-primary btn-lg float-right" id="sendBtn">메시지 전송</button>
		</div>
	</div>
	<div class="pt-4"></div>
</div>
<div class="pt-3"></div>
