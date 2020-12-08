<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script>
$(document).on('mouseover', '.topMenu span', function() {
    $('.dept01').slideDown(300);
});
$(document).on('mouseover', 'div', function () {
    if (!$(this).hasClass('topMenu')) {
        $('.dept01').slideUp(300);
    }
});

</script>
<style>
* {margin: 0; padding: 0; }
li {list-style: none; }
body {font-family: 'Nanum Gothic', sans-serif; width: 1200px; margin: 0 auto; }
            
.topMenu {width: 100%; margin-bottom: 20px; text-align: center; height: 40px; }
.topMenu:after {content: ""; display: block; clear: both; }
.menu01>li {float: left; width: 20%; line-height: 40px; }
.menu01 span {font-size: 20px; font-weight: bold; }
            
.dept01 {display: none; padding: 20px 0; border-bottom: 1px solid #ccc; }
            
#nop {float: none; }
            
.none:after {content: ""; display: block; clear: both; }

</style>
<div class="topMenu">
	<ul class="menu01">
		<li>
			<span>UMS</span>
		</li>
		<li>
			<span>메시지 전송</span>
			<ul class="dept01">
				<li id="nop">SMS/LMS</li>
				<li id="nop">MMS</li>
				<li id="nop">VMS</li>
				<li id="nop">FMS</li>
			</ul>
		</li>
		<li>
			<span>전송결과 조회</span>
			<ul class="dept01">
				<li id="nop">세부조회</li>
			</ul>
		</li>
	</ul>
</div>
<div class="none"></div>
