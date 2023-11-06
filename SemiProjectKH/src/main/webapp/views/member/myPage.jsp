 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<style >

 .wrap{width: 1920px;}
         .wrap > div{width: 100%;}
        *{font-family: 'Noto Sans KR', sans-serif;}
           			

/*---------------------content 스타일 영역------------------------------*/

/*콘텐츠 타이을 영역 설정*/
/*콘텐츠 타이틀 영역 설정*/
#title{
    /* border: 1px solid black; */
    height: 168px;
}

/*콘텐츠 타이틀 스타일 설정*/

#title>p{
    text-align: center;
    font-size: 40px;
    font-weight:300;

}

/*콘텐츠 영역 설정 */
#contents{

position: relative;
z-index: 200;
/* border: 1px solid black; */
/* text-align: center; */
margin: 0 auto;
width: 1035px;

}
/*-----버튼 스타일지정-------*/
.btn{
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

/*콘텐츠 1,2,3, 영역 설정 (간격설정) */
#content1 tr{ height: 71px;
}
#content1 th{
    color: #333333;
    font-size: 16px;
    font-weight: 400;
}

#content1 td{
    height: 71px;
    width: 100%;
    padding-top: 20px;
    text-align: left;
    float: left;
    border-bottom: 1px solid #dcdcdc;
}

#tCon2{margin-top: 10px;}
#con2_3{margin-top: 60px;}



/*기본입력정보 영역 설정 */



/*필수 입력 특수문자 강조 컬러 스타일설정 */
.red{color: #a90000; font-weight: 900;}
.tTitle{
    font-size: 20px;
    font-weight:400;
    float: left;
    margin-bottom: 10px;
}

/*---------------------생일,번호 select,option스타일-----------------*/

.bBox,.pbox,.pmiddle,.plast{
    height: 42px;
    border: 1px solid #dcdcdc;
    
}

/*-------------------생일-------------------------*/
#birth_year,#front{width: 125px;}
#birth_month,#birth_day,#middle,#last{width: 125px;}


/*-------------------------이메일-------------------------*/
#selectEmail{
    width: 100px;
    height: 45px;
    border: 1px solid #dcdcdc;
}
#custEmailId{border: 1px solid #dcdcdc;}
#custEmailDomein{border: 1px solid #dcdcdc;}

/*---------------------------------주소--------------------*/
#custAddress{
    width: 400px;
    height: 42px;
    border: 1px solid #dcdcdc;
}
#btnPostCode{
    margin-left: 10px;  
    font-weight: 600;
    font-size: 14px;
}
#custInputAddress{
    width: 400px;
    height: 42px;
    border: 1px solid #dcdcdc;
    /* margin-left: 269px; */
    margin-top: 24px;
    margin-bottom: 15px;
    
}


/*------------------------회원 구독 정보 ------------------------------*/
#con2_1,#con2_2,#con2_3{
    padding-bottom: 30px;
    font-weight: 600;
}
 table{
    font-weight: 600;
    width: 100%;
    border-bottom: 1px solid black;
    border-top: 3px solid black;
    height: 160px;
 
   
 }

 table thead{
 
    font-weight: 600;
    height: 50px;
 }

table th{
   
    font-weight: 500;
    background-color: #e7e7e7;
    border-bottom: 1px solid #dcdcdc;
    text-align: center;
}

table tr{
   text-align: center;
    font-weight: 400;
    font-size: 14px;
    color: #333333;
    border-bottom: 1px solid #dcdcdc;
}

.cont3 td{
    text-align: left;
   
    font-weight: 600;
    font-size: 14px;
    color: #333333;
    border-bottom: 1px solid #dcdcdc;
    
}
.con2_1{margin-bottom: 45px;}
/*------------------비밀번호 수정--------------------------------*/
.cont3 th{
    font-size: 16px;
    font-weight: 400;
    color: #333333;
    
}

