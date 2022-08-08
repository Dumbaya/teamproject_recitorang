<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="errorpage.jsp"%>
<!DOCTYPE html>
<html>
<head>

<!-- 아래 두 스크립트는 헤더 추가 코드 -->
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript">   
$(document).ready( function() {

$("#headers").load("headers.jsp");  // 원하는 파일 경로를 삽입하면 된다

});
</script>
<link href="css/sub_body.css" rel="stylesheet">

<meta charset="UTF-8">
<title>Notice service</title>
</head>
<body>
<div id="headers"></div>

<div class="sub_body">
	<div class="container1">
		<div class="container1_menu">
			<div class="container1_menu_top">
				서비스
			</div>
			<ul class="menu_bottom">
				<li style="background: #49769d;"><a href=notice_service.jsp style="color:#fff;">공지사항</a></li>
				<li><a href=faq_service.jsp>FAQ</a></li>
				<li><a href=qa_service.jsp>Q&A</a></li>
				<li><a href=update_service.jsp>정보갱신문의</a></li>
			</ul>
		</div>
		<div class="container1_content">
			<div class="container1_title">
				공지사항
			</div>
			<div class="container1_contents">
				<pre>나만의 레시피를 올릴수 있는 레시토랑입니다.
로그인 후 자신의 레시피를 공유해보세요!</pre>
			</div>
		</div>
	</div>
</div>

</body>
</html>