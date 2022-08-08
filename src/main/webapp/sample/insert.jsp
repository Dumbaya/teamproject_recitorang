<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<style>
	body{
		background:#B0C4DE;
	}
	table{
		background:#FFFFFF;
	}
	.insert_div{
		background-color: #FFFFFF;
        width: 600px;
        height: 450px;
        margin: 7em auto;
        border-radius: 1.5em;
        border: 2px solid #5AE0FF;
        box-shadow: 0px 11px 35px 2px rgba(0, 0, 0, 0.14);
	}
	th{
		background:	#008B8B;
	}
</style>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div class=insert_div align=center>
		<h1>글쓰기</h1>
		<form action="insert_alert.jsp" method="get" align=center>
			<table border="1" align=center>
				<tr>
					<th>NAME</th>
					<td><input type="text" name="bd_name"></td>
				</tr>
				<tr>
					<th>TITLE</th>
					<td><input type="text" name="bd_title"></td>
				</tr>
				<tr>
					<th>CONTENT</th>
					<td><textarea rows="10" cols="60" name="bd_content"></textarea></td>
				</tr>
				<tr>
					<td colspan="2" align="right">
						<input type="submit" value="입력">
						<input type="button" value="취소" onclick="location.href='main.jsp'">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>