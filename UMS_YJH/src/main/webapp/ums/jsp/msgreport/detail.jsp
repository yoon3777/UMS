<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="pt-3"></div>
<div class="container-fluid" id="con">
	<div class="pt-3"></div>
	<div class="row col-sm-12">
		<div class="col-sm-4">
			제목
			<input type="text" class="form-control">
			<div class="pt-3"></div>
			<textarea class="form-control" placeholder="fdsa" style="height: 170px;"></textarea>
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
			<table id="tBack" cellspacing="0">
				<tr>
					<td>
						<div id="dheadscroll">
							<table id="tHead">
								<colgroup>
									<col style="width: 100px;" />
									<col style="width: 100px;" />
									<col style="width: 100px;" />
									<col style="width: 100px;" />
									<col style="width: 100px;" />
									<col style="width: 100px;" />
									<col style="width: 100px;" />
									<col style="width: 10px;" />
								</colgroup>
								<tr>
									<td>번호</td>
									<td>이름</td>
									<td>수신 번호</td>
									<td>요청 일시</td>
									<td>전송 일시</td>
									<td>전송 상태</td>
									<td>실패 사유</td>
								</tr>
							</table>
						</div>
						<div id="dbodyscroll">
							<table id="tBody">

								<tr>
									<td class="cont">1</td>
									<td class="cont">윤제현</td>
									<td class="cont">010-2078-7856</td>
									<td class="cont">2020-12-12</td>
									<td class="cont">헬로월드</td>
									<td class="cont">전송 완료</td>
									<td class="cont">네트워크 연결 X</td>
								</tr>


							</table>
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>
</div>
<div class="pt-3"></div>