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
.container1_title_btn{
	width: 80px;
	height: 35px;
	float: right;
	background: #fff;
	border: 2px solid #e0e0e0;
	font-size: 15px;
	top: 20px;
}
.container1_title_btn:hover{
	background: #f9f9f9;
}
</style>

<meta charset="UTF-8">
<title>search_recipes</title>
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
				레시피
			</div>
			<ul class="menu_bottom">
				<li><a href=popular_recipes.jsp>인기 레시피</a></li>
				<li style="background: #49769d;"><a href=search_recipes.jsp style="color:#fff;">검색 페이지</a></li>
			</ul>
		</div>
		<div class="container1_content">
			<div class="container1_title">
				검색 페이지
				<button class="container1_title_btn" onclick="location.href='search_recipes_insert.jsp'">글쓰기</button>
			</div>
			<div style="margin-bottom:5px">
			<form action="search_recipes3.jsp" method="get">
				<select name = "tag">
				   <option value = "BD_TITLE" selected>제목</option>
				   <option value = "BD_ID">작성자</option>
				   <option value = "BD_INGRED">재료</option>
				</select>
				<input type="text" name="text" placeholder="검색어">
				<input type="submit" value="검색">
			</form>
			</div>
			<div class="container1_contents">
			<%
			for(int i=0; i<list.size();i++){
			%>
				<div class="recipes_box">
					<a href="search_recipes2.jsp?bd_no=<%=list.get(i).getBd_no()%>">
						<div class="img">
							<img alt="" src="<%= list.get(i).getBd_imge() %>" width="100%" height="100%">
						</div>
						<div class="title">
							<%=list.get(i).getBd_title() %>
						</div>
					</a>
					<div class="id">
						작성자 : <%=list.get(i).getBd_id() %>
					</div>
					<div class="views">
						조회수 : <%=list.get(i).getBd_views() %>회
					</div>
					<div>
					<span Style="font-size:15px">난이도<% for(int j=0; j< list.get(i).getBd_rank(); j++){ %>
					★
					<%} %></span>
					</div>
				</div>
			<%
			}
			%>
			</div>
			
		</div>
	</div>
</div>

</body>
</html>