/*---------------------푸터--------------------------------------*/

  
			
	
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
            <div class="tTitle">
                기본정보 입력
            </div>
        
        <form action="" id="contents">
            <table id="content1">
                <colgroup>
                    <col width="288px"><col width="764px">
                 </colgroup>

                 <tbody align="left">
                    <tr>
                        <th>아이디</th>
                        <td></td>
                    </tr>
                    <tr>
                        <th>이름</th>
                        <td></td>
                        
                    </tr>
                    <tr>
                        <th>전화번호</th>
                        <td>  
                            <select class="pbox" id="front">
                            <option disabled selected>010</option>
                             </select>
                          <input type="phone" class="pmiddle">
                         <input type="phone" class="plast"></td>
                        
                    </tr>
                    <tr>
                        <th>이메일</th>
                        <td>
                            <span>
                            <input type="email" id="custEmailId" name="custid" placeholder="이메일아이디" style="height: 42px;" required >
                       
                            <input type="txt" class="duplicate_email" id="custEmailDomein" style="width: 125px; height: 42px;"   readonly="readonly" placeholder>
                       
                             <select class="normal"  name="" id="selectEmail">
                              <option value selected >선택</option>
                              <option value="naver.com">naver</option>
                              <option value="gmail.com">gmail</option>
                              <option value="hanmeil.com">hanmail</option>
                              <option value="nate.com">nate</option>
                              <option value="daum.com">daum</option>
                              <option value="write">직접입력</option>
                           </select>
                          </span>
                        </td>

                    </tr>
                    <tr>
                        <th rowspan="2" >주소</th>
                       <td style="border: none;">
                        <span>
                        <input type="text" id="custAddress" readonly="readonly" value="">
                       <input type="button" id="btnPostCode" class="btn_post_search" style="width: 140px; height: 45px; background-color: #7d7d7d; border: none; color: aliceblue;" value="우편번호 검색">
                       <input type="text" name="custAddress" id="custInputAddress" readonly>  </span>  
                    </td>
                    
                    </tr>
                    <tr>
                    </tr>
                 </tbody>

            </table>
           
            <button id="btnInfoChange" class="btn" >나의 정보 수정</button>


         <!--************************회원구독정보********************************************-->
         <div class="con2_1" class="infoCon2">
     
                <span class="tTitle" >회원 구독 정보</span>
          
         <table id="tCon2" >
             <!--회원구독정보/ 내역 테이블에서 td영역은 입력값을 받아야합니다~ --------------!!*수정 필요*!!------------------ -->
            <colgroup>
            <col  style="width: 288px;">
            </colgroup>
            <tbody align="left" >
                
                <tr>
                    <th>구독 번호</th>
                    <td>NO.54546546</td>
                </tr>
                <tr> 
                    
                    <th>구독 기간</th>
                    <td>2023-11-15 ~ 2023-12-14</td>
                </tr>
            </tbody>
            
            
        </table>
        </div>
        <!--*********************************회원구독내역********************************************-->
        <!--회원구독정보/ 내역 테이블에서 td영역은 입력값을 받아야합니다~ ----------------------------- -->
        <div class="con2_2" class="infoCon2">
            <span class="tTitle">회원 구독 내역</span>
            <table id="tCon2" >
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
        <tbody align="left" >
            <tr> 
                <td>1</td>
                <td>2023-11-03~2023-12-03</td>
                <td>23.11월 호</td>
                <td>2023-11-03</td>
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

     <button id="btnsubCancle" class="btn" >해지하기</button>
    </div>


     <!--*************************비밀번호 수정******************************** -->

     
     <form action="" method="post" id="con2_3" class="infoCon2">
         <span class="tTitle" >비밀번호 수정</span>
         <table id="tCon2" class="cont3">
        <colgroup>
        <col  style="width: 288px;">
        </colgroup>
        <tbody align="left" >
            <tr>
                <th>기존 비밀번호</th>
                <td><input type="password" style="width: 400px; height: 42px; border: 1px solid #dcdcdc;"></td>
            </tr>
      
            <tr> 
                <th>새 비밀번호</th>
                <td><input type="password" placeholder="영문+숫자+특수문자 조합 8~16자리" style="width: 400px; height: 42px; border: 1px solid #dcdcdc;"></td>

            </tr>
            <tr> 
                <th>새 비밀번호 확인</th>
                <td><input type="password" placeholder="비밀번호 확인을 위해 한 번 더 입력해 주시기 바랍니다." style="width: 400px; height: 42px; border: 1px solid #dcdcdc;"></td>
        
            </tr>
          
        </tbody>
     </table>    

     <button id="chPwd" class="btn">비밀번호 수정</button>
     
    </form>




		
	<script>


var msg = "<%=alertMsg%>";


if(msg!='null'){ 
	alert(msg);
	
	<%session.removeAttribute("alertMsg");%>
}

</script>	
		
</body>




</html>