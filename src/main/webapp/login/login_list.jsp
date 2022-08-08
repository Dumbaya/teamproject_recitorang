<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="teamproject.*"%>
<jsp:useBean id="ld" class="teamproject.LogindataManager" scope="application"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href=login_add.jsp>추가</a>
	<table>
		<%
			for(Logindata ll : ld.getLoginList()){
		%>
			<tr>
				<td><%=ll.getUsername() %></td>
				<td><%=ll.getPassword() %></td>
			</tr>
		<%
			}
		%>
	</table>
</body>
</html>