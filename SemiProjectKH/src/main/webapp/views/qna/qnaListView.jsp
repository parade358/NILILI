<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <% String contextPath = request.getContextPath();%>
    <!-- Latest compiled and minified CSS -->
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
      <!-- jQuery library -->
     <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
      <!-- Popper JS -->
      <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
      <!-- Latest compiled JavaScript -->
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
      
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      <c:set var="contextPath" value="${pageContext.request.contextPath }"/>
    <!-- 기본 필요한 라이브러리 입니다 -->

    <link href="https://fonts.googleapis.com/css2?family=Bagel+Fat+One&family=Gaegu:wght@300;400;700&family=IBM+Plex+Sans+KR&family=Nanum+Brush+Script&family=Nanum+Gothic&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

    <meta charset="UTF-8">

    <title>Document</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <style>
    .wrap{
        background-color: white;
        color: black;
        width: 1920px;
        /* height: 1000px; */
        margin: auto;
        margin-top: 50px;
    }

    .wrap{
        width: 1920px;
    }
    .wrap > div{
        width: 100%;
    }
    #header{
        /* border: 1px solid black; */
        height: 165px;
    }

    #line{
        height: 35px;
        background-color: black;
    }
    #logo{
        /* border:1px solid black; */
        width: 155px;
        height: 70px;
        padding-top:30px ;
        margin-left:882.5px
        
    }
    #footer{
    margin-top: 60px;
    color: gray;
    
    }

    #f_text{
        padding-top: 40px;

    }

    .list-area{
        border-top: 3px solid #313131;
        border-bottom: 3px solid #313131;
        text-align: left;
        width: 1000px;
        margin-top: 150px;
        align-items: center;
        
    }

    #title1{
        width:150px;
        height:100px;
        /* border:1px solid green; */
        float:left;
        font-family: 'Nanum Gothic', sans-serif;
        font-size: 12px;
        color: #A12B2B;
        display: flex;
        justify-content: center;
        align-items: center;
        margin-left: 770px;
        margin-top: 30px;
        padding-top: 10px;
        font-weight: 700;
        

    }

    #title2{
        width:240px;
        height:100px;
        /* border:1px solid red; */
        float:left;
        font-size: 34px;
        font-family: 'Nanum Gothic', sans-serif;
        font-weight: 800;
        display: flex;
        justify-content: center;
        align-items: center;
        margin-top: 30px;
        padding-right: 170px;
    }

    div{
        font-family: 'Nanum Gothic', sans-serif;
        font-weight: 100;
    }

    
    td{
        height: 70px;
        padding-left: 20px;
    }

    #tdtitle{
        width: 50px;

    }

    tr{
        border-bottom: 1px solid #DDDDDD;
    }

    .answer{
        display: none;
    }

    button{


        /* display: flex; */
        /* justify-content: center; */
        /* align-items: center; */
      

    }

    .button{
        /* width: 500px;
        margin-left: 50px; */
       
    }




    </style>
  </head>
  <body>
    <!-- ../ 상위폴더로 이동 -->
	

	<div class="wrap">

        <!--헤더영역 블랙라인 + 로고 -->
        <div id="header">
               <div id="line"></div>
                <div id="logo">
                    <a href="http://localhost:8888/semi/"> <img
                       src="../../resources/mainIndex/logo.png" alt="3조로고"></a>    
               </div>
        </div>  

       
       
       <!--인덱스 타이틀-->
       <div id="title1">서울 여행 정보 공유 사이트</div>

       <!--게시판 타이틀-->
       <div id="title2">Q&A</div>
       
       
       <!-- <div class="button">
            <button >FAQ</button>
            <button>1:1 문의하기</button>
        </div> -->


       <!--QNA-->

       <br>

    <table class="list-area" align="center">
        <tr class="question">
            <td><img src="../../resources/qna/Q_lcon.png" alt="질문">
            NILILI 이용 방법에 대해 알고 싶어요.
            <img src="../../resources/qna/down_Icon.png" alt="방향아이콘">
            </td>
            
        </tr>
        <tr class="answer">
            <td><img src="../../resources/qna/A_icon.png" alt="질문">
            NILILI는 여행을 사랑하는 당신의 취향을 파악하여 그에 맞는 여행 정보를 제공합니다.
            </td>
        </tr>

        <tr class="question">
            <td><img src="../../resources/qna/Q_lcon.png" alt="질문">
            여행 구독 서비스는 어떻게 이용하나요?
            <img src="../../resources/qna/down_Icon.png" alt="방향아이콘">
            </td>
            
        </tr>
        <tr class="answer">
            <td><img src="../../resources/qna/A_icon.png" alt="질문">
            구독 서비스 > 구독하기 후 결제를 완료하면 구독자의 취향을 반영한 맞춤형 여행을 정기적으로 추천해드립니다.
            </td>
        </tr>

        <tr class="question">
            <td><img src="../../resources/qna/Q_lcon.png" alt="질문">
            회원 정보를 수정하고 싶을 땐 어떻게 해야 하나요?
            <img src="../../resources/qna/down_Icon.png" alt="방향아이콘">
            </td>
            
        </tr>
        <tr class="answer">
            <td><img src="../../resources/qna/A_icon.png" alt="질문">
            홈 > 마이페이지에서 수정 가능합니다.
            </td>
        </tr>

        <tr class="question">
            <td><img src="../../resources/qna/Q_lcon.png" alt="질문">
                질문을 입력해주세요.
            <img src="../../resources/qna/down_Icon.png" alt="방향아이콘">
            </td>
            
        </tr>
        <tr class="answer">
            <td><img src="../../resources/qna/A_icon.png" alt="질문">
                답변을 입력해주세요.
            </td>
        </tr>

        <tr class="question">
            <td><img src="../../resources/qna/Q_lcon.png" alt="질문">
                질문을 입력해주세요.
            <img src="../../resources/qna/down_Icon.png" alt="방향아이콘">
            </td>
            
        </tr>
        <tr class="answer">
            <td><img src="../../resources/qna/A_icon.png" alt="질문">
                답변을 입력해주세요.
            </td>
        </tr>

    </table>


        <script>
            $(function () {
                $(".question").click(function () {
                     var $p = $(this).next();
                    console.log($(this).next());

                    if ($p.css("display") == "none") {
                    $(this).siblings(".answer").slideUp();
                    $p.slideDown(1000);
                    } else {
                        $p.slideUp(1000);
                    }
                });
            });
        </script>


       <!--푸터영역-->
       <div id="footer" align="center">
        <hr>

        <span id="f_text">
            고객문의  |  이용약관  | 개인정보취급방침  |  사이트맵
            <br><br>
            서울시 영등포구 선유동 2로 57 이레빌딩 20층 E강의장  TEL 1544-9970
            <br>
            COPYRIGHT ⓒ  1988-2023 KH IEI ALL Right Reserved
            
        </span>
        </div>

    </div>
</body>
</html>
