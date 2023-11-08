<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<title>Document</title>
<style>

/* 헤더 영역 시작 */
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

#content2 {
	font-family: 'Nanum Gothic', sans-serif;
	margin-top: 40px;
}
/*-------------------------------헤더 영역 끝 ------------------------------------*/

/*---------------------content 스타일 영역------------------------------*/
#title {
	/* border: 1px solid black; */
	height: 168px;
}

#title>p {
	font-family: 'Nanum Gothic', sans-serif;
	font-size: 40px;
	font-weight: bolder;
	padding-left: 892px;
}

#contents {
	/* border: 1px solid black; */
	align-items: center;
	width: 1035px;
	margin-left: 435px;
}

#subtitle {
	font-family: 'Nanum Gothic', sans-serif;
	font-size: 20px;
	font-weight: 600;
	height: 30px;
	border-bottom: 3px solid black;
}

#id, #pwd, #chkpwd, #name, #birth, #gender, #phone, #email {
	font-family: 'Nanum Gothic', sans-serif;
	font-size: 16px;
	height: 70px;
	padding-top: 15px;
	border-bottom: 1px solid #dcdcdc;
}

#custAddress {
	margin-top: 15px;
	height: 137px;
}

#address {
	border-bottom: 3px solid black;
}

/*-------------------------------아이디 입력------------------*/
#id>span {
	font-family: 'Nanum Gothic', sans-serif;
	font-size: 16px;
}

#id>input {
	width: 400px;
	height: 42px;
	margin-left: 222px;
	border: 1px solid #dcdcdc;
}

.chkId {
	font-family: 'Nanum Gothic', sans-serif;
	font-size: 14px;
	color: aliceblue;
	width: 140px;
	height: 45px;
	background-color: #7d7d7d;
	border: none;
}

/*------------------------비밀번호, 비밀번호 확인-----------------*/
#pwd>span {
	font-family: 'Nanum Gothic', sans-serif;
	font-size: 16px;
}

#pwd>input {
	width: 400px;
	height: 42px;
	margin-left: 205px;
	border: 1px solid #dcdcdc;
}

#chkpwd>span {
	font-family: 'Nanum Gothic', sans-serif;
	font-size: 16px;
}

#chkpwd>input {
	width: 400px;
	height: 42px;
	margin-left: 173px;
	border: 1px solid #dcdcdc;
}

/*--------------------이름 입력 스타일---------------------*/
#name>span {
	font-family: 'Nanum Gothic', sans-serif;
	font-size: 16px;
}

#name>input {
	width: 400px;
	height: 42px;
	margin-left: 236px;
	border: 1px solid #dcdcdc;
}

/*---------------------생일,번호 select,option스타일-----------------*/
#birth>span {
	font-family: 'Nanum Gothic', sans-serif;
	font-size: 16px;
}

.binfo, .phonInfo {
	width: 100%;
	height: 42px;
	margin-top: 10px;
}

.bBox, .pbox {
	height: 42px;
	border: 1px solid #dcdcdc;
}

.pmiddle, .plast {
	height: 40px;
	border: 1px solid #dcdcdc;
}

/*-------------------생일-------------------------*/
#birth_year, #front {
	width: 125px;
	height: 42px;
	margin-left: 206px;
}

#birth_month, #birth_day, #middle, #last {
	width: 125px;
}
/*-------------양력,음력-----------------------------*/
#yang {
	margin-left: 43px;
}

#eum, #m {
	margin-left: 20px;
}
/*--------------성별 radio_input----------------*/
#f {
	margin-left: 223px;
	margin-top: 20px;
}

#selectEmail {
	width: 100px;
	height: 45px;
	border: 1px solid #dcdcdc;
}

#custEmailId {
	margin-left: 210px;
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
	margin-left: 226px;
}

#btnPostCode {
	margin-left: 10px;
	font-family: 'Nanum Gothic', sans-serif;
	font-weight: 500;
	font-size: 14px;
}

#custInputAddress {
	width: 400px;
	height: 42px;
	border: 1px solid #dcdcdc;
	margin-left: 269px;
	margin-top: 24px;
	margin-bottom: 15px;
}
/*--------------------------------------동의영역------------------------------*/
.allChk {
	padding-left: 30px;
}

