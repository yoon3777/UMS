<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="pt-3"></div>
<div class="container-fluid" id="con">
	<div class="row pt-3" style="height:100px;">
		<div class="col-sm-5 center-block">
			<input type="date" id="startDate">
			~
			<input type="date" id="endDate">
		</div>
		<div class="col-sm-7">
			<input type="text" class="form-control col-sm-7">
			<button type="button" class="btn btn-primary">검색</button>
		</div>
	</div>

	<div class="row">
		<div class="col-sm-12 pt-5 table-responsive">
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
									<col style="width: 100px;" />
									<col style="width: 100px;" />
									<col style="width: 100px;" />
									<col style="width: 10px;" />
								</colgroup>
								<tr>
									<td>번호</td>
									<td>제목</td>
									<td>요청 일시</td>
									<td>전송 일시</td>
									<td>발신 번호</td>
									<td>전송 타입</td>
									<td>전송 상태</td>
									<td>총 건수</td>
									<td>성공 건수</td>
									<td>실패 건수</td>
								</tr>
							</table>
						</div>
						<div id="dbodyscroll">
							<table id="tBody">

								<tr>
									<td class="cont">1</td>
									<td class="cont">TEST</td>
									<td class="cont">2020-12-12</td>
									<td class="cont">2020-12-12</td>
									<td class="cont">010-2078-7856</td>
									<td class="cont">MMS</td>
									<td class="cont">전송 실패</td>
									<td class="cont">100</td>
									<td class="cont">99</td>
									<td class="cont">1</td>
								</tr>


							</table>
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>
	<div class="pt-5"></div>
</div>
<div class="pt-3"></div>