<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<% 
String contextPath = request.getContextPath();
String alertMsg = (String)session.getAttribute("alertMsg");

%>

    <!-- jQuery library -->
   <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
  
  	<!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <!-- Popper JS -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    
    <!-- summernote(게시판 글쓰기 포맷) -->
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
  	<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
       
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var="contextPath" value="${pageContext.request.contextPath }"/>
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    
<!-- 기본 필요한 라이브러리 입니다 -->

<meta charset="UTF-8">
<title>Insert title here</title>
<style >


      .wrap{
            width: 1920px;
              text-align: center;
        }
        .wrap > div{
            width: 100%;
        }
        
        <c:choose>
			<c:when test="${empty loginMember }">
        
        #header{
            /* border: 1px solid black; */
            height: 165px;
            margin: 0 auto;
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
/*             margin-left:882.5px */
			margin: 0 auto;
        }
        </c:when>
			<c:otherwise>
			
	 *{font-family: 'Noto sans KR', sans-serif;}
        /*헤어 영역 사이즈값 (높이/세로영역)*/
        #header{
            /* border: 1px solid black; */
            height: 165px;
            position: absolute;
/*             text-align: center; */
            z-index: 100;
            margin:0 auto;
            
        }
 
        /*상단 블랙라인 */
        #line{         
            height: 35px;
            background-color: black;
        }
        /*헤더 중앙 로고 위치값 */
        #logo{
            position:absolute;
            /* border:1px solid black; */
            width: 155px;
            height: 70px;
            z-index: 101;
            top:60px ;
            /* margin-left:882.5px; */
/*             left: 50%; */
/*             translate: -50%; */
/*             margin: 0 auto; */
        }
        
        /*오른쪽상단 a태그 텍스트밑줄 제거*/
        #header a{text-decoration: none;}
        /*오른쪽 상단 메뉴 */
       #haeder ul,li{
           position: absolute;
            list-style: none;
            float: right;
            top: 100px;
            right: -17px;
            margin-left: 10px;
        }
        
        #header .utility li{
            text-align: center;
            float: left;
        }
        
        #header .utility .nonp{
            font-weight: 700;
            font-size: 10px;
            color:#626262;
            padding-top: -15px;
        }
        
        .utility #logout{
        padding-right: 390px;
        }
        
        .utility #mypage{
        padding-right: 290px;
        }
        
        .utility #notice{
        padding-right: 200px;
        }
 
        .utility #QnA{
        padding-right: 130px;
        }
        

        
        
			</c:otherwise>
	</c:choose>
</style>
</head>
<body>

<!--인클루드 하실때 제일 위에다가 해주세요 -->
	<c:choose>
			<c:when test="${empty loginMember }">
			<!-- 테스트 -->
		    <div class="wrap">
		        <div id="header">
		            <div id="line"></div>
		            <div id="logo">
		                <a href="http://localhost:8888/semi/"> <img src="${contextPath }/resources/mainIndex/logo.png" alt="3조로고"/></a>
		         	</div>
		        </div>
		        </div>
			</c:when>
			<c:otherwise>
			
			
	
        <!--헤더 영역 상단 블랙 라인이랑 로고 까지가 헤더영역입니다 ~-->
        <div id="header">
            <div id="line"></div>
            <div id="logo">
      		<a href="http://localhost:8888/semi/"><img src="${contextPath }/resources/mainIndex/logo.png" alt="3조로고"></a>     
          </div>
                  <ul class="utility">
                <!--로그아웃 버튼 영역-->

            <li>
                <a href="${contextPath }/logout.mb" id="logout" class="nonp">
             <img src="${contextPath }/resources/mainIndex/logout_ui.png" alt="logout_ui">
                로그아웃
                </a>
             </li>
            
            <!--마이페이지 버튼 영역-->
            <li>
               <a href="mypage.mb" id="mypage" class="nonp">
                <img src="${contextPath }/resources/mainIndex/myp_ui.png "alt="mypage_ui"> 
                마이페이지
               </a>  
            </li>
            <li>
              <a href="${contextPath}/list.no?currentPage=1" id="notice" class="nonp">
                <img src="${contextPath }/resources/mainIndex/notice_ui.png" alt="notice"> 
                공지사항
              </a>
            </li>
            <li>
              <a href="views/qna/qnaListView.jsp" id="QnA" class="nonp">
                <img src="${contextPath }/resources/mainIndex/qna_ui.png" alt="qna_ui"> 
               Q&A
              </a>  
            </li>
            </ul>
            
      
         </div>
			</c:otherwise>
	



		</c:choose>
		
		
		<!-- 전체영역 잡는 wrap 이어서 페이지에 들어갈 내용들 밑에있는 div 영역에 집어넣으시길 바랍니다 -->
		
		
		
	<script>
//왜이러지

var msg = "<%=alertMsg%>";


if(msg!='null'){ 
	alert(msg);
	
	<%session.removeAttribute("alertMsg");%>
}

</script>	
		
</body>




</html>