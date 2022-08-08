<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" errorPage="errorpage.jsp"%>
    
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>

<%@ page import="teamproject.RecipesDto" %>
<%@ page import="teamproject.RecipesDao" %>
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
.container1_title > button{
	float: right;
	width: 80px;
	height: 35px;
	background: #fff;
	border: 2px solid #e0e0e0;
	font-size: 15px;
	top: 20px;
}

.container1_title > button:hover{
	background: #f9f9f9;
}
.container1_contents > pre, container1_tag > pre{
	font-family: '맑은 고딕', 'Malgun Gothic', 'NotoSans', '돋움', 'Dotum', '굴림', 'Gulim', AppleGothic, UnDotum, Arial, Tahoma, Verdana, sans-serif;
    font-size: 20px;

}
</style>




<meta charset="EUC-KR">
<title>search_recipes2</title>
</head>
<%
	RecipesDao dao = new RecipesDao();
	List<RecipesDto> list=dao.selectAll();
%>
<body>
	<div id="headers"></div>
	<%
		int bd_no=Integer.parseInt(request.getParameter("bd_no"));
		RecipesDao dao1= new RecipesDao();
		RecipesDto dto= dao1.selectOne(bd_no);
		dao.RecipesViewsUp(bd_no);
	%>
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
					<%=dto.getBd_title() %>
					<% if(dto.getBd_id().equals(session.getAttribute("id"))){%>
					<button class="container1_title_btn_delete" onclick="location.href='search_recipes_delete.jsp?bd_no=<%=Integer.parseInt(request.getParameter("bd_no"))%>'">삭제</button>
					<button class="container1_title_btn_update" onclick="location.href='search_recipes_update.jsp?bd_no=<%=Integer.parseInt(request.getParameter("bd_no"))%>'">수정</button>
					<%} %>
				</div>
				<div class="container1_contents">
					<img src="<%=dto.getBd_imge() %>" alt="이미지 없음">
					<p Style="font-size: 30px;">
					난이도 : <% for(int i=0; i<dto.getBd_rank(); i++){ %>
					★
					<%} %>
					</p>
					<h2>조리법</h1>
					<pre><%=dto.getBd_content() %></pre>
				</div>
				<div class="container1_tag">
					<pre><%=dto.getBd_ingred() %></pre>
				</div>
			</div>
		</div>
	</div>

</body>
</html>