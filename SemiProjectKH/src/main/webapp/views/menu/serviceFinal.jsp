<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
​
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap" rel="stylesheet">
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
        /*헤어 영역 사이즈값 (높이/세로영역)*/
        #header{
            /* border: 1px solid black; */
            height: 165px;
        }
​
​
        /*상단 블랙라인 */
        #line{
            height: 35px;
            background-color: black;
        }
​
        /*헤더 중앙 로고 */
​
        #logo{
            /* border:1px solid black; */
            width: 155px;
            height: 70px;
            padding-top:30px ;
            margin-left:882.5px;
            float: left;
​
        }
​
        /*헤더 로그아웃, 마이페이지 영역 */
        #logo > span{
            position: absolute;
            padding-left: 520px;
            padding-top: 30px;
            
        }
​
​
        /*헤더 바로밑 이미지 높이값*/
        #top{
            height: 641px;
        }
        #top_bg{
            position: absolute;
            /*헤더 밑 메인TOP 이미지 부분*/
        }
        
        a{
            text-decoration: none;
        }
​
        /*-------------------------------헤더 끝 ---------------------------------------*/
​
        /*콘텐츠 타이을 영역 설정*/
        #title{
            position: relative;
            /* border: 1px solid black; */
            height: 168px;
            text-align: center;
        }
​
​
        /*콘텐츠 타이틀 스타일, 영역(중앙정렬) 설정*/
        #contitle{
          
            font-size: 30px;
            font-weight:800;
            margin: 0 30 auto;
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
            height:238px;
            border: 1px solid #999999;
            margin: 0 auto;
            text-align: center;
   
            font-size: 30px;
            font-weight: 900;
            padding-top: 64px;
            color: #333333;
            background-image: url(../semiProject/resource/01_service/service_img.png);
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
         #footer{
        margin-top: 60px;
        color: gray;
     
      }
      #f_text{
        padding-top: 40px;
​
      }
​
    </style>
</head>
<body>
    <div class="wrap">
        <!--헤더 영역 상단 블랙 라인이랑 로고 까지가 헤더영역입니다 ~-->
        <div id="header">
            <div id="line"></div>
            <div id="logo">
          <img src="resource/00_main/logo.png" alt="3조로고"> 
​
            <span>
                <!--로그아웃 버튼 영역-->
           <a href="" id="logout">
                <img src="resource/00_main/logout_ui.png" alt="logout_ui"> 
                <span style="vertical-align: top; padding-left: 5px; margin-right: 20px; color: #444444; font-size: 12px; ">로그아웃</span>
           </a>
            <!--마이페이지 버튼 영역-->
            <a href="" id="mypage">
                <img src="resource/00_main/myp_ui.png" alt="mypage_ui"> 
                <span style="vertical-align: top; padding-left: 5px; color: #444444; font-size: 12px;">마이페이지</span>
             </a>  
        </span> 
           
         </div>    
         </div>
         <!--*************************헤더 영역 끄으으으으으으읕***********************-->
​
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
<!--*****************푸우우ㅜ우우우ㅜㅇ터어어어어어ㅓ어어어어어*******************-->
         <div id="footer">
            <hr>
    
            <span id="f_text"  style="align : center" >
                고객문의  |  이용약관  | 개인정보취급방침  |  사이트맵
                <br><br>
                서울시 영등포구 선유동 2로 57 이레빌딩 20층 E강의장  TEL 1544-9970
                <br>
                COPYRIGHT ⓒ  1988-2023 KH IEI ALL Right Reserved
                
            </span>
        </div>
</body>
</html>