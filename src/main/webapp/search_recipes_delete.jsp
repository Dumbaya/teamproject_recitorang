<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" errorPage="errorpage.jsp"%>
    
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>

<%@ page import="teamproject.RecipesDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>search_recipes_delete</title>
</head>
<body>
	<%
	int bd_no=Integer.parseInt(request.getParameter("bd_no"));
	
	RecipesDao dao=new RecipesDao();
	int res = dao.delete(bd_no);
	if(res>0){
	%>
	<script type="text/javascript">
		alert("글 삭제 성공");
		location.href="search_recipes.jsp";
	</script>
	<%
	}else{
	%>
	<script type="text/javascript">
		alert("글 삭제 실패");
		location.href="search_recipes.jsp";
	</script>
	<%
	}
	%>
</body>
</html>