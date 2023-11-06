<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    <%
	//로그인 정보 꺼내놓기 
	//session객체에 loginUser 객체와 alertMsg 메세지를 담아놓음 
	//Member loginUser = (Member)session.getAttribute("loginUser");
	//로그인 전 menubar.jsp 로딩되면 loginUser == null
	//로그인 후 menubar.jsp 로딩되면 로그인한 회원정보담긴 Member객체
	//로그인 전 menubar.jsp 로딩되면 alertMsg == null
	//로그인 후 menubar.jsp 로딩되면 alertMsg == 성공메세지 
%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
	 <!-- jQuery library -->
	<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
    <!-- Popper JS -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Bagel+Fat+One&family=Gaegu:wght@300;400;700&family=IBM+Plex+Sans+KR&family=Nanum+Brush+Script&family=Nanum+Gothic&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

    <meta charset="UTF-8">
<title>Insert title here</title>
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
            text-align: center;
        }
		
		.list-area>tbody tr:hover{
			background-color:#DADEE8;
			cursor : pointer;
		}

        td{
            border-bottom: 1px solid #DDDDDD;
            height: 46px;
        }

        th{
            height: 54px;
            text-align: center;
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
            margin-left: 750px;
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
        }

        div{
            font-family: 'Nanum Gothic', sans-serif;
            font-weight: 100;
        }

        #write{
            padding-top: 30px;
            padding-left: 850px;
        }

        table{
            width: 1000px;
            margin-top: 150px;
        }
        
        #insertNo{
        	width: 110px; 
        	height: 40px
        }
    </style>
</head>
<body>
	<!-- ../ 상위폴더로 이동 -->
	
	<%@ include file="/views/common/headerBar.jsp" %>	
	

	<div class="wrap">

         <!--헤더영역 블랙라인 + 로고 -->
       

		<br>
        
        <div id="title1">서울 여행 정보 공유 사이트</div>

        <div id="title2">늴리리 공지사항</div>

		<table class="list-area" align="center">
			<thead>
				<tr>
					<th width="50">번호</th>
					<th width="100">카테고리</th>
					<th width="400">제목</th>
					<th width="100">작성자</th>
					<th width="150">등록일</th>
					<th width="50">조회수</th>
				</tr>
			</thead>
			<tbody>
			<!-- 리스트가 비어있는 경우 -->
                <c:choose>
                	<c:when test="${empty list}">
					<tr>
						<td colspan='6'>게시글이 없습니다.</td>
					</tr>
					</c:when>
						<c:otherwise>
							<c:forEach items="${list}" var="n">
								<tr>
									<td>${n.boardNo}</td>
									<td>${n.boardCategory}</td>
									<td>${n.boardTitle}</td>
									<td>${n.memberId}</td>
									<td>${n.regiDate}</td>
									<td>${n.count}</td>
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
            </tbody>
		</table>
		
			
		<!-- 글작성 버튼은 로그인한 회원만 볼수 있도록 작업 -->
       <!--<c:if test="${not empty loginUser}"></c:if> --> 
		<div align="center" id="write">
			<a id="insertNo" class="btn btn-dark" href="${contextPath }/insert.no">글작성</a>
		</div>
		
		 <script>
        	//글 클릭했을때 글번호를 detail.bo 로 전달하며 페이지 요청하기
        	$(function(){
        		
        		//테이블에 tbody -> tr이 클릭되었을때 해당 글번호를 추출하여 detail.bo?bno=글번호
        		$(".list-area>tbody>tr").click(function(){
        			//$(this).children().eq(0).text() : 글번호 추출
        			location.href="detail.no?nno="+ $(this).children().eq(0).text();
        			
        		});
        		
        		
        	});
        </script>
		
		
        <!-- 페이징바 -->
        <div align="center" class="paging-area">
			
			<!-- 이전/다음 버튼 만들기 (1페이지에서는 이전버튼 비활성화) 
				마지막 페이지에서는 다음버튼 비활성화  
			-->
			<!-- 이전 -->
			<c:choose>
				<c:when test="${pi.currentPage eq 1}">
					<button disabled>이전</button>
				</c:when>
				<c:otherwise>
					<button onclick="location.href='list.no?currentPage=${pi.currentPage-1}'">이전</button>
				</c:otherwise>
			</c:choose>
			
			<c:forEach var="i" begin="${pi.startPage}" end="${pi.endPage }">
				
				<button onclick="location.href='list.no?currentPage=${i}'">${i}</button>
			
			</c:forEach>
			
			<!-- 다음 -->
			<c:choose>
				<c:when test="${pi.currentPage eq pi.maxPage}">
					<button disabled>다음</button>
				</c:when>
				<c:otherwise>
					<button onclick="location.href='list.no?currentPage=${pi.currentPage+1}'">다음</button>
				</c:otherwise>
			</c:choose>
		
		</div>
		
		
			<script>
			
			var msg = '<%=alertMsg%>'; //이건 가능 (문자열 처리해주기[값자체로 나옴])
			
		
			if(msg != 'null'){ //alertMsg가 null인경우 자바스크립트에 담길때 문자열이 되기때문에
							   //비교도 문자열로 비교해야함.
				alert(msg);
				//alertMsg를 session에서 지워주지않으면 계속 메세지가 나오기때문에 한번 띄우고 지우기 
				<%session.removeAttribute("alertMsg");%>
				
			}		
		</script>
			
		
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

