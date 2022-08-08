<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" errorPage="errorpage.jsp"%>
    
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>

<%@ page import="teamproject.RecipesDto" %>
<%@ page import="teamproject.RecipesDao" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.Date" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
		int bd_no=1;
		String bd_title=request.getParameter("bd_title");
		int bd_rank=Integer.parseInt(request.getParameter("bd_rank"));
		String bd_img=request.getParameter("bd_img");
		String bd_content=request.getParameter("bd_content");
		String bd_ingred=request.getParameter("bd_ingred");
		String bd_id=(String)session.getAttribute("id");
		String bd_pw=(String)session.getAttribute("pw");

		int bd_views=0;
		
		RecipesDto dto=new RecipesDto();

		dto.setBd_title(bd_title);
		dto.setBd_rank(bd_rank);
		dto.setBd_content(bd_content);
		dto.setBd_id(bd_id);
		dto.setBd_pw(bd_pw);
		dto.setBd_imge(bd_img);
		dto.setBd_views(bd_views);
		dto.setBd_ingred(bd_ingred);
		
		RecipesDao dao=new RecipesDao();
		int res=dao.insert(dto);
		
		if(res>0){
	%>
	<script type="text/javascript">
		alert("글 등록 성공");
		location.href="search_recipes.jsp";
	</script>
	<%
		} else{
	%>
	<script type="text/javascript">
		alert("글 등록 실패");
		location.href="search_recipes_insert.jsp";
	</script>
	<%
		}
	%>
</body>
</html>