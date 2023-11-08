<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//로그인 정보 꺼내놓기 
	//session객체에 loginUser 객체와 alertMsg 메세지를 담아놓음 
	//Member loginUser = (Member)session.getAttribute("loginUser");
	//로그인 전 menubar.jsp 로딩되면 loginUser == null
	//로그인 후 menubar.jsp 로딩되면 로그인한 회원정보담긴 Member객체
	//로그인 전 menubar.jsp 로딩되면 alertMsg == null
	//로그인 후 menubar.jsp 로딩되면 alertMsg == 성공메세지 
%>    
<!DOCTYPE html>
<html>
<head>
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
            border-bottom: 3px solid #313131;
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


        table{
            width: 1000px;
            margin-top: 150px;
        }
		
        td{
            height: 70px;
        }

        #tdtitle{
            width: 50px;

        }

        th{
            text-align: left;
            padding-left: 20px;
            
        }

        #trtitle{
            border-bottom: 1px solid #DDDDDD;
        }

        #title{
            justify-content: left;
            display: flex;
            width: 580px;
            height: 46px;
            border: 1px solid #D2D2D2;
            margin-left: 15px;
        }

        #tripselect{
            justify-content: left;
            display: flex;
            width: 250px;
            height: 46px;
            border: 1px solid #D2D2D2;

        }

        #content{
            justify-content: left;
            display: flex;
            width: 900px;
            border: 1px solid #D2D2D2;
            
        }
        
        #file{
            border: 1px solid #D2D2D2;
            width: 120px;
            height: 35px;
            padding-top: 7px;
            font-size: 13px;
            font-weight: 600;
            margin-right: 683px;
            margin-bottom: 15px;
        }

        #bottondiv{
            padding-top: 40px;
            
        }

        #button1{
            width: 160px;
            height: 50px;
            background-color: #fff;
            border: 0.5px solid #000;
            font-weight: 600;
        }

        #button2{
            width: 160px; 
            height: 50px; 
            background-color: #A12B2B; 
            color: #ffffff;
            border: none;
            font-weight: 500;

        }

    </style>
</head>
<body>
	<!-- ../ 상위폴더로 이동 -->
	<%@ include file="/views/common/headerBar.jsp" %>	
	
	<script>
			
			var msg = '<%=alertMsg%>'; //이건 가능 (문자열 처리해주기[값자체로 나옴])
			
		
			if(msg != 'null'){ //alertMsg가 null인경우 자바스크립트에 담길때 문자열이 되기때문에
							   //비교도 문자열로 비교해야함.
				alert(msg);
				//alertMsg를 session에서 지워주지않으면 계속 메세지가 나오기때문에 한번 띄우고 지우기 
				<%session.removeAttribute("alertMsg");%>
				
			}		
		</script>

	<div class="wrap">

       
		
        
        <!--인덱스 타이틀-->
        <div id="title1">서울 여행 정보 공유 사이트</div>

        <!--게시판 타이틀-->
        <div id="title2">늴리리 공지사항</div>

        <!--게시글 작성 테이블-->
        
        <form action="${contextPath }/update.no" method="post" id="update-area" enctype="multipart/form-data">
        <input type="hidden" name="boardNo" value="${n.boardNo }">
        
        <table class="list-area" align="center">
			<thead>
				<tr id="trtitle">
                    <th width="30">공지유형</th>
                    <td>
                        <select name="tripselect" id="tripselect">
                            <c:forEach items="${cList}" var="c">
								<option value="${c.categoryNo }">${c.categoryName }</option>
							</c:forEach>
                        </select>
                        
                        <script>	
							$(function(){
								//비교대상 : Board 객체에 담겨있는 category(카테고리이름)
								//select option 목록에서 똑같은 카테고리이름인 요소를 선택하기 
								var choose =  "${n.boardCategory}"; //Board 객체에 담겨있는 category(카테고리이름)
								
								$("#update-area option").each(function(){
									
									//데이터베이스에서 조회해온 게시글의 카테고리와 카테고리목록중 텍스트가 같은 요소
									if($(this).text()==choose){ // 비교대상이 같다면 
										$(this).attr("selected",true);//해당 요소객체의 selected속성을 true값으로 변경
										//선택되어짐
										return false; //break; 역할 
									}
								});
							});
						
						</script>
                        
                    </td>
					
					
					<th>제목</th>
                    <td id="tdtitle" width="700"><input type="text" name="title" id="title" value="${n.boardTitle }" required></td>
                </tr>
                
                
                <tr>
                    <th width="100" height="280">내용</th>
                    <td colspan="4">
                        <textarea name = "content" id="content" cols="30"
                        rows="10" style="resize: none;">${n.boardContent }</textarea>
                    </td>
                        
                </tr>
            </thead>
            <tbody>
                <tr>
                        <td colspan="4" >
                        <c:if test="${at != null }">
							<%--첨부파일이 있다면 해당 정보를 보여줘야한다. --%>
							${at.originName }
							<%--원본파일의 파일번호와 수정명을 서버에 전달하기(원본파일에 대한 처리를 위해) --%>
							<input type="hidden" name="originFileNo" value="${at.fileNo }">
							<input type="hidden" name="originFileName" value="${at.changeName }">
						</c:if>
                            <label for="input-file" id="file">첨부하기</label>
                            <input type="file" name="uploadFile" id="input-file" style="display: none;">   
                        </td>

                </tr>
            </tbody>
			

		</table>

		
			
       <!--버튼-->
       <div align="center" id="bottondiv">
            
            <button type="button" id="button1" onclick="history.back();">뒤로가기</button>
            
            <button type="submit" id="button2">수정하기</button>
			
		</div>
		
        </form>
        
         
		

			
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

