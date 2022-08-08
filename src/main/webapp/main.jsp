<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>

<%@ page import="teamproject.BoardDto" %>
<%@ page import="teamproject.BoardDao" %>
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
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<%
	BoardDao dao = new BoardDao();
	List<BoardDto> list=dao.selectAll();
%>
<body>
<div id="headers"></div>
	<h1>게시판 목록</h1>
	<table border="1">
		<col width="50px">
		<col width="100px">
		<col width="200px">
		<col width="100px">
		<tr>
			<th>No</th>
			<th>Name</th>
			<th>Title</th>
			<th>Date</th>
			<th>update</th>
			<th>delete</th>
		</tr>
		<%
		for(int i=0; i<list.size();i++){
		%>
		<tr>
			<td><%=list.get(i).getBd_no() %></td>
			<td><%=list.get(i).getBd_name() %></td>
			<td><a href="selectone.jsp?bd_no=<%=list.get(i).getBd_no()%>"><%=list.get(i).getBd_title() %></a></td>
			<td><%=list.get(i).getBd_date() %></td>
			<td><a href="update.jsp?bd_no=<%=list.get(i).getBd_no()%>">수정</a></td>
			<td><a href="delete.jsp?bd_no=<%=list.get(i).getBd_no()%>">삭제</a></td>
		</tr>
		<%
		}
		%>
		<tr>
			<td colspan="6" align="right">
				<button onclick="location.href='insert.jsp'">글쓰기</button>
			</td>
		</tr>
		
	</table>
</body>
</html>