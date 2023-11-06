<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var="contextPath" value="${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>


<title>Document</title>
<!-- 재혁이 테스트용 -->

<style>
.wrap {
	width: 1920px;
}

.wrap>div {
	width: 100%;
}

#header {
	/* border: 1px solid black; */
	height: 165px;
}

#line {
	height: 35px;
	background-color: black;
}

#logo {
	/* border:1px solid black; */
	width: 155px;
	height: 70px;
	padding-top: 30px;
	margin-left: 882.5px
}

#top {
	height: 641px;
}

#top_bg {
	position: absolute;
	/*헤더 밑 메인탑 이미지 부분*/
}


  
.login {
	/*로그인 bg부분 position - z-index로 위치설정 */
	position: relative;
	padding-left: 1195px;
	padding-top: 200px;
	z-index: 1000;
}



.log {
	position: relative;
	/* background-color: yellow; */
	top: 170px;
	padding-left: 25px;
}
 <c:choose>
  <c:when test="${empty loginMember }">

#login {
	position: absolute;
	z-index: 1500px;
	/* background-color: aqua; */
	height: 282px;
}

#id, #pwd {
	color: antiquewhite;
	font-family: 'Nanum Gothic', sans-serif;
	font-size: 15px;
}

#loginId {
	border: #C2C2C2;
	width: 235px;
	height: 40px;
	margin-left: 43px;
	margin-top: 40px;
	font-family: 'Nanum Gothic', sans-serif;
	font-size: 20px;
	font-weight: bolder;
}

#loginPwd {
	margin-top: 10px;
	margin-left: 30px;
	border: #C2C2C2;
	font-weight: bolder;
	font-size: 20px;
	font-family: 'Nanum Gothic', sans-serif;
	width: 235px;
	height: 44px;
}

#chkId {
	margin-top: 10px;
	color: #c2c2c2;
	font-size: 13px;
}

#btnLog {
	margin-top: 20px;
}

.log_btn {
	background-color: #9A0A0A;
	height: 42px;
	width: 315px;
	color: aliceblue;
	font-family: 'Nanum Gothic', sans-serif;
	font-size: 20px;
	font-weight: 800;
}

#login_form_etc {
	margin-left: 73px;
	font-size: 13px;
}

a {
	text-decoration: none;
}

#btn_join {
	margin-left: 10px;
}
</c:when>
 <c:otherwise>
 
 /*----------------------------로그인 후 페이지 --------------------------------*/

/* 로그인 후 user정보 입력창 스타일 설정 */
       #user_info{
 
        position: absolute;
        z-index: 1500px;
        height: 282px;
        padding-top: 40px;
         font-family: 'Nanum Gothic',sans-serif;
         color: aliceblue;
         font-size: 14px;

         
       }
       /*--로그인후 텍스트 행간 --*/
       #user_info li{
        padding-bottom: 4px;
       }


       #user_info button{
        margin-left: 30px;
        width: 147px;
        height: 42px;
       }

 
 
 
 
 </c:otherwise>

</c:choose>
#content1 {
	/* border: 1px solid black; */
	height: 354px;
	float: left;
}

#title {
	padding-top: 60px;
	padding-left: 838px;
}

#subtitle {
	font-size: 40px;
}

#menus {
	padding-top: 40px;
	padding-left: 470px;
	position: absolute;
}

#content2 {
	/* border: 1px solid black; */
	padding-top: 40px;
	padding-left: 360px;
}

#footer {
	margin-top: 60px;
	color: gray;
}

#f_text {
	padding-top: 40px;
}

.same2 {
	margin-left: 20px
}
</style>
</head>
<%@ include file="views/common/headerBar.jsp"%>

<c:choose>
<c:when test=""></c:when>


</c:choose>

