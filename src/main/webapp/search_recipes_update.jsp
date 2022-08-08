<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" errorPage="errorpage.jsp"%>
    
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>

<%@ page import="teamproject.RecipesDto" %>
<%@ page import="teamproject.RecipesDao" %>
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

	.table_textarea{
		resize: none;
		width:800px;
		height:500px;
	}
	.table_input{
		width:700px;
	}
	.table_rank{
		width:100px;
	}
	.table_img{
		width:800px;
	}
	.table_ingred{
		width:680px;
	}
	
</style>

<meta charset="EUC-KR">
<title>search_recipes_update</title>
</head>
<%
	int bd_no =Integer.parseInt(request.getParameter("bd_no"));

	RecipesDao dao=new RecipesDao();
	RecipesDto dto=dao.selectOne(bd_no);
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
					수정
				</div>
				
				<form action="search_recipes_update2.jsp" method="get">
					<input type="hidden" name="bd_no" value="<%=dto.getBd_no() %>">
					<table calss="update_table" border="1px">
						<tr>
							<td><input class="table_input" placeholder="제목" type="text" name="bd_title" value="<%= dto.getBd_title() %>"><input class="table_rank" placeholder="난이도수" type="text" name="bd_rank" value="<%= dto.getBd_rank() %>"></td>
						</tr>
						<tr>
							<td><input class="table_img" placeholder="이미지 url" type="text" name="bd_img" value="<%= dto.getBd_imge() %>"></td>
						</tr>
						<tr>
							<td colspan="2"><textarea class="table_textarea" placeholder="내용" width="1000px" name="bd_content"><%= dto.getBd_content() %></textarea></td>
						</tr>
						<tr>
							<td colspan="3" align="right">
								<input type="text" class="table_ingred" name="bd_ingred" value="<%= dto.getBd_ingred() %>" placeholder="식재료 자유롭게 입력">
								<input type="submit" value="입력">
								<input type="button" value="취소" onclick="location.href='search_recipes.jsp'">
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>

</body>
</html>