#txt_all {
	margin-left: 30px;
}

.microBtnOpenLayer {
	margin-right: 0%;
}

#chkAgree1, #chkAgree2, #chkAgree3, #chkAgree4 {
	margin-bottom: 20px;
	margin-top: 20px;
	/* border-bottom:1px solid white; */
}

.inputBtnchk {
	border-bottom: 1px solid white;
}

.joinAgreement>ul {
	background-color: #f5f5f5;
}

#contents #content2 .microBtnOpenLayer {
	position: absolute;
	/* right: -10; */
	/* top: 0px; */
	left: 1400px;
}

.material-symbols-outlined {
	font-variation-settings: 'FILL' 0, 'wght' 400, 'GRAD' 0, 'opsz' 24
}
/*--------------푸터----------------------*/
#footer {
	margin-top: 60px;
	color: gray;
}

#f_text {
	padding-top: 40px;
}

 @keyframes shake {
  0% { transform: translateX(0); }
  20% { transform: translateX(-5px); }
  40% { transform: translateX(5px); }
  60% { transform: translateX(-5px); }
  80% { transform: translateX(5px); }
  100% { transform: translateX(0); }
}

.shake-input {
  animation: shake 0.5s;
  animation-iteration-count: 3;
}
      

</style>
</head>
<%@ include file="../common/headerBar.jsp"%>
<body>

	<!--****************************콘텐츠 영역******************************-->
	<div id="title">
		<br>
		<hr>

		<p id="title">회원가입</p>

	</div>
	<div id="contents">
		<div id="subtitle">기본정보 입력</div>

		<form action="${contextPath }/enrollForm.mb" method="post">
			<div id="content1">

				<!--**********************************************아이디*************************************************-->
				<div id="id">
					 <label for="idInput">* 아이디</label>
					<input type="text" id="idInput" name="userId" required placeholder="영문/숫자/'_' 만 입력가능 4~16자리">
					<span id="overLapId">영문/숫자/'_' 만 입력가능 4~16자리</span>
					<!-- <button type="submit" class="chkId">중복확인</button>-->

				</div>


				<!--************************************************비밀번호 , 이름*******************************************************-->
				<div id="pwd">
					<label for="pwdInput">* 비밀번호</label>
					<input type="password" id="pwdInput" name="userPwd" required placeholder="영문+숫자+특수문자 조합 8~16자리" maxlength="16">
					<span id="pwdCk1"></span>
				</div>
				<div id="chkpwd">
					 <label for="pwdInputCk">* 비밀번호 확인</label>
					<input type="password" required placeholder="영문+숫자+특수문자 조합 8~16자리" maxlength="16" id="pwdInputCk">
					<span id="pwdCk2"></span>
				</div>
				<div id="name">
					<label for="nameInput">* 이름</label>
					<input type="text" id="nameInput" name="userName" required placeholder="두글자 이상(한글 이외의 글자 입력불가)">
					<span id="nameCk"></span>
				</div>



				<!--*****************************************************생년월일***************************************************-->
				<div id="birth">

					<div class="binfo" id="info_birth">
						<span>*생년월일</span> 
						<select class="bBox" id="birth_year" onchange="javascript:lastday();" name="userYear">
							<option disabled selected>출생년도</option>
						</select>
						 <select class="bBox" id="birth_month" name="userMonth" onchange="javascript:lastday();">
							<option disabled selected>월</option>
						</select>
						 <select class="bBox" id="birth_day" name="userDay">
						</select>

					</div>



					<!--******************************************************************성별************************************************************-->
				</div>
				<div id="gender">
					<span>* 성별</span> 
					<input type="radio" class="radioBoxCh" name="userGender" value="F" id="f"><label for="f">여자</label>
					<input type="radio" class="radioBoxCh" name="userGender" value="M" id="m"><label for="m">남자</label>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="radibBoxChspan"></span>
				</div>


				<!--******************************************************전화번호*************************************************************************-->
				<div id="phone">
					<div class="phonInfo">
						<span>전화번호</span>
						 <select class="pbox" id="front" name="firstPNum">
							<option selected>010</option>
						</select> 
						<input type="text" class="pmiddle" maxlength="4"  minlength="4" id="midPNum" name="midPNum"> 
						<input type="text" class="plast" maxlength="4"  minlength="4" id="lastPNum" name="lastPNum">
					</div>
				</div>


				<!--******************************************이메일*************************************************************************************-->
			    <div id="email">
        <label for="custEmailId">*이메일</label>
        <input type="text" id="custEmailId" name="custId" placeholder="이메일아이디" style="height: 42px;" required>
        <span class="txt_emil">@</span>
        <input type="text" class="duplicate_email" id="custEmailDomain" name="domain" style="width: 125px; height: 42px;" readonly>
        <select class="normal" name="domain" id="selectEmail">
            <option disabled selected>선택</option>
            <option value="naver.com">naver</option>
            <option value="gmail.com">gmail</option>
            <option value="daum.net">daum</option>
            <option value="nate.com">nate</option>
            <option value="khacademy.com">KH</option>
            <option value="직접입력">직접입력</option>
        </select>
        <span id="emailOverLap"></span>
        <div style="width: 114px; height: 42px; outline-style: none;" class="select-list-box" wck="selectEmail" tabindex="0"></div>
        <div tabindex="0" title="" class="selected-headline" nstyle="width: 114px;"></div>
    </div>
				<!--**********************************************************주소****************************************************************************************-->
				<div id="address">

					<div class="custAddress_postCode">
						<span> &nbsp&nbsp주소</span> 
						<input type="text" id="custAddress" readonly="readonly" value=""> 
						<input type="button" id="btnPostCode" class="btn_post_search" 
						style="width: 140px; height: 45px; background-color: #7d7d7d; border: none; color: aliceblue;"
							value="우편번호 검색"> <input type="hidden" name="zipcode">
					</div>

					<div class="custInputAddress">
						<input type="text" name="custAddress" id="custInputAddress">
							
					</div>
				</div>


			</div>
	

			<!--**************************************************동의영역***************************************************************-->
			<div id="content2">
				<div class="joinAgreement">
					<!--****************************모두동의 ******************-->
					<p class="allChk">
						<span class="inputBtnChk"> <input type="checkbox"
							id="chkAll" onclick="selectAll();"> <label for="chkAll"> <span
								id="allTxt1"
								style="font-size: 20px; font-weight: 500; font-family: 'Nanum Gothic', sans-serif;">
									전체 동의합니다.</span> <br> <br> <span id="txt_all">"전체동의는
									필수 및 선택정보에 대한 동의도 포함되어 있으며, 개별적으로 동의를 선택할 수 있습니다."</span> <br> <span
								id="txt_all"> "선택항목에 대한 동의를 거부하는 경우에도 회원가입 서비스는 이용
									가능합니다." </span>
						</label>
						</span>
					</p>

					<!-- ****************************동의 목록******************************* -->
					<ul style="list-style-type: none;">
						<li><span class="inpuBtnchk"> <input type="checkbox"
								id="chkAgree4" name="chkAgree04"> <label for="chkAgree4"
								style="font-size: 16px; font-weight: 500; font-family: 'Nanum Gothic', sans-serif;">
									만 14세 이상입니다. (필수) </label>
						</span></li>
						<li><span class="inpuBtnchk"> <input type="checkbox"
								id="chkAgree1" name="chkAgree01"> <label for="chkAgree1"
								style="font-size: 16px; font-weight: 500; font-family: 'Nanum Gothic', sans-serif;">
									"이용약관 동의 (필수)" </label>
						</span>
							<button type="button" class="microBtnOpenLayer">내용보기</button></li>
						<li><span class="inpuBtnchk"> <input type="checkbox"
								class="material-symbols-outlined" id="cumtom-check-1"
								name="chkAgree02"> <label for="chkAgree2"
								style="font-size: 16px; font-weight: 500; font-family: 'Nanum Gothic', sans-serif;">
									"개인정보 수집 및 이용에 대한 동의 (필수)" </label>
						</span>
							<button type="button" class="microBtnOpenLayer">내용보기</button></li>
						<li><span class="inpuBtnchk"> <input type="checkbox"
								id="chkAgree3" name="chkAgree03"> <label for="chkAgree3"
								style="font-size: 16px; font-weight: 500; font-family: 'Nanum Gothic', sans-serif;">
									"개인정보 수집 및 이용안내(선택)" </label>
						</span>
							<button type="button" class="microBtnOpenLayer">내용보기</button></li>
					</ul>


				</div>
				<!--********************************취소,저장 btn*******************************************-->
				<div class="joinBtnWrap" align="center" style="margin-top: 30px;">
					
					<button type="button" id="btnCancel" name="button" class="btn" onclick="" 
					style="width: 108px; height: 35px;">취소</button>
					
					
					<button type="button" id="btnConfirm"class="btn" onclick=" return enroll();"
					style="width: 108px; height: 35px; background-color: black; color: aliceblue; border: none;">확인</button>


				</div>

			</div>
	</form>
	</div>


	<%@ include file="../common/footerBar.jsp"%>



	<script>
	//아이디 이메일 중복 ajax (일단 아이디부터 구현)
	 $(function(){
	
		 $("#idInput").on("input",function(){
			
			
			 $.ajax({
				url :"${contextPath}/overLapEnroll.mb",
				data : {
			
					overLapId : $(this).val()
					
				},
				
				success : function(result){
				
					if(result=="NNNNN"){//중복된거있을때
						$("#overLapId").text("* 사용중인 아이디입니다.");
						$("#overLapId").css("color","red");
					
							
					}else{
						$("#overLapId").text("* 사용 가능한 아이디입니다");
						$("#overLapId").css("color","green");
					
					}
					
					
				},
				error : function(xhr,status,error){
					console.log("에러입니다" + error);
				},
				
				type :"post"
					 
			 });
			 });
		 
		 $("#custEmailId,#custEmailDomain,#selectEmail").on("input change",function(){
		 
		 $.ajax({
			url : "${contextPath}/overLapEmail.mb",
			data : {
				
				emailId : $("#custEmailId").val(),
				custEmailDomain : $("#custEmailDomain").val(),
				
			},
			
			success : function(count){
				
				if(count=="NNNNN"){//중복된거있을때
					$("#emailOverLap").text("* 사용중인 이메일입니다.");
					$("#emailOverLap").css("color","red");
				
						
				}else{
					$("#emailOverLap").text("* 사용 가능한 이메일입니다");
					$("#emailOverLap").css("color","green");
				
				}
				
			},
			
			error : function(){
				console.log("서버오류구리");
				
			},
			type : "post"//url노출방지
			 
			 
			 
			 
		 });
		 
		 
		 });
	 
	 
	 });
	
	
	
	 
	
		//회원가입 제출 스크립트 
		//밑에 함수에서 회원가입 버튼을누르면 오류를 판별해주고 어디가 이상이있는지 확인해준다  오류가 없으면 서버로 전송
		function enroll() {
			var idInput = $("#idInput").val();
			let regExp1 = /^[a-zA-Z0-9_]{4,16}$/;//아이디

			let pwdInput = $("#pwdInput").val();
			let regExp2 = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[\W_]).{8,16}$/;//비번

			let nameInput = $("#nameInput").val();
			let regExp3 = /^[가-힣]{2,}$/;//이름

			let custEmailId = $("#custEmailId").val();
			let regExp4 = /^[a-z0-9]+$/;//이메일

			let custEmailDomein = $("#custEmailDomein").val();
			
			if(regExp1.test(idInput) && regExp2.test(pwdInput) 
				&& regExp3.test(nameInput) && regExp4.test(custEmailId)
				&& $("#overLapId").text()=="* 사용 가능한 아이디입니다"
				&& $("#pwdCk2").text()== "* 비밀번호가 일치합니다"
				&& $(".radioBoxCh").is(":checked")
				&& $("#emailOverLap").html()== ""){//조건이 다 맞을때 버튼을 submit로 바꿔서 서버로 전송	
				 $('#btnConfirm').prop('type', 'submit');
			}
			else if (!regExp1.test(idInput) || $("#overLapId").text()=="* 사용중인 아이디입니다."){//아이디 틀렸을때 
				$("#idInput").focus();
				if(!regExp1.test(idInput)){
					$("#overLapId").text("* 영문/숫자/'_'만입력가능 4~16자리만 입력가능");
					$("#overLapId").css("color","red");
				}
				$("#idInput").css("border", "1px solid #FF0000");
				$("#idInput").addClass("shake-input");
				$("#idInput").on("input", function() {
				$("#idInput").css("border", "1px solid #dcdcdc");
				});
			}
			if (!regExp2.test(pwdInput) || $("#pwdCk2").text()=="* 비밀번호가 일치하지않습니다" ) {//비번틀렸을때 비번확인 틀렸을때
				$("#pwdInput").focus();
				$("#pwdCk1").text("* 영문+숫자+특수문자 조합 8~16자리만 입력가능")	
				
				if($("#pwdCk2").text()=="* 비밀번호가 일치하지않습니다"){
					$("#pwdInputCk").focus();
					$("#pwdInputCk").css("border", "2px solid #FF0000");
					$("#pwdInputCk").addClass("shake-input");
					
					$("#pwdInputCk,#pwdInput").on("input", function() {
						$("#pwdCk2").text("");
						$("#pwdInputCk").css("border", "1px solid #dcdcdc");
				});
				}
				
				$("#pwdInput").css("border", "2px solid #FF0000");
				$("#pwdInput").addClass("shake-input");

				$("#pwdInput").on("input", function() {
					$("#pwdCk1").text("");
					$("#pwdInput").css("border", "1px solid #dcdcdc");
				});
			}
			if (!regExp3.test(nameInput)) {//이름틀렸을떄
				$("#nameInput").focus();
				$("#nameCk").text("* 입력양식에 맞게 입력해주세요");
				$("#nameCk").css("color","red");
	
				$("#nameInput").css("border", "2px solid #FF0000");
				$("#nameInput").addClass("shake-input");
				$("#nameInput").on("input", function() {
					$("#nameInput").css("border", "1px solid #dcdcdc");
					$("#nameCk").text("");
				});
			}
			if (!regExp4.test(custEmailId)) {//이메일 틀렸을때

				$("#custEmailId").css("border", "2px solid #FF0000");
				$("#custEmailId").addClass("shake-input");
					$("#custEmailId").on("input", function() {
							$("#custEmailId").css("border", "1px solid #dcdcdc");
				});
			}
			if(!$(".radioBoxCh").is(":checked")){//성별체크안했을때
				$("#radibBoxChspan").html("성별입력란을 체크해주세요");
				$("#radibBoxChspan").css("color","red");
				$("#radibBoxChspan").focus();
				$(".radioBoxCh").on("change", function() {
				    if ($(this).is(":checked")) {
				        $("#radibBoxChspan").html("");
				    } 
				});
			}			
		   if($("#chkAgree4").prop("checked") && $("#chkAgree1").prop("checked") && $("#cumtom-check-1").prop("checked") ){
				$("#btnConfirm").prop("disabled",false);//필수이용약관동의 안했을때
		     }else{
				alert("필수항목에대한 동의를 해주세요")
				return false;
				}
		};
	</script>
	
	<script>

	 $(function() {
		 //이게보이면 정상입니다 안보이면 큰일나쒀..
         // 이메일 주소 선택 옵션 변경 시
         $("#selectEmail").change(function() {
             let selectedValue = $(this).val();
             // 선택한 옵션 값을 input 요소의 value로 설정
             $("#custEmailDomain").val(selectedValue);
             // 아이디 입력 필드 초기화
            
             // 이메일 중복 메시지 초기화
             $("#emailOverLap").html("");

             if (selectedValue === '직접입력') {
                 // custom 옵션 선택 시
                 $("#custEmailDomain").prop("readonly", false);
             } else {
                 // 다른 옵션 선택 시
                 $("#custEmailDomain").prop("readonly", true);
             }
         });
         // 이메일 아이디 입력 필드 변경 시
         $("#custEmailId").on("input", function() {
             let emailId = $("#custEmailId").val();
             if (emailId.includes('@') || emailId.includes('.')) {
                 // "@" 또는 "." 포함 시 이메일 아이디만 입력해야 함
                 $("#emailOverLap").html("이메일의 아이디만 입력해주세요");
                 $("#emailOverLap").css("color", "red");
             } else {
                 // 이메일 아이디 형식이 올바른 경우
                 $("#emailOverLap").html("");
             }
         });
     });
