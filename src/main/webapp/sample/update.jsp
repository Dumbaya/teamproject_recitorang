<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>

<%@ page import="teamproject.BoardDto" %>
<%@ page import="teamproject.BoardDao" %>
<!DOCTYPE html>
<html>
<head>
<style>
body{
		background:#B0C4DE;
	}
	table{
		margin-top:20px;
		background:#FFFFFF;
	}
	.insert_div{
		background-color: #FFFFFF;
        width: 600px;
        height: 300px;
        margin: 7em auto;
        border-radius: 1.5em;
        border: 2px solid #5AE0FF;
        box-shadow: 0px 11px 35px 2px rgba(0, 0, 0, 0.14);
	}
	th{
		background:	#008B8B;
	}
</style>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div class=insert_div>
	<%
		int bd_no =Integer.parseInt(request.getParameter("bd_no"));
	
		BoardDao dao=new BoardDao();
		BoardDto dto=dao.selectOne(bd_no);
	%>
	
	<form action="update_alert.jsp" method="post" align=center>
		<input type="hidden" name="bd_no" value="<%=dto.getBd_no() %>">
		<table border="1" align=center>
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
</div>
</body>
</html>