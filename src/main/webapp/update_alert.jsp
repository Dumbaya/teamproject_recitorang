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
		String bd_title=request.getParameter("bd_title");
		String bd_content=request.getParameter("bd_content");
		
		BoardDto dto=new BoardDto(bd_no, bd_title, bd_content);
		
		BoardDao dao=new BoardDao();
		int res=dao.update(dto);
		
		if(res>0){
	%>
	<script type="text/javascript">
		alert("글 수정 성공");
		location.href="selectone.jsp?bd_no=<%=dto.getBd_no()%>";
	</script>
	<%
		}else{
	%>
	<script type="text/javascript">
		alert("글 수정 실패");
		location.href="update.jsp?bd_no=<%=dto.getBd_no()%>";
	</script>
	<%
		}
	%>
</body>
</html>