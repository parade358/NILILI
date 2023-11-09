
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.nilili.subscribe.model.vo.Subscribe"%>

<%
Subscribe mySub = (Subscribe) session.getAttribute("mySub");
%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;200;300;400;500;600;700;800;900&display=swap"
	rel="stylesheet">

<title>Insert title here</title>
<style>
.wrap {
	width: 1920px;
}

.wrap>div {
	width: 100%;
}

* {
	font-family: 'Noto Sans KR', sans-serif;
}

/*---------------------content 스타일 영역------------------------------*/

/*콘텐츠 타이을 영역 설정*/
/*콘텐츠 타이틀 영역 설정*/
#title {
	/* border: 1px solid black; */
	height: 168px;
}

/*콘텐츠 타이틀 스타일 설정*/
#title>p {
	text-align: center;
	font-size: 40px;
	font-weight: 300;
}

/*콘텐츠 영역 설정 */
#contents {
	position: relative;
	z-index: 200;
	/* border: 1px solid black; */
	/* text-align: center; */
	margin: 0 auto;
	width: 1035px;
}
/*-----버튼 스타일지정-------*/
#btnInfoChange, #btnsubCancle, #chPwd {
	width: 195px;
	height: 50px;
	background-color: #A90000;
	border: none;
	color: #FFECEC;
	font-weight: 400;
	font-size: 16px;
	margin-left: 427px;
	margin-top: 40px;
	margin-bottom: 70px;
}

#drop{
 	width:195px;
 	height: 50px;
 	background-color:#7d7d7d;
 	border: none;
 	font-weight: 400;
 	color:#fefefe;
 	font-size: 16px;
 	margin-left: 427px;
    margin-top: 40px;
    margin-bottom: 70px;
 	
}
/*콘텐츠 1,2,3, 영역 설정 (간격설정) */
#content1 tr {
	height: 71px;
}

#content1 th {
	color: #333333;
	font-size: 16px;
	font-weight: 400;
}

#content1 td {
	height: 71px;
	width: 100%;
	padding-top: 20px;
	text-align: left;
	float: left;
	border-bottom: 1px solid #dcdcdc;
}

#tCon2 {
	margin-top: 10px;
}

#con2_3 {
	margin-top: 60px;
}

/*기본입력정보 영역 설정 */

/*필수 입력 특수문자 강조 컬러 스타일설정 */
.red {
	color: #a90000;
	font-weight: 900;
}

.tTitle {
	font-size: 20px;
	font-weight: 400;
	float: left;
	margin-bottom: 10px;
}

/*---------------------생일,번호 select,option스타일-----------------*/
.bBox, .pbox, .pmiddle, .plast {
	height: 42px;
	border: 1px solid #dcdcdc;
}

/*-------------------생일-------------------------*/
#birth_year, #front {
	width: 125px;
}

#birth_month, #birth_day, #middle, #last {
	width: 125px;
}

/*-------------------------이메일-------------------------*/
#selectEmail {
	width: 100px;
	height: 45px;
	border: 1px solid #dcdcdc;
}

#custEmailId {
	border: 1px solid #dcdcdc;
}

#custEmailDomein {
	border: 1px solid #dcdcdc;
}

/*---------------------------------주소--------------------*/
#custAddress {
	width: 400px;
	height: 42px;
	border: 1px solid #dcdcdc;
}

#btnPostCode {
	margin-left: 10px;
	font-weight: 600;
	font-size: 14px;
}

#custInputAddress {
	width: 400px;
	height: 42px;
	border: 1px solid #dcdcdc;
	/* margin-left: 269px; */
	margin-top: 24px;
	margin-bottom: 15px;
}

.userInfo {
	border: none;
}

/*------------------------회원 구독 정보 ------------------------------*/
#con2_1, #con2_2, #con2_3 {
	padding-bottom: 30px;
	font-weight: 600;
}

table {
	font-weight: 600;
	width: 100%;
	border-bottom: 1px solid black;
	border-top: 3px solid black;
	height: 160px;
}