// 선택한 옵션의 값을 가져와서 input 요소의 value로 설정
			$("#selectEmail").on("change", function(){
			var selectedValue = $(this).val();
			$("#custEmailDomain").val(selectedValue);
		});
		$(function() {// 이메일 펑션
			$("#selectEmail").change(function(){
				let selectOption = $(this).val();
				if (selectOption == '직접입력') {//custom이 직접입력이다
					$("#custEmailDomain").prop("readonly", false);
					$("#custEmailDomain").val("");
					$("#custEmailDomain").on("input",function(){			
						   if (!$("#custEmailDomain").val().includes('@')) {
			                    // "@" 문자를 입력하지 않은 경우만 값 설정
			                    $("#selectEmail option[value=custom]").val($("#custEmailDomain").val());
			                }
						if($("#custEmailDomain").val().includes('@')){
					$("#emailOverLap").html("이메일형식으로 입력해주세요");
					$("#emailOverLap").css("color","red");
					}else{
					
						$("#emailOverLap").html("");
						
					}
						
						
					});
					//자동으로 @를 붙혀주면서 사용자가 입력하게끔
				} else {
					$("#custEmailDomain").prop("readonly", true);//네이버 구글 다음 이런거 고르면 수정 못하게 막아둠
			
				}
			});
		});
		
		$("#custEmailId").on("input",function(){
			if($("#custEmailId").val().includes('@') ||$("#custEmailId").val().includes('.')){
				$("#emailOverLap").html("이메일의 아이디만 입력해주세요");
				$("#emailOverLap").css("color","red");
			}else{
				$("#emailOverLap").html("");
			}
		});		

		
		
		
	</script>
		<script>
		
		$(function(){
			//중간번호 입력시 자동으로 끝번호입력하게 만듬 핸드폰번호관련 함수
			$("#midPNum").on("input",function(){	
				if(this.value.length == this.maxLength){
					$("#lastPNum").focus();
				}
			})		
		});
	</script>
		<script>
		//폰번호 숫자 외 이상한 문자 들어갈시에 막는 함수		
		$("#midPNum,#lastPNum").on("input", function() {
	        // 숫자 이외의 문자 제거
	        this.value = this.value.replace(/[^0-9]/g, '');
	    });
		</script>
	<script>//생년월일 셀렉트태그 함수 월에 맞게 맞는 일수 선택
		var start_year = "1960";// 시작할 년도
		var today = new Date();
		var today_year = today.getFullYear();
		var index = 0;
		for (var y = start_year; y <= today_year; y++) { //start_year ~ 현재 년도
			document.getElementById('birth_year').options[index] = new Option(
					y, y);
			index++;
		}
		index = 0;
		for (var m = 1; m <= 12; m++) {
			document.getElementById('birth_month').options[index] = new Option(
					m, m);
			index++;
		}
		lastday();
		function lastday() { //년과 월에 따라 마지막 일 구하기 
			var Year = document.getElementById('birth_year').value;
			var Month = document.getElementById('birth_month').value;
			var day = new Date(new Date(Year, Month, 1) - 86400000).getDate();
			var dayindex_len = document.getElementById('birth_day').length;
			if (day > dayindex_len) {
				for (var i = (dayindex_len + 1); i <= day; i++) {
					document.getElementById('birth_day').options[i - 1] = new Option(
							i, i);
				}
			} else if (day < dayindex_len) {
				for (var i = dayindex_len; i >= day; i--) {
					document.getElementById('birth_day').options[i] = null;
				}
			}
		}
	</script>

	<script>
	function selectAll(){//체크박스 전체선택
	if($("#chkAll").prop("checked")){
		$("#chkAgree4,#chkAgree1,#cumtom-check-1,#chkAgree3").prop("checked",true);
	}else{
		$("#chkAgree4,#chkAgree1,#cumtom-check-1,#chkAgree3").prop("checked",false);
	}
	}
	</script>
	<script>
	$(function(){//비밀번호랑 비밀번호 확인이랑 다를때 발생하는 함수
		  $("#pwdInput, #pwdInputCk").on("input", function() {
			    if ($("#pwdInput").val() === $("#pwdInputCk").val()) {
			      $("#pwdCk2").text("* 비밀번호가 일치합니다");
			      $("#pwdCk2").css("color", "green");
			    } else {
			      $("#pwdCk2").text("* 비밀번호가 일치하지 않습니다");
			      $("#pwdCk2").css("color", "red");
			    }
			  });	
	});
	</script>
</body>
</html>