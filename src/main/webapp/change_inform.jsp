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
	.inform{
		margin-top:50px;
	}
	.text {
        text-shadow: 0px 0px 3px rgba(117, 117, 117, 0.12);
        color: #5AD2FF;
        background:#F0F0F0;
        border:none;
        width:200px;
        text-decoration: none;
    }
</style>
<meta charset="UTF-8">
<title>Change inform</title>
</head>
<body>

<%
	if(session.getAttribute("id")==null){
%>
	<script type="text/javascript">
		alert("로그인 후 이용가능합니다.");
		location.href="homepage.jsp";
	</script>
<%}
%>

<div id="headers"></div>

<div class="sub_body">
	<div class="container1">
		<div class="container1_menu">
			<div class="container1_menu_top">
				정보수정
			</div>
			<ul class="menu_bottom">
				<li style="background: #49769d;"><a href=change_inform.jsp style="color: #fff;">정보수정</a></li>
				<li><a href=post_manage.jsp>내 게시물 관리</a></li>
			</ul>
		</div>
		<div class="container1_content">
			<div class="container1_title">
				정보수정
			</div>
			<div class="container1_contents" align=center>
				<img src=image/ready.png width=1000px height=500px>
			</div>
		</div>
	</div>
</div>
</body>
</html>