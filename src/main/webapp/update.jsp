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
		int bd_no =Integer.parseInt(request.getParameter("bd_no"));
	
		BoardDao dao=new BoardDao();
		BoardDto dto=dao.selectOne(bd_no);
	%>
	
	<form action="update_alert.jsp" method="post">
		<input type="hidden" name="bd_no" value="<%=dto.getBd_no() %>">
		<table border="1">
			<tr>
				<th>NAME</th>
				<td><%=dto.getBd_name() %></td>
			</tr>
			<tr>
				<th>TITLE</th>
				<td><input type="text" name="bd_title" value="<%=dto.getBd_title() %>"></td>
			</tr>
			<tr>
				<th>CONTENT</th>
				<td><textarea rows="10" cols="60" name="bd_content"><%=dto.getBd_content() %></textarea></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="수정">
				</td>
			</tr>
		</talbe>
	</form>
</body>
</html>