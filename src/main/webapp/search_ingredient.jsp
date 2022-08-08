<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="errorpage.jsp"%>
    <%@ page import="teamproject.RecipesDao" %>
<%@ page import="teamproject.RecipesDto" %>
<%@ page import="java.util.List" %>
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
<link href="css/search.css" rel="stylesheet">
<link href="css/ingredient_box.css" rel="stylesheet">
<meta charset="UTF-8">
<title>search_ingredient</title>
<style>
.container1_contents{
	display: grid;
	grid-template-columns: repeat(auto-fill, minmax(25%, auto));
}
</style>
</head>
<%
	RecipesDao dao = new RecipesDao();
	List<RecipesDto> list=dao.selectAll();
%>
<body>
<div id="headers"></div>

<div class="sub_body">
	<div class="container1">
		<div class="container1_menu">
			<div class="container1_menu_top">
				식재료
			</div>
			<ul class="menu_bottom">
				<li style="background: #49769d;"><a href=search_ingredient.jsp style="color:#fff;">검색 페이지</a></li>
			</ul>
		</div>
		<div class="container1_content">
			<div class="container1_title">
				검색 페이지
			</div>
			<div class="container1_contents">
				<img src=image/ready.png width=1000px height=500px>
			</div>
		</div>
	</div>
</div>

</body>
</html>