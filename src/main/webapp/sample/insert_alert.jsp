<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>

<%@ page import="teamproject.BoardDto" %>
<%@ page import="teamproject.BoardDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		String bd_name=request.getParameter("bd_name");
		String bd_title=request.getParameter("bd_title");
		String bd_content=request.getParameter("bd_content");
		
		BoardDto dto=new BoardDto();
		dto.setBd_name(bd_name);
		dto.setBd_title(bd_title);
		dto.setBd_content(bd_content);
		
		BoardDao dao=new BoardDao();
		int res=dao.insert(dto);
		
		if(res>0){
	%>
	<script type="text/javascript">
		alert("글 등록 성공");
		location.href="main.jsp";
	</script>
	<%
		} else{
	%>
	<script type="text/javascript">
		alert("글 등록 실페");
		location.href="insert.jsp";
	</script>
	<%
		}
	%>
</body>
</html>