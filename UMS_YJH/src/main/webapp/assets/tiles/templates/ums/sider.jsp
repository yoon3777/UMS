<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div style="height:70px;">
<img src="/assets/images/mono.jpg" style="height:60px; width:190px; margin-top:5px; margin-left:10px; margin-right:10px;">
</div>
<!-- <h3 class="my-4 text-center" style="margin-top:0px !important;"><img/></h3> -->
<ul class="menu list-group">
	<li class="list-group-item">
		<a href="#">메시지 전송</a>
		<ul class="list-group" id="sub-menu">
			<li>
				<a href="/msgsend/sms">SMS/LMS</a>
			</li>
			<li>
				<a href="/msgsend/mms">MMS</a>
			</li>
			<li>
				<a href="/msgsend/fms">FMS</a>
			</li>
			<li>
				<a href="/msgsend/vms">VMS</a>
			</li>
		</ul>
	</li>
	<li class="list-group-item">
		<a href="#">전송 결과</a>
		<ul class="list-group" id="sub-menu">
			<li>
				<a href="/msgreport/report">결과 조회</a>
			</li>
		</ul>
	</li>
</ul>
