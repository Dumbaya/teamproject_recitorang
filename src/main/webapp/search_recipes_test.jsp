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
<link href="css/search.css" rel="stylesheet">
<link href="css/nav.css" rel="stylesheet">
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
.container1_title{
		border-bottom:0px solid white;
	}
</style>

<meta charset="UTF-8">
<title>search_recipes_test</title>
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
			<div class="container1_title" style="margin-bottom:100px;">
				검색 페이지
				<button class="container1_title_btn" onclick="location.href='insert.jsp'">글쓰기</button>
				<div class=search_div style="display:block;">
						<table width=100% cellspacing=0 cellpadding=0>
							<colgroup>
								<col width=100px>
								<col>
							</colgroup>
							<tbody>
								<tr>
									<th style="padding-top:10px;">
										<span>종류별</span>
										<span>재료별</span>
									</th>
									<td>
										<div class=rcp_cate>
											<div class=rcp_cate_list>
												<a href="" class=active>전체</a>
												<a href="">전체</a>
												<a href="">전체</a>
												<a href="">전체</a>
												<a href="">전체</a>
												<a href="">전체</a>
												<a href="">전체</a>
												<a href="">전체</a>
											</div>
											<div class=rcp_cate_list>
												<a href="" class=active>전체</a>
												<a href="">전체</a>
												<a href="">전체</a>
												<a href="">전체</a>
												<a href="">전체</a>
												<a href="">전체</a>
												<a href="">전체</a>
												<a href="">전체</a>
											</div>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
			</div>
			<div class="container1_contents">
			<%
			for(int i=0; i<list.size();i++){
			%>
				<div class="recipes_box">
					<a href="search_recipes2.jsp?bd_no=<%=list.get(i).getBd_no()%>">
						<div class="img">
							<img alt="이미지 없음" src="<%= list.get(i).getBd_imge() %>" width="100%" height="100%">
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
				</div>
			<%
			}
			%>
			</div>
			<nav class=text_center>
						<ul class=ul_num>
							<li class=li_num>
								<a href=>1</a>
							</li>
							<li class=li_num>
								<a href=>2</a>
							</li>
							<li class=li_num>
								<a href=>3</a>
							</li>
						</ul>			
			</nav>
		</div>
	</div>
</div>

</body>
</html>