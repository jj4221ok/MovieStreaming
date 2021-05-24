<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GenreList</title>
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
	<br id="top"><h1 style="text-align:center">영화 목록</h1>
	
	<div class="div1">
		<!-- 장르 메뉴 -->
		<ul>
			<li><a href="movieList">전체보기</a></li>
			<li><a href="movieGenreList?moGenre=액션">액션</a></li>
			<li><a href="movieGenreList?moGenre=로맨스">로맨스</a></li>
			<li><a href="movieGenreList?moGenre=SF">SF</a></li>
			<li><a href="movieGenreList?moGenre=호러">호러</a></li>
			<li><a href="movieGenreList?moGenre=판타지">판타지</a></li>
			<li><a href="movieGenreList?moGenre=코미디">코미디</a></li>
			<li><a href="movieGenreList?moGenre=애니메이션">애니메이션</a></li>
		</ul>
	</div>

			<!-- 메인 장르별목록화면 -->
			<table class="list">

				<tr>
					<c:forEach var="movie" items="${moGenreList}" varStatus="status">
						
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
    
</body>


</html>