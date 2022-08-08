<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="errorpage.jsp"%>
<%@ page import="teamproject.RecipesDao" %>
<%@ page import="teamproject.RecipesDto" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Random" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Homepage</title>
<!-- 아래 두 스크립트는 헤더 추가 코드 -->
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.js";></script>
<script type="text/javascript" src="./js/jquery.ulslide.js";></script>
<script type="text/javascript">   
$(document).ready( function() {

$("#headers").load("headers.jsp");  // 원하는 파일 경로를 삽입하면 된다

});
</script>
<script type="text/javascript">
       $(function() {
           $('#main_bn').ulslide({
               statusbar: true,
               width: 450,
               height: 338, 
               affect: 'slide', 
               axis: 'x',    
               navigator: '#main_bn_btn a',
               duration: 400, 
      autoslide: 3000 })})
</script>
<style>

.home_body{
   width: 100%;
   display: flex;
   justify-content: center;
   background:#F2F2EB;
}
.home_sub_body{
   width: 1250.330px;
   display: flex;
   flex-direction: column;
}

.container1{
	margin-top:20px;
	width: 100%;
	background:#ffffff;
	margin-bottom:20px;
}

.container1_top{
	width: 100%;
	font-size:24px;
	margin-left:20px;
}
.container1_bottom{
	width: 100%;
	display: grid;
	grid-template-columns: repeat(auto-fill, minmax(20%, auto));
	place-items: center;
	padding: 10px;
}

.container2{
   width: 100%;
   height: 340px;
   background:#ffffff;
   margin-bottom:20px;
}
.container3{
	width:100%;
	height:100px;
	background:#ffffff;
	display:grid;
	grid-template-columns: repeat(auto-fill, minmax(10%, auto));
}
#main_bn {
   margin-left:10px;
   width:200px;
   height:100%;
}
#main_bn img {
   width:100%;
   height:auto;
}
#main_bn_btn {
    list-style-type:none;
   position:absolute;
   bottom:5px; left:5px;
}
#main_bn_btn span {
    float: left; display:inline-block; width:20px; height:20px; margin-right:5px; 
}

#cont2_1{
   width:63%;
   height:100%;
   float:left;
}
.container2_top{
	width: 100%;
	font-size:24px;
	margin-left: 20px;
}
.container2_bottom{
	width: 100%;
	height: 300px;
	display: grid;
	grid-template-columns: repeat(auto-fill, minmax(25%, auto));
	place-items: center;
	
}

#cont2_2{
   width:37%;
   height:100%;
   float:left;
}
#wrap{
   width:50%;
   float:left;
}
.hm_table{
   margin-top:20px;
   text-align:center;
}
.tb_un{
   width:200px;
   border-bottom: 1px solid #886353;
}
.tb_ti{
   width:600px;
   border-bottom: 1px solid #886353;
}
.tb_vi{
   width:150px;
   border-bottom: 1px solid #886353;
}

.rp_a{
	text-decoration:none;
	text-align:center;
	color:black;	
	margin-left:10px;
	margin-right:10px;
}
.rp_a1{
	text-decoration:none;
	text-align:center;
	color:black;
}
.plz{
	margin-left:10px;
	margin-right:10px;
	float:none;
}
</style>
</head> 
<%
   RecipesDao dao = new RecipesDao();
   List<RecipesDto> list=dao.popularAll();
%>
<body>
<div id="headers"></div>

