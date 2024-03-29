<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8" errorPage="errorpage.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/style.css">
<link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
<meta charset="UTF-8">
<title>Password change</title>
<style>
 body {
        background-color: #DCDCDC;
        font-family: 'Ubuntu', sans-serif;
    }
    
    .main {
        background-color: #FFFFFF;
        width: 450px;
        height: 350px;
        margin: 7em auto;
        border-radius: 1.5em;
        box-shadow: 0px 11px 35px 2px rgba(0, 0, 0, 0.14);
    }
    
    .sign {
        padding-top: 40px;
        color: #3232FF;
        font-family: 'Ubuntu', sans-serif;
        font-weight: bold;
        font-size: 23px;
    }
    
    form.form1 {
        padding-top: 40px;
    }
    
    .tel {
        width: 76%;
	    color: rgb(38, 50, 56);
	    font-weight: 700;
	    font-size: 14px;
	    letter-spacing: 1px;
	    background: rgba(136, 126, 126, 0.04);
	    padding: 10px 20px;
	    padding-top:20px;
	    border: none;
	    border-radius: 20px;
	    outline: none;
	    box-sizing: border-box;
	    border: 2px solid rgba(0, 0, 0, 0.02);
	    text-align: center;
	    font-family: 'Ubuntu', sans-serif;
    }
    
    .text {
        text-shadow: 0px 0px 3px rgba(117, 117, 117, 0.12);
        color: #00A5FF;
        background:#F0F0F0;
        border:none;
        width:200px;
    }
    
   
    .tel:focus{
        border: 2px solid rgba(0, 0, 0, 0.18) !important;
        
    }
    
    a {
        text-shadow: 0px 0px 3px rgba(117, 117, 117, 0.12);
        color: #00A5FF;;
        text-decoration: none
    }
    
    @media (max-width: 600px) {
        .main {
            border-radius: 0px;
        }
</style>
</head>
<body>
	<div class="main">
		<p class="sign" align="center">비밀번호수정</p>
		<form class="form1" align=center>
			비밀번호<p>
			<input class="tel" type="text" placeholder="Password"><p>
			<input type=submit value=수정하기 class=text></a><p>
			<a href="change_inform.jsp"><input type=button class=text value=돌아가기></a>
		</form>
	</div>
</body>
</html>