table thead {
	font-weight: 600;
	height: 50px;
}

table th {
	font-weight: 500;
	background-color: #e7e7e7;
	border-bottom: 1px solid #dcdcdc;
	text-align: center;
}

table tr {
	text-align: center;
	font-weight: 400;
	font-size: 14px;
	color: #333333;
	border-bottom: 1px solid #dcdcdc;
}

.cont3 td {
	text-align: left;
	font-weight: 600;
	font-size: 14px;
	color: #333333;
	border-bottom: 1px solid #dcdcdc;
}

.con2_1 {
	margin-bottom: 45px;
}
/*------------------비밀번호 수정--------------------------------*/
.cont3 th {
	font-size: 16px;
	font-weight: 400;
	color: #333333;
}

.btnInput {
	width: 400px;
	height: 42px;
	border: 1px solid #dcdcdc;
}

/*---------------------푸터--------------------------------------*/

/*----------------- 모달 스타일------------------------------*/
.modal_bg {
	display: none;
	width: 100%;
	height: 100%;
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	background: rgba(0, 0, 0, 0.6);
	z-index: 999;
}

.modal_wrap {
	display: none;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 500px;
	height: 260px;
	background-color: #f7f7f7;
	z-index: 1000;
	text-align: center;
}

.modal_wrap img {
	padding-top: 50px;
}

.modal_wrap pre {
	font-family: 'Noto Sans KR', sans-serif;
	padding-top: 20px;
	padding-bottom: 30px;
	font-size: 18px;
	font-weight: 400;
	color: #4d4d4d;
	/* text-align: center;*/
}

/*--- 팝업버튼-----	*/
.btn_box .btn_open {
	display: block;
	width: 195px;
	height: 50px;
	border: none;
	margin: 0 auto;
	line-height: 50px;
	background: #a90000;
	text-align: center;
	box-sizing: border-box;
}

.btn_box .btn_open p {
	color: #fff;
}

#aban_no {
	width: 180px;
	height: 50px;
	background-color: #a90000;
	border: none;
	color: #ffecec;
	font-weight: 400;
	font-size: 16px;
	margin-left: 15px;
}

#abandon {
	width: 180px;
	height: 50px;
	background-color: #444444;
	border: none;
	color: #fefefe;
	font-weight: 400;
	font-size: 16px;
}
=======
  /*----------------- 모달 스타일------------------------------*/
  .modal_bg{
   display:none;
   width:100%;
   height: 100%;
   position: fixed;
   top: 0;
   left: 0;
   right: 0;
   background: rgba(0,0,0,0.6);
   z-index: 999;
  }
  
  .modal_wrap{
    display: none;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    width: 500px;
    height: 260px;
    background-color: #f7f7f7;
    z-index: 1000;
      text-align: center;
  }
  
  .modal_wrap img{
    padding-top : 50px;
  }
  
  .modal_wrap pre{
  	font-family: 'Noto Sans KR', sans-serif;
  	padding-top:20px;
  padding-bottom: 30px;
  font-size: 18px;
  font-weight: 400;
  color:#4d4d4d;
 /* text-align: center;*/
  }
  
  
  /*--- 팝업버튼-----	*/
 
  .btn_box .btn_open{
  	display: block;
  	width: 195px;
  	height: 50px;
  	border:none;
  	margin: 0 auto;
  	line-height: 50px;
  	background: #a90000;
  	text-align: center;
  	box-sizing: border-box;
  }
  
  .btn_box .btn_open p{
      color: #fff;
  }
  
  #aban_no,#mbdele_no{
     width: 180px;
     height: 50px;
     background-color: #a90000;
     border:none;
     color: #ffecec;
     font-weight:400;
     font-size: 16px;
     margin-left: 15px;
  
  }
  
  #abandon,#mbdele{
    width: 180px;
    height: 50px;
    background-color: #444444;
    border:none;
    color:#fefefe;
    font-weight: 400;
    font-size: 16px;
  }

</style>
</head>
<%@ include file="../common/headerBar.jsp"%>


