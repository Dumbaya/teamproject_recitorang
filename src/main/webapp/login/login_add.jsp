<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="teamproject.*" %>
<!DOCTYPE html>
<jsp:useBean id="login" class="teamproject.Logindata"/>
<jsp:setProperty name="login" property="*"/>
<jsp:useBean id="ld" class="teamproject.LogindataManager" scope="application"/>
<%
	ld.add(login);
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	아이디<jsp:getProperty property="username" name="login"/><p>
	비밀번호<%=login.getPassword() %>
	<a href=login_list.jsp>목록보기</a>
</body>
</html>