<div class="home_body">
<div class="home_sub_body">
	<div class="container1"><!-- 조회수 높은순으로 5개 출력 -->
		<div class="container1_top">
			인기 레시피
		</div>
		<div class="container1_bottom">
			<%
			for(int i=0; i<5;i++){
			%>
			<a Style="margin:5px; text-decoration: none; color: black;" href="search_recipes2.jsp?bd_no=<%=list.get(i).getBd_no()%>">
				<div class="img">
				   <img alt="" src="<%= list.get(i).getBd_imge() %>" width="235px" height="235px">
				</div>
				<div class="title" align="center">
					<%=list.get(i).getBd_title() %>
				</div>
			</a>
			<%
			}
			%>
		</div>
	</div>

   <div class="container2">
      <div id="cont2_1"> <!-- 랜덤함수 넣어서 아무 게시글 뽑아오기 -->

	      	<div class="container2_top">
				<span style="color:#030303;">오늘의</span> <span style="color:#0702B9;">추천메뉴</span>
			</div>
	         <div class="container2_bottom">
	         	
	         	<%
	         	Random random = new Random();

	    		int a[]=new int[8];
	     		int b;
	     		boolean c;
	     		for (int i=0; i<8; i++){
	     			b=random.nextInt(8);
	     			c=false;
	     			for (int j=0; j<i; j++){
	     				if(a[j]==b)
	     					c=true;
	     			}
	     			if(c){
	     				i--;
	     				continue;
	     			}
	     			a[i]=b;
	     		}
	         	%>
	         	
				<%
				for(int i=0; i<8;i++){
				%>
				<a class=rp_a1 href="search_recipes2.jsp?bd_no=<%=list.get(a[i]).getBd_no() %>">
					<div class=plz>
						<div class="img1">
						   <img alt="" src="<%=list.get(a[i]).getBd_imge() %>" style="width:100px; height:100px;">
						</div>
						<div class="title1" Style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis;">
						<%=list.get(a[i]).getBd_title() %>
						</div>
						<div Style="margin-top: -10px; font-size: 12px;">
							<% for(int j=0; j<list.get(a[i]).getBd_rank(); j++){%>
							★
							<%} %>
						</div>
					</div>
				</a>
				<%
				}
				%>
			</div>
	      </div>
	      <div id="cont2_2">
	         <div id="wrap">
	         <ul id="main_bn">
	            <li>
	                <img src="./image/image_1.jpg" alt="" />
	            </li>
	            <li>
	                <img src="./image/image_2.jpg" alt="" />
	            </li>
	            <li>
	                <img src="./image/image_3.jpg" alt=""/>
	            </li>
	            <div id="main_bn_btn">
	                <span><a href="#"><img src="./image/blt.png"></a></span>
	                <span><a href="#"><img src="./image/blt.png"></a></span>
	                <span><a href="#"><img src="./image/blt.png"></a></span>
	             </div>
	          </ul>
			</div>
      		</div>

   </div>
   <div class="container3">
		<a class=tag href="search_recipes3.jsp?before=headers&text=밥">
			<div class=tag_img>
				<img src="https://ifh.cc/g/FSparf.png" >
			</div>
			<div class=tag_text>
				밥
			</div>
		</a>
		<a class=tag href="search_recipes3.jsp?before=headers&text=면">
			<div class=tag_img>
				<img src="https://ifh.cc/g/ZqSX6V.png" >
				
			</div>
			<div class=tag_text>
				면
			</div>
		</a>
		<a class=tag href="search_recipes3.jsp?before=headers&text=매운">
			<div class=tag_img>
				<img src="https://ifh.cc/g/YvB1Zh.png" >
			</div>
			<div class=tag_text>
				매운
			</div>
		</a>
		<a class=tag href="search_recipes3.jsp?before=headers&text=고기">
			<div class=tag_img>
				<img src="https://ifh.cc/g/38tnKM.png" >
			</div>
			<div class=tag_text>
				고기
			</div>
		</a>
		<a class=tag href="search_recipes3.jsp?before=headers&text=빵">
			<div class=tag_img>
				<img src="https://ifh.cc/g/A1J1oD.png" >
			</div>
			<div class=tag_text>
				빵
			</div>
		</a>
		<a class=tag href="search_recipes3.jsp?before=headers&text=닭">
			<div class=tag_img>
				<img src="https://ifh.cc/g/lm4ahT.png" >
			</div>
			<div class=tag_text>
				닭
			</div>
		</a>
		<a class=tag href="search_recipes3.jsp?before=headers&text=토마토샤브샐러드">
			<div class=tag_img>
				<img src="https://ifh.cc/g/Yg84pZ.png" >
			</div>
			<div class=tag_text>
				비건
			</div>
		</a>
		<a class=tag href="search_recipes3.jsp?before=headers&text=계란">
			<div class=tag_img>
				<img src="https://ifh.cc/g/GcFkSV.png" >
			</div>
			<div class=tag_text>
				달걀
			</div>
		</a>
		<a class=tag href="search_recipes3.jsp?before=headers&text=주스">
			<div class=tag_img>
				<img src="https://ifh.cc/g/ZmAz12.png" >
			</div>
			<div class=tag_text>
				음료
			</div>
		</a>
		<a class=tag href="search_recipes3.jsp?before=headers&text=빙수">
			<div class=tag_img>
				<img src="https://ifh.cc/g/F6O3Px.png" >
			</div>
			<div class=tag_text>
				빙수
			</div>
		</a>
	</div>
</div>
</div>


</body>
</html>