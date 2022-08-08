<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/style.css">
<link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
<meta charset="UTF-8">
<title>Join</title>
<style>
 body {
        background-color: #DCDCDC;
        font-family: 'Ubuntu', sans-serif;
    }
    
    .main {
        background-color: #FFFFFF;
        width: 550px;
        height: 550px;
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
    
    .un {
    width: 76%;
    color: rgb(38, 50, 56);
    font-weight: 700;
    font-size: 14px;
    letter-spacing: 1px;
    background: rgba(136, 126, 126, 0.04);
    padding: 10px 20px;
    border: none;
    border-radius: 20px;
    outline: none;
    box-sizing: border-box;
    border: 2px solid rgba(0, 0, 0, 0.02);
    margin-left: 46px;
    text-align: center;
    margin-top:15px;
    margin-bottom: 15px;
    font-family: 'Ubuntu', sans-serif;
    }
    
    form.form1 {
        vertical-align:middle;
    }
    
    .pass {
            width: 76%;
    color: rgb(38, 50, 56);
    font-weight: 700;
    font-size: 14px;
    letter-spacing: 1px;
    background: rgba(136, 126, 126, 0.04);
    padding: 10px 20px;
    border: none;
    border-radius: 20px;
    outline: none;
    box-sizing: border-box;
    border: 2px solid rgba(0, 0, 0, 0.02);
    margin-left: 46px;
    text-align: center;
    margin-top:15px;
    margin-bottom: 15px;
    font-family: 'Ubuntu', sans-serif;
    }
    .tel {
            width: 76%;
    color: rgb(38, 50, 56);
    font-weight: 700;
    font-size: 14px;
    letter-spacing: 1px;
    background: rgba(136, 126, 126, 0.04);
    padding: 10px 20px;
    border: none;
    border-radius: 20px;
    outline: none;
    box-sizing: border-box;
    border: 2px solid rgba(0, 0, 0, 0.02);
    margin-left: 46px;
    text-align: center;
    margin-top:15px;
    margin-bottom: 15px;
    font-family: 'Ubuntu', sans-serif;
    }
    
    .qu, .an {
      width: 76%;
       color: rgb(38, 50, 56);
       font-weight: 700;
       font-size: 14px;
       letter-spacing: 1px;
       background: rgba(136, 126, 126, 0.04);
       padding: 10px 20px;
       border: none;
       border-radius: 20px;
       outline: none;
       box-sizing: border-box;
       border: 2px solid rgba(0, 0, 0, 0.02);       
       margin-left: 46px;
       text-align: center;
       margin-top:15px;
       margin-bottom: 15px;
       font-family: 'Ubuntu', sans-serif;
    }
    
   
    .un:focus, .pass:focus, .qu:focus, .an:focus {
        border: 2px solid rgba(0, 0, 0, 0.18) !important;
        
    }
    
    .submit {
      cursor: pointer;
        border-radius: 5em;
        color: #fff;
        background: linear-gradient(to right, #1E90FF, #78EAFF);
        border: 0;
        padding-left: 40px;
        padding-right: 40px;
        padding-bottom: 10px;
        padding-top: 10px;
        font-family: 'Ubuntu', sans-serif;
        margin-left: 35%;
        font-size: 13px;
        box-shadow: 0 0 20px 1px rgba(0, 0, 0, 0.04);
    }
    
    .submit {
       text-decoration: none;
        text-shadow: 0px 0px 3px rgba(117, 117, 117, 0.12);
        color: white;
        font-weight: 900;
        
        
        
    }
    
    @media (max-width: 600px) {
        .main {
            border-radius: 0px;
        }
</style>
</head>
<body>
<div class="main">
    <p class="sign" align="center">회원가입</p>
    <form class="form1" action="../jsp/join_next.jsp" method="post">
       <table align=center>
          <tr>
             <td>
                아이디
             </td>
             <td>
                <input class="un" name="id" type="text" placeholder="Username">
             </td>
          </tr>
          <tr>
             <td>
                비밀번호
             </td>
             <td>
                <input class="pass" name="pw" type="password" placeholder="Password">
             </td>
          </tr>
          <tr>
             <td>
                전화번호
             </td>
             <td>
                <input class="tel" name="tel" type="text" placeholder="Tel">
             </td>
          </tr>
          <tr>
             <td>
                질문
             </td>
             <td>
                <input class="qu" name="qu" type="text" placeholder="계정 분실 시 질문">
             </td>
          </tr>
          <tr>
             <td>
                답변
             </td>
             <td>
                <input class="an" name="an" type="text" placeholder="답변">
             </td>
          </tr>
          <tr>
             <td colspan=2>
                <input class="submit" type="submit" value="회원가입">
             </td>
          </tr>
       </table>
    </form>
</div>
</body>
</html>