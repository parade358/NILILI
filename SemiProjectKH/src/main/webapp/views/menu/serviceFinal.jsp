<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
​

    <title>Document</title>
    <style>
          
          .wrap{
            width: 1920px;
        }
        .wrap > div{
            width: 100%;
        }
​
        *{
            font-family: 'Noto sans KR' sans-serif;
        }

​
        /*-------------------------------헤더 끝 ---------------------------------------*/
​
        /*콘텐츠 타이을 영역 설정*/
        #title{
             background-color: red;
            /* border: 1px solid black; */
            height: 900px;
            text-align: center;
            
        }
​
​
        /*콘텐츠 타이틀 스타일, 영역(중앙정렬) 설정*/
        #contitle{
          	background-color : red;
            font-size: 30px;
            font-weight:800;
            margin-top : 50000px;
           
         }
​
         /*--------------------- 콘텐츠영역------------------------------------*/
         #content{
            position: relative;
            text-align: center;
        
         }
​
         #textBox{
            width: 955px;
            height:808px;
            border: 1px solid #999999;
            margin: 0 auto;
            text-align: center;
   		background-color:red;
            font-size: 30px;
            font-weight: 900;
            padding-top: 64px;
            color: #333333;
       
​
         }
​
         #textBox p{
         
            font-size: 22px;
            color: #333333;
​
         }
​
      #content button{
       
        font-size: 16px;
        font-weight: 800;
        width: 230px;
        height: 53px;
        background-color: #a90000;
        color: #f9dede;
        margin: 0 auto;
        border: none;
        margin-top: 60px;
      }
​
​
         
​
/*-------------------------------------------푸터영역--------------------------------------*/

    </style>
</head>
	<div class="wrap">
<%@ include file="../common/headerBar.jsp"%> 
		<!-- 전체영역잡는 wrap 이어서 페이지에 들어갈 내용들 밑에있는 div 영역에 집어넣으시길 바랍니다 -->
		<style>
      #logo{
            position:absolute;
            /* border:1px solid black; */
            width: 155px;
            height: 70px;
            z-index: 101;
            top:60px ;
            margin-left:900px;
            /* margin-left:882.5px; */
/*             left: 50%; */
/*             translate: -50%; */
/*             margin: 0 auto; */
        }
</style>	


<body>

         <!--서브페이지 타이틀 -->
         <div id="title">
            <br>
            <hr>
​
            <p id="contitle" >구독 서비스</p>
​
         </div>
​
         <!--*******************************콘텐츠 영역********************************* -->
<div id="content">
 
<div id="textBox">WELCOME
    <p>구독이 완료되었습니다.</p>
</div>
<button type="text" id="serviceBtn"> 여행 추천 서비스로 가기</button>
​


​
</div>
​
	<%@ include file="../common/footerBar.jsp"%>


</body>
</html>