<body>
<!---------------- 로그인전메뉴바--------------- -->
	<div class="wrap">
		<!--헤더 영역 상단 블랙 라인이랑 로고 까지가 헤더영역입니다 ~-->
		
		<!--TOP상단 이미지 영역 (로그인 부분  ) 로그인전 ------------------------->
		
		
		<div id="top">
			<div id="top_bg">
				<img src="resources/mainIndex/top_img.png" alt="메인이미지">
			</div>
			<div class="login">
				<img src="resources/mainIndex/top_img_blure.png" alt="블러">
					
					<c:choose>
			<c:when test="${empty loginMember }">
					
				<form action="${contextPath }/login.mb" method="post"><!-- 로그인 폼입니다.  -->
				<div id="login" class="log">
					<p id="id">
						<label for="loginId">아이디</label> <input type="text" id="loginId" name="memberId">
					</p>
					<p id="pwd">
						<label for="loginPwd">비밀번호</label> <input type="password" id="loginPwd" name="memberPwd">
					</p>
					<p id="chkId">
						<input type="checkbox" id="saveId"> <label for="saveId">아이디저장</label>
					</p>
					<p id="btnLog">
						<button type="submit" class="log_btn">로그인</button>
					</p>
	
					<!--회원가입/아이디 비밀번호 찾기-->
					<div id="login_form_etc">

						<a href="views/member/find_Id_Pwd.jsp" style="color: #C2C2C2;"
							id="findLogin">ID | PWD 찾기</a> <a href="${contextPath }/enrollForm.mb" style="color: #C2C2C2;"
							id="btn_join">회원가입</a>
					</div>
			
				</div>
			</form> 
		</c:when>
		
		<c:otherwise>
		
		
		
		
		    <div id="user_info" class="log">
      
         <ul style="list-style-type: none;">
            <li style="font-size: 30px;">${loginMember.memberName }</li> 
            <li> <br> </li>
     
            <li style="font-size: 24px;">"${loginMember.memberName }"님 환영합니다.</li>
            <li> <br> </li>
          
            <c:choose>
            <c:when test="${loginMember.memberSubscribe eq 'Y'}">
            <li>정기구독 회원입니다.</li>
            </c:when>
            <c:otherwise>
            <li> 일반회원 입니다.</li>
            </c:otherwise>
            </c:choose>
             <!--일반회원일 경우-->
            <li> 구독기간 | 예시입니다 2023-11-10 ~ 2023 -12 -10</li>
      
         <li>
			<form action="${contextPath }/logout.mb" style="display: inline;">
            <button type="submit" class="user_btn" style="background-color: #9a0a0a; color: aliceblue; font-size: 16px; font-weight: 700; border: none; margin-right: 10px">로그아웃</button>
            </form>
            
            <form action="mypage.mb" style="display: inline;">
            <button type="submit" class="user_btn" style="background-color: #717171; color: aliceblue; font-size: 16px; font-weight: 700; border: none;">마이페이지</button>
			</form>
			</li>
    	</ul>
      </div>
           
			</c:otherwise>
		
		
		</c:choose>
		
		
		
			</div>
		</div>
		</div>
			
		<!--헤더영역 끝 -->
		<!--콘텐츠 영역-->
		<!--01콘텐츠 메뉴들 (여행취향, 여행지 추천, 커뮤니티,구독지서비스)-->
		<div id="content">
			<div id="content1">
				<!--서브타이틀(늴리리영역)-->
				<div id="title">
					<img src="resources/mainIndex/title00.png" alt="">
					<sapn id="subtitle"> <b>늴리리</b></sapn>
				</div>
				<!--button영역 호버시 이미지 바꾸기/ 클릭시  서브페이지로 이동하기-->
				<div id="menus">
					<a class="same2" href="${contextPath}/game.pl" title="본인의 여행취향이 궁금하신가요?"><img
						src="resources/mainIndex/01_1con.png" id="con1" alt="여행취향"></a>
					<a class="same2" href="${contextPath}/reco.pl" title="어딜갈지 모르시겠나요?"><img
						src="resources/mainIndex/01_2con.png" id="con2" alt="여행지추천"></a>
					<a class="same2" href="${contextPath}/list.bo?currentPage=1" title="현재 가장 이슈있는것은?"><img
						src="resources/mainIndex/01_3con.png" id="con3" alt="커뮤니티"></a>
					<a class="same2" href="" title="여행이 편안해지는 당신"><img
						src="resources/mainIndex/01_4_con.png" id="con4" alt="구독지서비스"></a>
				</div>
				<!--콘텐츠2 (이미지)-->
			</div>
			<div id="content2">
				<a href="http://localhost:8888/semi/views/member/test.jsp"><img
					src="resources/mainIndex/02_con.png" alt="구독강요서비스ㅋㅋ"></a>
			</div>
			<!--푸터영역-->
				<%@ include file="views/common/footerBar.jsp"%>
		</div>
</body>
<script>
	$(function() {

		$("#con1").on("mouseenter", function() {

			$(this).attr("src", "resources/mainIndex/01_1con_hover.png");

		});

		$("#con1").on("mouseout", function() {

			$(this).attr("src", "resources/mainIndex/01_1con.png");

		});

		$("#con2").on("mouseenter", function() {

			$(this).attr("src", "resources/mainIndex/01_2con_hover.png");

		});

		$("#con2").on("mouseout", function() {

			$(this).attr("src", "resources/mainIndex/01_2con.png");

		});

		$("#con3").on("mouseenter", function() {

			$(this).attr("src", "resources/mainIndex/01_3con_hover.png");

		});

		$("#con3").on("mouseout", function() {

			$(this).attr("src", "resources/mainIndex/01_3con.png");

		});

		$("#con4").on("mouseenter", function() {

			$(this).attr("src", "resources/mainIndex/01_4con_hover.png");

		});

		$("#con4").on("mouseout", function() {

			$(this).attr("src", "resources/mainIndex/01_4_con.png");

		});

	});
</script>


</html>