<body>

	<!--인클루드 하실때 제일 위에다가 해주세요 -->


	<div class="wrap">

		<!-- 전체영역 잡는 wrap 이어서 페이지에 들어갈 내용들 밑에있는 div 영역에 집어넣으시길 바랍니다 -->
	</div>

	<!--********************************콘텐츠영역*********************************-->
	<!--*************************콘텐츠 타이틀 부분 ****************************************-->
	<div id="contents">

		<div id="title">
			<br>
			<p id="title">마이페이지</p>
		</div>

		<!--***********************************콘텐츠 영역***************************************-->
		<div class="tTitle">기본정보 입력</div>

		<form action="${contextPath }/update.mb" id="contents" method="post">
			<input type="hidden" name="memberNo" value="${loginMember.memberNO}">
			<table id="content1">
				<colgroup>
					<col width="288px">
					<col width="764px">
				</colgroup>

				<tbody align="left">
					<tr>
						<th>아이디</th>
						<td><input type="text" name="memberId" class="userInfo"
							value="${loginMember.memberId }" readonly></td>
					</tr>
					<tr>
						<th>이름</th>
						<td><input type="text" class="userInfo"
							value="${loginMember.memberName }" readonly></td>

					</tr>
					<tr>
						<th>전화번호</th>
						<td><select class="pbox" id="front">
								<option disabled selected>010</option>
						</select> <input type="phone" name="fnum" class="pmiddle"
							value="${loginMember.memberPhone.substring(4,8) }"> <input
							type="phone" name="lnum" class="plast"
							value="${loginMember.memberPhone.substring(9) }"></td>

					</tr>
					<tr>
						<th>이메일</th>
						<td><span> <input type="text" id="custEmailId"
								name="eid"
								value="${loginMember.memberEmail.substring(0,loginMember.memberEmail.indexOf('@')) }"
								name="custid" placeholder="이메일아이디" style="height: 42px;"
								required> <input type="text" class="duplicate_email"
								name="domain"
								value="${loginMember.memberEmail.substring(loginMember.memberEmail.indexOf('@')) }"
								id="custEmailDomein" style="width: 125px; height: 42px;"
								readonly="readonly" placeholder> <select class="normal"
								name="" id="selectEmail">
									<option value selected>선택</option>
									<option value="@naver.com">naver</option>
									<option value="@gmail.com">gmail</option>
									<option value="@daum.net">daum</option>
									<option value="@nate.com">nate</option>
									<option value="@khacademy.com">KH</option>
									<option value="custom">직접입력</option>
							</select>
						</span></td>

					</tr>
					<tr style="height: 142px;">
						<th>주소</th>
						<td style="border: none;"><span> <input type="text"
								id="custAddress" name="fads" readonly="readonly"
								value="${loginMember.memberAddress }"> <input
								type="button" id="btnPostCode" name="anum"
								class="btn_post_search"
								style="width: 140px; height: 45px; background-color: #7d7d7d; border: none; color: aliceblue;"
								value="우편번호 검색"> <input type="text" name="custAddress"
								name="dads" id="custInputAddress" readonly>
						</span></td>

					</tr>

				</tbody>

			</table>

			<button type="submit" id="btnInfoChange" class="btn">나의 정보수정</button>
		</form>


		<!--************************회원구독정보********************************************-->
		<c:choose>

			<c:when test="${loginMember.memberSubscribe eq 'Y'}">

				<div class="con2_1" class="infoCon2">

					<span class="tTitle">회원 구독 정보</span>

					<table id="tCon2">
						<!--회원구독정보/ 내역 테이블에서 td영역은 입력값을 받아야합니다~ --------------!!*수정 필요*!!------------------ -->
						<colgroup>
							<col style="width: 288px;">
						</colgroup>
						<tbody align="left">

							<tr>
								<th>구독 번호</th>
								<td>N0.${sub.subNo }번</td>
							</tr>
							<tr>
								<th>구독 기간</th>
								<td>${sub.regiDate}~ ${sub.expirationDate}</td>
							</tr>
						</tbody>


					</table>
				</div>
				<!--*********************************회원구독내역********************************************-->
				<!--회원구독정보/ 내역 테이블에서 td영역은 입력값을 받아야합니다~ ----------------------------- -->
				<div class="con2_2" class="infoCon2">
					<span class="tTitle">회원 구독 내역</span>
					<table id="tCon2">
						<thead>
							<tr>
								<th>순번</th>
								<th>이용기간</th>
								<th>구독지내역</th>
								<th>결제일/등록일</th>
								<th>결제방법</th>
								<th>이용여부</th>
							</tr>

						</thead>
						<tbody align="left">
							<tr>
								<td>1</td>
								<td>${sub.regiDate } ~ ${Sub.expirationDate }</td>
								<td>${sub.regiDate }${sub.regiDate }월호</td>
								<td>${sub.regiDate}</td>
								<td>신용카드</td>
								<td><span class="red">사용중</span></td>
							</tr>

							<tr>
								<td>1</td>
								<td>2023-11-03~2023-12-03</td>
								<td>23.11월 호</td>
								<td>2023-11-03</td>
								<td>신용카드</td>
								<td>사용중</td>
							</tr>

						</tbody>
					</table>

					<button id="btnsubCancle" class="btn"
						onclick="javascript:popOpen();">해지하기</button>
				</div>
		
		<!-- **********************************구독해지 모달 !!!*********************************** -->

		<div class="modal_bg" onclick="javascript:popClose();"></div>
		<div class="modal_wrap">
			<img src="${contextPath }/resources/img/00_mypage/alert_ui.png"></img>
			<pre> 구독을 해지하시겠습니까? </pre>
			<button class="modal_btn" id="aban_no"
				onclick="javascript:popClose();">해지 취소하기</button>
			<button class="modal_btn" id="abandon"
				onclick="javascript:popClose();">해지하기</button>
		</div>
		</c:when>
		<c:otherwise>
		
		
		
				<div class="con2_1" class="infoCon2">

					<span class="tTitle">NILILI의 구독서비스를 통해서 여행의 질을 더 높히세요!</span>

					<table id="tCon2">
						<!--회원구독정보/ 내역 테이블에서 td영역은 입력값을 받아야합니다~ --------------!!*수정 필요*!!------------------ -->
						<colgroup>
							<col style="width: 288px;">
						</colgroup>
						<tbody align="left">
							<tr>
							</tr>
							<tr>
								<th>구독정보</th>
								<td><button type="button" class="btn" style="width:195px; height:50px; background-color:#A90000;
								border:none; color:#FFECEC; font-weight:400; font-size:16px;" >구독하기</button></td>
							</tr>
						</tbody>
					</table>
				</div>
		</c:otherwise>
		</c:choose>
		<script>
	function popOpen(){
		var modalPop = $('.modal_wrap');
		var modalBg = $('.modal_bg');
		
		$(modalPop).show();
		$(modalBg).show();
	};
	

	$("#abandon").click(function(){
		$.ajax({
			url: "${contextPath}/abandon.mb",
			data: {
				memberName:"${loginMember.memberName}",
				memberNo:"${loginMember.memberNO}",
			},
			suceess: function(result){
				if(result>0){
					$("#closeBtn").click();
				$("#abandon").click();
					
				}else{
					alert("구독해지실패");
				}
			},
			error:function(){
				alert("서버와통신실패");
			},
				type: "post"
		});
	});
	
	
	
	function popClose(){
		var modalPop = $('.modal_wrap');
		var modalBg = $('.modal_bg');
		
		$(modalPop).hide();
		$(modalBg).hide();
	}
   
