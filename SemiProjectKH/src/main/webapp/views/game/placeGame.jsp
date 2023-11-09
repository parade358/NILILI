<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<!DOCTYPE html>
<html lang="ko">
<head>

	<!-- 메타코드 -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="Woodangtang">
    <meta name="kewords" content="늴리리">
    <meta name="description" content="늴리리">

    <!--카톡 공유-->
    <meta property="og:url" content=""/>
    <meta property="og:title" content="늴리리 여행추천"/>
    <meta property="og:type" content="website"/>
    <meta property="og:image" content="${contextPath }/resources/img/mainPh.jpg"/>
    <meta property="og:description" content="늴리리 여행추천"/>
    
    <!--favicon-->
    <link rel="shortcut icon" href="${contextPath }/resources/img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon-precomposed" href="${contextPath }/resources/img/favicon.ico" type="image/x-icon">
    
    <title>늴리리</title>
    
    <!-- 링크들 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="stylesheet" href="${contextPath }resources/css/default.css">
    <link rel="stylesheet" href="${contextPath }resources/css/main.css">
    <link rel="stylesheet" href="${contextPath }resources/css/qna.css">
    <link rel="stylesheet" href="${contextPath }resources/css/animation.css">
    <link rel="stylesheet" href="${contextPath }resources/css/result.css">
    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap');
        #container{
            width: 1920px;
        }
        #qnaCenter{

            display: flex;
            justify-content: center;
            align-items: center;

        }
    </style>
    
    <!-- kakao api 위한 토큰 -->
    <script>
        Kakao.init('bc244e477ffd76b0d8b9614c1a0ecb6a');
        Kakao.isInitialized();
      </script>
</head>
<body>
	<%@ include file="/views/common/headerBar.jsp" %>	
	


    <div id="container" class="container">
      
            <section id="main" class="mx-auto my-5 py-5 px-3">
                <h2><b>텍스트로 여행추천</b></h2>
               
                <div class="col-lg-6 col-md-6 col-sm-6 col-12 mx-auto py-5">
                    <img src="${contextPath }/resources/img/mainPh.jpg" alt="mainImage" class="img-fluid">
                </div>
                
                <p>
                    사용자들에게 질문들을 제공해주고 답변에 맞는 여행지를 추천해준다. <br>
                    아래 시작하기 버튼을 눌러 시작해 주십시오.
                </p>
                
                <button type="button" class="btn btn-outline-danger mt-3"
                onclick="js:begin()">시작하기</button>
                
            </section>

            <section id="qna" class="my-auto">
                
                <div style="margin-top: 125px;">

                    <div class="status mx-auto mt-5" style="margin-bottom: 100px;">
                        <div class="statusBar">
                            
                        </div>
                    </div>
                    <div class="qBox my-5 py-3 mx-auto">
                        
                    </div>
                    <div class="answerBox">
                        
                    </div>
                </div>
                
                    
            </section>

            <section id="result" class="mx-auto my-5 py-5 px-3">

                <h2><b>당신의 결과는?!</b></h2>
                    <div class="resultname"></div>
                <div id="resultImg" class="my-3 col-lg-6 col-md-6 col-sm-6 col-12 mx-auto py-5">
                    
                </div>
                <div class="resultDesc"></div>
                
                <p>
                    <br><br>
                    공유하기 버튼을 눌러 친구들에게 결과를 공유해보세요!
                </p>
                
                <button type="button" class="btn btn-warning mt-3 py-2 px-3" onclick="js:kakaoShare();"><b>공유하기</b></button>
				&nbsp;&nbsp;
				<a href="<%=contextPath%>" class="btn btn-dark mt-3 py-2 px-3">홈으로</a>
            </section>

            <script src="${contextPath }/resources/js/data.js" charset="UTF-8"></script>
            <script src="${contextPath }/resources/js/start.js" charset="UTF-8"></script>
            <script src="${contextPath }/resources/js/share.js" charset="utf-8"></script>
        </div>
   
    
</body>
</html>