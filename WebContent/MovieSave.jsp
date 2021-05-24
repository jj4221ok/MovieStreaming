<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	<br id="top"><h1 style="text-align:center">찜 목록</h1>
	<input type="button" onclick="location.href='movieList'" value="뒤로가기">
	
	
	
	
	<div class="div1">
			
			<table>

				<tr>
					<c:forEach var="save" items="${mosList}" varStatus="status">
					
						<td><a href="movieSView?moNum=${save.mosNum}"> 
						<img alt="업로드 사진" src="fileUpload/${save.mosPic}" width="400px"></a><br>${save.mosTitle}</td>
						
						
					<c:if test="${status.count%3==0}">
						<tr></tr>	
					</c:if>	
					
					</c:forEach>
				</tr>
				
			</table>
		
	</div>
	
	 <div class="fixed">
        <a href="#top">↑</a>
        
    </div>
  
    
</body>


</html>