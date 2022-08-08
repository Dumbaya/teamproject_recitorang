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
<title>Find Pwd</title>
<style>
 body {
        background-color: #DCDCDC;
        font-family: 'Ubuntu', sans-serif;
    }
    
    .main {
        background-color: #FFFFFF;
        width: 450px;
        height: 450px;
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
    
    .text {
        text-shadow: 0px 0px 3px rgba(117, 117, 117, 0.12);
        color: #00A5FF;
    }
    
   
    .tel:focus{
        border: 2px solid rgba(0, 0, 0, 0.18) !important;
        
    }
    
    a {
        text-shadow: 0px 0px 3px rgba(117, 117, 117, 0.12);
        color: #00A5FF;
        text-decoration: none
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
    @media (max-width: 600px) {
        .main {
            border-radius: 0px;
        }
</style>
</head>
<body>
   <div class="main">
      <p class="sign" align="center">비밀번호찾기</p>
      <form class="form1" align=center>
         <table align=center>
            <tr>
               <td>
                  아이디
               </td>
               <td>
                  <input class="un" type="text" placeholder="Username">
               </td>
            </tr>
            <tr>
               <td>
                  질문
               </td>
               <td>
                  <input class="qu" type="text" placeholder="계정 분실 시 질문">
               </td>
            </tr>
            <tr>
               <td>
                  답변
               </td>
               <td>
                  <input class="an" type="text" placeholder="답변">
               </td>
            </tr>
         </table>
         <p class="text" align=center><a href="find_pwd_1.jsp">비밀번호찾기</a>
      </form>
   </div>
</body>
</html>