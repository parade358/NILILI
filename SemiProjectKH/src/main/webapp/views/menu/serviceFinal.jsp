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
        #title2{
         
            /* border: 1px solid black; */
            height: 900px;
            text-align: center;
            
            
        }
​
​
        /*콘텐츠 타이틀 스타일, 영역(중앙정렬) 설정*/
        #contitle2{
          
            font-size: 30px;
            font-weight:800;
            margin-top : 50000px;
           
         }
​
         /*--------------------- 콘텐츠영역------------------------------------*/
         #content1{
           
        
         }
​
         #textBox1{
            width: 955px;
            height:808px;
            border: 1px solid #999999;
            margin: 0 auto;
            text-align: center;
  
            font-size: 30px;
            font-weight: 900;
            padding-top: 64px;
            color: #333333;
       
​
         }

      #serviceBtn{
       
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

		

    </style>
</head>
<body>

	<div class="wrap">
<%@ include file="../common/headerBar.jsp"%> 
     <style>
      #logo{
            position:absolute;

            width: 155px;
            height: 70px;
            z-index: 101;
            top:60px ;
            margin-left:900px;

        }
        </style>
         <!--서브페이지 타이틀 -->
        <h2>WELCOME NILILI PREMIUM SUBSCRIBE SERVICE</h2> 
        <br><br><br><br>
        
         <div id="title2" style="background-color:red;  background-image: url('../../resources/01_service/service_img.png');    height:605px;">
       <br><br><br><br><br><br><br><br><br><br>
         <h3 style="font-weight:bolder;">닐리리만의 고품격 구독 서비스에 오신걸 환영합니다</h3>
            <br>
            <hr>
​
		
​
         </div>
​
         <!--*******************************콘텐츠 영역********************************* -->
<div id="content1">
 <button type="button" id="serviceBtn" >메인홈페이지 가기</button>

</div>
​
	<%@ include file="../common/footerBar.jsp"%>


</body>

<script>

$("#serviceBtn").click(function(){

	window.location.href = 'http://localhost:8888/semi/';
	
	
});




</script>


</html>