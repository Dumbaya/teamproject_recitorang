<%@page import="teamproject.LoginDB"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	session.invalidate();
	out.println("<script>");
	out.println("alert('로그아웃되었습니다.')");
	out.println("location.href='../homepage.jsp'");
	out.println("</script>");
%>
</body>
</html>