//     $(function(){
//     	selectSubscribe();
//     });
    
//     function selectSubscribe(){
//     	//구독 목록 조회 함수 
//     	$.ajax({
//     		url: "subList.sc",
//     		data: {
//     			sno: ${mySub.subNo}
//     		},
//     		success: function(result){
    			
//     			var str = "";
//     			for( var i in result){
//     				str += "<tr>"
//     				    +"<td>" + result[i].${mySub.regiDate }~ result[i].${mySub.modiDate }+"</td>"
//     				    +"<td>" + ${mySub.regiDate.substring(0,1) }.${mySub.regiDate.substring(2,3) }월 호+"</td>"
//     				    +"<td>"+${mySub.regiDate}+"</td>"
//     				    +"<td>"+신용카드+"</td>"
//     				    +"<td>"+사용중+"</td>"
//     				    +"</tr>";
    				    
//     			}
//     			$(".tCon2>tbody").html(str);
//     		},
//     		error: function(){
//     			console.log("통신오류");
//     		}
//     	});
//     }
    
    
    
    </script>

     <!--*************************비밀번호 수정******************************** -->

     
     <form action="${contextPath }/updatePwd.mp" method="post" id="con2_3" class="infoCon2">
         <span class="tTitle" >비밀번호 수정</span>
         <table id="tCon2" class="cont3">
        <colgroup>
        <col  style="width: 288px;">
        </colgroup>
        <tbody align="left" >
            <tr>
                <th>기존 비밀번호</th>
                <td><input type="password" class="pwdInput" name="memberPwd"></td>
            </tr>
      
            <tr> 
                <th>새 비밀번호</th>
                <td><input type="password" class="updatePwd" name="updatePwd" placeholder="영문+숫자+특수문자 조합 8~16자리"></td>

            </tr>
            <tr> 
                <th>새 비밀번호 확인</th>
                <td><input type="password" class="pwdInput" id="pwdInput" name="updateChkPwd" placeholder="비밀번호 확인을 위해 한 번 더 입력해 주시기 바랍니다." ></td>
        
            </tr>
          
        </tbody>
     </table>    

     <button id="chPwd" class="btn" onclick="return pwdCheck();" >비밀번호 수정</button>
     
    </form>
    <button id="drop" onclick="javascript:mbDeleOpen();">회원 탈퇴하기</button>
    
    
       <div class="modal_bg" onclick="javascript:mbDeleClose();"></div>
     <div class="modal_wrap">
        <img src="${contextPath }/resources/img/00_mypage/alert_ui.png"></img>
       <pre> 회원 탈퇴하시겠습니까? </pre> 
       <button class="modal_btn" id="mbdele_no" onclick="javascript:mbDeleClose();">회원 유지하기</button>
       <button class="modal_btn" id="mbdele" onclick="javascript:mbDeleClose();" >탈퇴하기</button>
     </div>
    
    
    <script >

   
    function pwdCheck(){
    	var cPwd = $("input[name = updatePwd]");
    	var chkPwd = $("#pwdInput");
    	
    	if(cPwd.val()!=chkPwd.val()){
    		alert("변경할 비밀번호와 비밀번호 확인이 일치하지 않습니다.")
    		cPwd.select();
    		
    		return false; //기본이벤트 실행되지 않기 
    	}
    	
    }
    
    
    function mbDeleOpen(){
		var modalPop = $('.modal_wrap');
		var modalBg = $('.modal_bg');
		
		$(modalPop).show();
		$(modalBg).show();
	};
	

	$("#mbdele").click(function(){
		$.ajax({
			url: "${contextPath}/mbdele.mb",
			data: {
				memberName:"${loginMember.memberName}",
				memberNo:"${loginMember.memberNO}",
			},
			suceess: function(result){
				if(result>0){
					$("#closeBtn").click();
					window.location.href = "index.jsp";
					
				}else{
					alert("회원탈퇴실패");
				}
			},
			error:function(){
				alert("서버와통신실패");
			},
				type: "post"
		});
	});
	
	
	
	function mbDeleClose(){
		var modalPop = $('.modal_wrap');
		var modalBg = $('.modal_bg');
		
		$(modalPop).hide();
		$(modalBg).hide();
	}
    
    
    
    </script>





		<script>


var msg = "<%=alertMsg%>
			";

			if (msg != 'null') {
				alert(msg);
		<%session.removeAttribute("alertMsg");%>
			}
			//주석
		</script>
</body>




</html>