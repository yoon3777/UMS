<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
#one {
	border: 1px solid black;
}

#two {
	border: 1px solid black;
}
.form {
	float:left;
}
</style>
<div class="pt-3"></div>
<div class="container">
	<form class="form" name="f" method="post">
		<div class="col-sm-12 pt-1">
			<div class="card">
				발신번호
					<input type="text" name="admin_id" class="form-control" value="">
			</div>
			<div class="pt-3"></div>
		</div>
	</form>
</div>

<!-- ************************************************** -->
<!-- <div class="container">
    <form name="f" method="post">
 
        <div class="col-sm-12 pt-3">
            <div class="card">
                <div class="card-header card-header-primary">
                    <h4 class="card-title"><i class="fas fa-square"></i> 관리자 환경설정</h4>
                    <p class="card-catagory"></p>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table">
                            <tbody>
                            <tr style="line-height:32px;">
                                <td>관리자 ID</td>
                                <td>
                                    <input type="text" name="admin_id" class="form-control" value="" readonly>
                                </td>
                                <td>관리자 이름</td>
                                <td>
                                    <input type="text" name="admin_name" class="form-control" value="">
                                </td>                        
                            </tr>
                            <tr>
                                <td>관리자 비밀번호</td>
                                <td>
                                    <input type="password" name="admin_passwd1" class="form-control" maxlength="10" value="">                                    
                                </td>
                                <td>관리자 비밀번호 확인</td>
                                <td>
                                    <input type="password" name="admin_passwd2" class="form-control" maxlength="10" value="">                                    
                                </td>
                            </tr>  
                            <tr>
                                <td>전화번호</td>
                                <td>
                                    <input type="tel" name="tel" class="form-control" value="">
                                </td>
                                <td>팩스</td>
                                <td>
                                    <input type="tel" name="fax" class="form-control" value="">
                                </td>
                            </tr>
                            <tr>
                                <td>우편번호</td>
                                <td>
                                    <input type="text" name="post1" id="post1" size="5" class="form-control" readonly value="" style="display:inline-block;width:100px;"> 
                                    <i class="fas fa-search" onclick="sample6_execDaumPostcode()" style="cursor:pointer;font-size:24px;"></i>
                                </td>
                                <td>HP</td>
                                <td><input type="tel" name="hp" class="form-control" value=""></td>
                            </tr>
                            <tr>
                                <td>주소</td>
                                <td colspan="3">
                                    <input type="text" name="address1" id="address1" class="form-control mb-3" value="">
                                    <input type="text" name="address2" id="address2" class="form-control" value="">
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
 
            <div class="pt-3"></div>
 
            <div class="card">
                <div class="card-header"><i class="fas fa-square"></i> GPS 거리 설정</div>
                <div class="card-body">
                    <table class="table">
                        <tbody>
                            <tr style="line-height:32px;">
                                <td>기본 변경값</td>
                                <td>
                                    <input type="text" name="gps_radius" class="form-control text-right" maxlength="3" size="3" value="" style="display:inline-block;width:100px;"> Km
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
 
        </div>
        
    </form>
 
    <div class="text-center mt-3">
        <button type="button" class="btn btn-success">변경하기</button>
        <button type="button" class="btn btn-info">다시쓰기</button>
    </div>
</div> -->