<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" errorPage="errorpage.jsp"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>

<%@ page import="teamproject.RecipesDto" %>
<%@ page import="teamproject.RecipesDao" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>

<body>
	<%
		int bd_no=Integer.parseInt(request.getParameter("bd_no"));
		String bd_title=request.getParameter("bd_title");
		int bd_rank=Integer.parseInt(request.getParameter("bd_rank"));
		String bd_content=request.getParameter("bd_content");
		String bd_img=request.getParameter("bd_img");
		String bd_ingred=request.getParameter("bd_ingred");

		
		
		RecipesDto dto=new RecipesDto(bd_no, bd_title, bd_content, bd_img, bd_ingred, bd_rank);
		
		RecipesDao dao=new RecipesDao();
		int res=dao.update(dto);
		
		if(res>0){
	%>
	<script type="text/javascript">
		alert("글 수정 성공");
		location.href="search_recipes2.jsp?bd_no=<%=dto.getBd_no()%>";
	</script>
	<%
		}else{
	%>
	<script type="text/javascript">
		alert("글 수정 실패");
		location.href= "search_recipes_update.jsp?bd_no=<%=dto.getBd_no()%>";
	</script>
	<%
		}
	%>
</body>
</html>