<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Fuggles&family=Merriweather:wght@900&family=Noto+Sans+KR:wght@100&family=Roboto:wght@300&display=swap" rel="stylesheet">
    <title>Document</title>
    <style>
          
          .wrap{
            width: 1920px;
        }
        .wrap > div{
            width: 100%;
        }

        /*헤어 영역 사이즈값 (높이/세로영역)*/
    
        /*-------------------------------헤더 끝 ---------------------------------------*/

        /*콘텐츠 타이을 영역 설정*/
        #title{
       	    margin-top : 
            position: relative;
            /* border: 1px solid black; */
            height: 168px;
            text-align: center;
        
        }


        /*콘텐츠 타이틀 스타일, 영역(중앙정렬) 설정*/
        #contitle{
            font-family: 'Noto Sans KR', sans-serif;
            font-size: 30px;
            font-weight:800;
            margin: 0 30 auto;
          
         }

         /*--------------------- 콘텐츠영역------------------------------------*/
         #content{
            position: relative;
            text-align: center;
         }


/*-------------------------------------------푸터영역--------------------------------------*/


    </style>
</head>
<body>
    <div class="wrap">
 <%@ include file="../common/headerBar.jsp"%>
   </div>
         <!--*************************헤더 영역 끄으으으으으으읕***********************-->

         <!--서브페이지 타이틀 -->
         <div id="title">
            <br>
            <hr>

            <p id="contitle" >여행 추천 구독지</p>
			</div>

         <!--*******************************콘텐츠 영역********************************* -->
<div id="content">

 <img src="../../resources/mainIndex/img.png" alt="구독지레터">



</div>
		
<!--*****************푸우우ㅜ우우우ㅜㅇ터어어어어어ㅓ어어어어어*******************-->
     	<%@ include file="../common/footerBar.jsp"%>
</body>
</html>