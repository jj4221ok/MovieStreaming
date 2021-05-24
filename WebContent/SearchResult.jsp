<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MovieSearch Result</title>
<style>
table tr, td {
	border: 1px black solid;
	border-collapse: collapse;
}
tr, td {
	padding: 5px;
}
.div1, .list {
	text-align: center;
	margin: auto;
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
a {
	text-decoration: none;
}
</style>
</head>
<body>
	<br id="top"><h1 style="text-align:center">영화 검색 목록</h1>
	
	<div class="div1">
		<!-- 메뉴 -->
		<ul>
			<li><a href="movieList">HOME</a></li>
		</ul>
	</div>
	
	
			<!-- 검색 목록 화면 -->
			<table class="list">

				<tr>
					<c:forEach var="search" items="${movieSearch}" varStatus="status">
						
						<td><a href="movieView?moNum=${search.moNum}"><img
								alt="업로드 사진" src="fileUpload/${search.moPic}"></a><br><br>${search.moTitle}</td>
						
						
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