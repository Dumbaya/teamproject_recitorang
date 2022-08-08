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
<style>
.container1_title_btn{
	width: 80px;
	height: 35px;
	float: right;
	background: #fff;
	border: 2px solid #e0e0e0;
	font-size: 15px;
	top: 20px;
}
.container1_contents>table{
	width:100%;
	border:1px solid #552323;
	border-right:1px solid #552323;
	text-align:center;
	font-size:18px;
}
.fb_no{
	width:10%;
}
.fb_un{
	width:10%;
}
.fb_title{
	width:60%;
}
.fb_da{
	width:10%;
}
.fb_vi{
	width:10%;
}
</style>
<meta charset="UTF-8">
<title>Free board</title>
</head>
<body>
<div id="headers"></div>

<div class="sub_body">
	<div class="container1">
		<div class="container1_menu">
			<div class="container1_menu_top">
				게시판
			</div>
			<ul class="menu_bottom">
				<li style="background: #49769d;"><a href=free_board.jsp style="color:#fff;">자유 게시판</a></li>
			</ul>
		</div>
		<div class="container1_content">
			<div class="container1_title">
				자유게시판
				<button class="container1_title_btn" onclick="location.href=''">글쓰기</button>
			</div>
			<div class="container1_contents">
				<img src=image/ready.png width=1000px height=500px>
			</div>
		</div>
	</div>
</div>

</body>
</html>