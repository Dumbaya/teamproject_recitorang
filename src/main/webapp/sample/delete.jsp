<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>

<%@ page import="teamproject.BoardDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		int bd_no=Integer.parseInt(request.getParameter("bd_no"));
		
		BoardDao dao=new BoardDao();
		int res = dao.delete(bd_no);
		if(res>0){
	%>
	<script type="text/javascript">
		alert("글 삭제 성공");
		location.href="main.jsp";
	</script>
	<%
		}else{
	%>
	<script type="text/javascript">
		alert("글 삭제 실패");
		location.href="main.jsp";
	</script>
	<%
		}
	%>
</body>
</html>