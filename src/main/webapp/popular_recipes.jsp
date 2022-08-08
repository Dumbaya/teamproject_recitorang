<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="errorpage.jsp"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>

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
<link href="css/recipes_box.css" rel="stylesheet">
<style>
.container1_contents{
	display: grid;
	grid-template-columns: repeat(auto-fill, minmax(25%, auto));
}
</style>
<meta charset="UTF-8">
<title>popular_recipes</title>

<body>
<div id="headers"></div>
<div class="sub_body">
	<div class="container1">
		<div class="container1_menu">
			<div class="container1_menu_top">
				레시피
			</div>
			<ul class="menu_bottom">
				<li style="background: #49769d;"><a href=popular_recipes.jsp style="color:#fff;">인기 레시피</a></li>
				<li><a href="search_recipes.jsp">검색 페이지</a></li>
			</ul>
		</div>
		<div class="container1_content">
			<div class="container1_title">
				인기레시피
			</div>
			<div class="container1_contents">
				<div class="recipes_box">
					<a href="">
						<div class="img">
							<img alt="" src="" width="100%" height="100%">
						</div>
						<div class="title">
						</div>
					</a>
					<div class="id">
					</div>
					<div class="views">
					</div>
					<span></span>
				</div>
				<div class="recipes_box">
					<a href="">
						<div class="img">
							<img alt="" src="" width="100%" height="100%">
						</div>
						<div class="title">
						</div>
					</a>
					<div class="id">
					</div>
					<div class="views">
					</div>
					<span></span>
				</div>
				<div class="recipes_box">
					<a href="">
						<div class="img">
							<img alt="" src="" width="100%" height="100%">
						</div>
						<div class="title">
						</div>
					</a>
					<div class="id">
					</div>
					<div class="views">
					</div>
					<span></span>
				</div>
			</div>
		</div>
	</div>
</div>

</body>
</html>