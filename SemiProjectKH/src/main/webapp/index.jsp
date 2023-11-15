<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>

<%
	String saveId= "";
	String savePwd="";
	String loginFailId = "";
	//쿠키정보
	Cookie[] cookies = request.getCookies();
	//쿠키배열에서 필요한 쿠비정보를 추출하기
	//반복으로 돌려서 해당쿠키의 이름을 찾고 그 쿠키의 값을 담아두기
	for(Cookie c : cookies){
		if(c.getName().equals("memberId")){
			saveId=c.getValue();
		}
	}
	for(Cookie c : cookies){
		if(c.getName().equals("memberPwd")){
			savePwd=c.getValue();
		}
	}
	for(Cookie c : cookies){
		if(c.getName().equals("loginFailId")){
			loginFailId=c.getValue();
		}
	}
%>
<!DOCTYPE html>
<html lang="ko">

	<head>
	
		<!-- 링크 + 라이브러리 -->
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
		
		<title>늴리리</title>
		
		<style>
		
			*{font-family: 'Noto Sans KR', sans-serif;}
			
			.wrap {
				width: 1920px;
			}
			
			.wrap>div {
				width: 100%;
			}
			
			#top {
				height: 641px;
			    padding-top:160px;
				margin-bottom: 40px;
			}
			
			/*헤더 밑 메인탑 이미지 부분*/
			#top_bg {
				position: absolute;
			}
			
			
			/*로그인 bg부분 position - z-index로 위치설정 */
			.login {
				position: relative;
				padding-left: 1195px;
				padding-top: 200px;
				z-index: 1000;
			}
			
			.log {
				position: relative;
				top: 170px;
				padding-left: 25px;
			}
			<c:choose>
				<c:when test="${empty loginMember }">
			
					#login {
						position: absolute;
						z-index: 1500px;
						padding-top: 15px;
						height: 282px;
					}
					
					#id, #pwd {
						color: #e6e6e6;
						font-size: 15px;
					}
					
					#loginId {
						border: #C2C2C2;
						width: 235px;
						height: 40px;
						margin-left: 43px;
						margin-top: 40px;
						font-size: 20px;
						font-weight: bolder;
					}
					
					#loginPwd {
						margin-left: 30px;
						border: #C2C2C2;
						font-weight: bolder;
						font-size: 20px;
						width: 235px;
						height: 44px;
					}
					
					#chkId, #loginSave {
						margin-top: 10px;
						color: #c2c2c2;
						font-size: 13px;
						float: left;
						margin-left: 5px;
						margin-top:-5px;
					}
					
					
					.log_btn {
						background-color: #9A0A0A;
						height: 42px;
						width: 315px;
						color: #e6e6e6;
						font-size: 20px;
						font-weight: 600;
						margin-top:-5px;
						border: none;
					}
					
					#login_form_etc {
						font-size: 13px;
						margin-top:-5px;
					}
					
					a {
						text-decoration: none;
					}
					
					#btn_join {
						margin-left: 10px;
					}
				</c:when>
				
				<c:otherwise>
			 
					/*--------로그인 후 페이지 --------*/
					*{font-family: 'Noto Sans KR', sans-serif;}
					
					#header {
					/* border: 1px solid black; */
					height: 165px;
					position: absolute;
					/* 	text-align: center; */
					z-index: 100;
					/* 	margin:0 auto; */
					/* 	text-align: center; */
					}

					#user_info {
						position: absolute;
						z-index: 500;
						width: 365px;
						height: 273px;
						padding-top: 50px;
						font-size: 14px;
						color:#e6e6e6;
					}
					
			        .user {
				        text-align:left;
				        margin-left: 20px;
			        }
			     
			        #userId {
				      	font-size: 30px;
				      	margin-bottom: 30px;
			        }
			        
			        #welcome, #reguralMem, #generalMem, #date {
				     	margin-top:-10px;
				     	font-size:14px;
			    	}
			     
			
			        #lbtn {
			     		margin-top: 50px;
			        }
			        
			        .logout_btn{
				      	background-color:#9a0a0a;
				      	color: #ffecec;
				      	font-size: 16px;
				      	width: 148px;
				      	height: 42px;
				      	border: none;
				      	margin-right: 20px;
				      	margin-bottom:500px;
			        }
			     
			        .mp_btn {
				    	background-color: #717171;
				        color: #f7f7f7;
				        font-size: 16px;
				        width: 148px;
				        height:42px;
				        border: none;
			        }
			        
					#content {
						position: absolute;
						margin: -50px auto;
						text-align: center;
						width:100%;
					}
					
					#content1 {	
						height: 354px;
					}
			
				    #subtitle {
				    	font-size: 40px;
				    }
			
					#menus {
						padding-top: 40px;
						}
			
					#content2 {	
						padding-top: 30px;
					}
			 
				</c:otherwise>
			
			</c:choose>
			
			#content {
			position: absolute;
			 margin: 0 auto;
			 text-align: center;
			}
			
			#content1 {
				height: 354px;
			}
			
			#title {
				margin-top: 170px;
			}
			
			#subtitle {
				font-size: 40px;
			}
			
			#menus {
				padding-top: 40px;
			}
			
			#content2 {	
				padding-top: 30px;
			}
			
			
			/*----- 푸터영역 -----*/
			#footer {
				margin-top: 60px;
				color: gray;
			}
			
			#f_text {
				padding-top: 40px;
			}
			
			.same2 {
				margin-left: 20px;
			}
			
			/* 로그인 전 버튼들 스타일*/
			#findLogin{
				color: #C2C2C2;
			}
			
			#btn_join{
				color: #C2C2C2;
			}
			
			/* 로그인 후 버튼들 스타일*/
			#mypageBtn{ 
				background-color: #717171; 
				color: aliceblue; 
				font-size: 16px; 
				font-weight: 700; 
				border: none;
			}
			
			#logoutBtn {
				background-color: #9a0a0a; 
				color: aliceblue; 
				font-size: 16px; 
				font-weight: 700;
				border: none; 
				margin-bottom:-10px; 
				margin-right: 10px;
			}
			
			.lgForm {
				display: inline;
			}
			
		</style>
	
	</head>
	
		<%@ include file="views/common/chatBot.jsp"%>
	
	<body>
		<!---------------- 로그인전메뉴바--------------- -->
		<div class="wrap">
			
			<!-- 헤더바 -->
			<%@ include file="views/common/headerBar.jsp"%>	
	
			<!--TOP상단 이미지 영역 (로그인 부분  ) 로그인전 ------------------------->
			<div id="top">
				<div id="top_bg">
					<img src="resources/mainIndex/top_img.png" alt="메인이미지">
				</div>
				<div class="login">
					<img src="resources/mainIndex/top_img_blure.png" alt="블러">
						
					<c:choose> 
						<c:when test="${empty loginMember }">
							<%--로그인전 로그인폼 --%>
							<form action="${contextPath }/login.mb" method="post">
								<div id="login" class="log">
									<p id="id">
										<label for="loginId">아이디</label> <input type="text" id="loginId" name="memberId">
									</p>
									<p id="pwd">
										<label for="loginPwd">비밀번호</label> <input type="password" id="loginPwd" name="memberPwd">
									</p>
									<p id="chkId">
										<input type="checkbox" id="saveId" name="saveId"> <label for="saveId">아이디저장</label>
									</p>
									<p id="loginSave">
										<input type="checkbox" id="saveLg" name="loginSave"> <label for="saveLg">로그인 정보 저장</label>
									</p>
									<p id="btnLog">
										<button type="submit" class="log_btn">로그인</button>
									</p>
									<div id="login_form_etc">
										<a href="views/member/find_Id_Pwd.jsp" id="findLogin">ID | PWD 찾기</a> 
										<a href="${contextPath }/enrollForm.mb" id="btn_join">회원가입</a>
									</div>
								</div>
							</form> 
						</c:when>
						<c:otherwise>
							<%--로그인후 --%>
			    			<div id="user_info" class="log">
				            	<div class ="user">
						            <p id="userId">${loginMember.memberName }</p> 
						            <p id="welcome">"${loginMember.memberName }"님 환영합니다.<p>
						            <c:choose>
							            <%-- 구독 O --%>
							            <c:when test="${loginMember.memberSubscribe eq 'Y'}">
							            	<p id="regularMem">정기구독 회원입니다.</p>
							            </c:when>
							            <%-- 구독 X --%>
							            <c:otherwise>
							            	<p id="generalMem"> 일반회원 입니다.</p>
							            </c:otherwise>
						            </c:choose>
						            <%-- 구독 O --%>
						          	<c:if test="${sub.useYn eq 'Y'}"> 
						           		<p id="date"> 구독기간 |  "${sub.regiDate}" ~ "${sub.expirationDate}"</p>
						      		</c:if>
					    	    </div>
						        <div id="lbtn">
									<form action="${contextPath }/logout.mb" class="lgForm">
						           		<button type="submit" class="logout_btn" id=logoutBtn>로그아웃</button>
						            </form>
						            <form action="mypage.mb" class="lgForm">
						            	<button type="submit" class="mp_btn" id="mypageBtn">마이페이지</button>
									</form>
								</div>
					        </div>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
				
		<!--콘텐츠 영역-->
		<!--01콘텐츠 메뉴들 (여행취향, 여행지 추천, 커뮤니티,구독지서비스)-->
		<div id="content">
			<div id="content1">
				<!--서브타이틀(늴리리영역)-->
				<div id="title">
					<img src="resources/mainIndex/title00.png" alt="">
					<span id="subtitle"><b>늴리리</b></span>
				</div>
				<!--button영역 호버시 이미지 바꾸기/ 클릭시  서브페이지로 이동하기-->
				<div id="menus">
				
					<a class="same2" href="${contextPath}/game.pl" title="본인의 여행취향이 궁금하신가요?">
						<img src="resources/mainIndex/01_1con.png" id="con1" alt="여행취향">
					</a>
							
					<a class="same2" href="${contextPath}/reco.pl" title="어딜가실지 모르시겠나요?">
						<img src="resources/mainIndex/01_2con.png" id="con2" alt="여행지추천">
					</a>
							
					<a class="same2" href="${contextPath}/list.bo?currentPage=1" title="현재 가장 이슈있는것은?">
						<img src="resources/mainIndex/01_3con.png" id="con3" alt="커뮤니티">
					</a>
					<c:choose>
						<c:when test="${loginMember.memberSubscribe eq 'N' or loginMember eq null}">	
							<a class="same2" href="views/menu/service.jsp" onclick="return hasSubscribe();" title="여행이 편안해지는 당신">
								<img src="resources/mainIndex/01_4_con.png" id="con4" alt="구독지서비스">
							</a>
						</c:when>
						<c:otherwise>
							<a class="same2" href="views/menu/letterService.jsp"  title="구독한 당신을 위한 프리미엄 서비스">
								<img src="resources/mainIndex/01_4_con.png" id="con4" alt="레터서비스">
							</a>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
			
			<!--콘텐츠2 (이미지)-->
			<div id="content2">
				<img src="resources/mainIndex/02_con.png" alt="구독강요서비스ㅋㅋ">
			</div>
			
			<!--푸터영역-->
			<%@ include file="views/common/footerBar.jsp"%>
			
		</div>
			
		<!----------------------------- SCRIPT 구문 ----------------------------->
			
			
		<script>
		
			<!-- 로그인 정보 저장 함수 -->
			$(function(){
				var saveId = "<%=saveId%>";
				var savePwd = "<%=savePwd%>";
				var loginFailId = "<%=loginFailId%>";
				
				$("input[name=memberId]").val(loginFailId);//로그인 실패시 아이디창에 방금 적은 아이디 적어두움
				
				if(saveId!=""){//아이디 저장 
					$("input[name=memberId]").val(saveId);
					$("input[name=saveId]").attr("checked",true);
				}
				if(savePwd !="" && saveId !=""){//로그인 정보 저장
					$("input[name=memberId]").val(saveId);
					$("input[name=memberPwd]").val(savePwd);
					$("input[name=loginSave]").attr("checked",true);
				}
			});
		
			<!-- 재구독 방지 함수 -->
			function hasSubscribe(){
				if("${loginMember.memberSubscribe}"==='Y'){
					alert("이미 구독을 하셨습니다");
					return false;
				}	
			};
			
			<!-- 구독한 사람만 두번째 게임 가능하게 하는 함수 -->
			$("#con2").click(function(){
				if("${loginMember.memberSubscribe}"==='N' ){
					alert("구독 후 가능한 서비스입니다.");
					return false;
				}
				if("${loginMember}"== ""){
					alert("로그인 후 이용해주세요");
					return false;
				}	
			});
			
			<!-- 메뉴바 호버시에 색깔 변경-->
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

	</body>
</html>