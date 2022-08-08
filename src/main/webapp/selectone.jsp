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
		int bd_no=Integer.parseInt(request.getParameter("bd_no"));
		BoardDao dao= new BoardDao();
		BoardDto dto= dao.selectOne(bd_no);
	%>
	<table border="1">
		<tr>
			<th>NAME:</th>
			<td><%=dto.getBd_name() %></td>
		</tr>
		<tr>
			<th>TITLE</th>
			<td><%=dto.getBd_title() %></td>
		</tr>
		<tr>
			<th>CONNECT</th>
			<td><textarea rows="10" cols="60" readonly="readonly"><%=dto.getBd_content() %></textarea></td>
		</tr>
		<tr>
			<td colspan="2">
				<button>수정</button>&nbsp;&nbsp;
				<button>삭제</button>&nbsp;&nbsp;
				<button onclick="location.href='main.jsp'">목록</button>&nbsp;&nbsp;
			</td>
		</tr>
		
	</table>


</body>
</html>