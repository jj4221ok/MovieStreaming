<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index || Main</title>
<style>
table tr, td {
	border: 1px black solid;
	border-collapse: collapse;
}

tr, td {
	padding: 5px;
}
.div1, .list {
	margin : auto;
	text-align:center;
}
a {
	text-decoration: none;
}
img {
	width : 100%;
	height : 80%;
}
li {
	background-color : rgb(245, 139, 174);
    color : white;
    width : 120px;
    height : 40px;
    text-align : center; 
    line-height : 40px; 
    font-size : 15px;
    font-weight : bold;
    border-radius : 5px;
    display : inline-block;
}
li:hover{
    background-color: aquamarine;
    font-size : 20px;
}
.fixed{
    position: fixed;	text-align: center;	
    width :40px;		height : 40px;	line-height: 40px;	
    top : 90%;	left : 90%;
    background-color: yellow;
    border-radius : 50px;
}
</style>


</head>
<body>
<h1>| Index | Main |</h1>

<c:choose>
	<c:when test="${sessionScope.loginId eq 'admin'}">
		<h3>관리자 모드로 접속중 입니다!</h3>
		<button onclick="location.href='memberList'">회원목록 보기</button>
		<button onclick="location.href='Logout'">로그아웃</button>
		
		
		<button onclick="location.href='adminmovieList'" style="float:right">관리자 영화목록</button>
	
	<button onclick="window.open('movieRandomList', 'MovieRandom', 'width=800,height=600');">영화추천</button>
	
	
	<br id="top"><h1 style="text-align:center">영화 목록</h1>
	
	
	<div class="div1">
	
		<!-- 영화검색 창 -->
		<form action="movieSearch" method="GET">
			<input type="text" name="search" placeholder="영화제목으로 검색하기">
			&nbsp;&nbsp;<input type="submit" value="검색">
		</form>
		
		
		<!-- 장르 메뉴 -->
		<ul>
			<li><a href="movieGenreList?moGenre=액션">액션</a></li>
			<li><a href="movieGenreList?moGenre=로맨스">로맨스</a></li>
			<li><a href="movieGenreList?moGenre=SF">SF</a></li>
			<li><a href="movieGenreList?moGenre=호러">호러</a></li>
			<li><a href="movieGenreList?moGenre=판타지">판타지</a></li>
			<li><a href="movieGenreList?moGenre=코미디">코미디</a></li>
			<li><a href="movieGenreList?moGenre=애니메이션">애니메이션</a></li>
			
		</ul>
	</div>
	<br><br>

			<!-- 메인 목록화면 -->
			<table class="list">

				<tr>
					<c:forEach var="movie" items="${moList}" varStatus="status">
						
						<td><a href="movieView?moNum=${movie.moNum}"><img
								alt="업로드 사진" src="fileUpload/${movie.moPic}"></a><br><br>${movie.moTitle}</td>
						
						
					<c:if test="${status.count%3==0}">
						<tr></tr>	
					</c:if>	
					
					</c:forEach>
				</tr>
				
			</table>

	
	 <div class="fixed">
        <a href="#top">↑</a>
     </div>
    
		
	</c:when>
	
	
	<c:when test="${loginId2.momSubD > 0}">
		<form action="movieSaveList" method="POST" name="SaveForm">
		
		<h3>${sessionScope.loginId}님이 접속중입니다.</h3>
		<h3>구독 기간은 ${sessionScope.loginId2} 까지 입니다.</h3>
		
		
		<input type="hidden" name="mosId" value="${sessionScope.loginId}">
		
		<button onclick="SaveList()">찜 목록 보기</button>
		</form>
		<button>구독중</button>
		<button onclick="location.href='memberView?momId=${sessionScope.loginId}'">내정보 보기</button>
		
		<button onclick="location.href='Logout'">로그아웃</button>
		
		
		
			<button onclick="window.open('movieRandomList', 'MovieRandom', 'width=800,height=600');">영화추천</button>
	
	
	<br id="top"><h1 style="text-align:center">영화 목록</h1>
	
	
	<div class="div1">
	
		<!-- 영화검색 창 -->
		<form action="movieSearch" method="GET">
			<input type="text" name="search" placeholder="영화제목으로 검색하기">
			&nbsp;&nbsp;<input type="submit" value="검색">
		</form>
		
		
		<!-- 장르 메뉴 -->
		<ul>
			<li><a href="movieGenreList?moGenre=액션">액션</a></li>
			<li><a href="movieGenreList?moGenre=로맨스">로맨스</a></li>
			<li><a href="movieGenreList?moGenre=SF">SF</a></li>
			<li><a href="movieGenreList?moGenre=호러">호러</a></li>
			<li><a href="movieGenreList?moGenre=판타지">판타지</a></li>
			<li><a href="movieGenreList?moGenre=코미디">코미디</a></li>
			<li><a href="movieGenreList?moGenre=애니메이션">애니메이션</a></li>
			
		</ul>
	</div>
	<br><br>

			<!-- 메인 목록화면 -->
			<table class="list">

				<tr>
					<c:forEach var="movie" items="${moList}" varStatus="status">
						
						<td><a href="movieView?moNum=${movie.moNum}"><img
								alt="업로드 사진" src="fileUpload/${movie.moPic}"></a><br><br>${movie.moTitle}</td>
						
						
					<c:if test="${status.count%3==0}">
						<tr></tr>	
					</c:if>	
					
					</c:forEach>
				</tr>
				
			</table>

	
	 <div class="fixed">
        <a href="#top">↑</a>
     </div>
		
		
		
		
	</c:when>
	
	
	<c:when test="${sessionScope.loginId != null}">
	
		<h3>${sessionScope.loginId}님이 접속중입니다.</h3>
		<form action="moneyC" method="POST">
		<input type="hidden" name="momId" value="${sessionScope.loginId}">
		
		<button onclick="momSub()">구독 하기</button>
		</form>
		<button onclick="location.href='memberView?momId=${sessionScope.loginId}'">내정보 보기</button>
		<button onclick="location.href='Logout'">로그아웃</button>
		<button onclick="reviewW()">리뷰작성하기</button>
		<button onclick="location.href='reviewList'">리뷰보기</button>
		<h1>구독권이 없습니다 구독하기 버튼을 눌러 구독후 이용해 주세요.</h1>
		
	</c:when>
	
	
	
	<c:otherwise>
		<button onclick = "Join()">회원가입(MemberJoin.jsp)</button>
		<button onclick = "Login()">로그인(MemberLogin.jsp)</button>
		
	</c:otherwise>
		
	</c:choose>
</body>
<script>
function Join(){
	location.href="MemberJoin.jsp"
}
function Login(){
	location.href="MemberLogin.jsp"	
}
function reviewW(){
	location.href="WriteForm.jsp"	
}

function momSub(){
	location.href="moneyC"
}

function SaveList(){
	SaveForm.submit;
}





</script>
</html>