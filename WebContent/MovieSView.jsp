<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MovieStreaming | Movie View</title>
<style>
table, tr, td, th {
	border: 1px solid black;
	border-collapse: collapse;
}

td, th {
	padding: 10px;
}
</style>
</head>
<body>
	<table>

		<tr>
			<th>영화제목</th>
			<td>${movieS.moTitle}</td>
		</tr>

		<tr>
			<th>영화</th>
			<td>${movieS.moUrl}</td>
		</tr>

		<tr>
			<th>줄거리</th>
			<td>${movieS.moContents}</td>
		</tr>

		<tr>
			<th>상영시간</th>
			<td>${movieS.moTime}</td>
		</tr>

		<tr>
			<th>장르</th>
			<td>${movieS.moGenre}</td>
		</tr>

		<tr>
			<th>개봉일</th>
			<td>${movieS.moDate}</td>
		</tr>

		<tr>
			<th>출연진</th>
			<td>${movieS.moAct}</td>
		</tr>

		<tr>
		<c:choose>
		
		
		<c:when test="${sessionScope.loginId eq 'admin'}">
		

			<td colspan="2" style="text-align: center">
				<a href="movieModifyForm?moNum=${movie.moNum}">수정</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="adminmovieList?page=${page}&limit=${limit}">목록보기</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				
				<a href="movieDelete?moNum=${movie.moNum}">삭제</a></td>
		</c:when>
		
		
		
			<c:when test="${sessionScope.loginId != null}">	
				<td colspan="2" style="text-align: center">
					<form action="MovieSaveDelete" method="POST" name="movieDelete">
					<input type="hidden" name="mosId" value="${sessionScope.loginId}">
					<input type="hidden" name="moNum" value="${movieS.moNum}">
					<input type="hidden" name="moTitle" value="${movieS.moTitle}">
					<input type="hidden" name="moPic" value="${movieS.moPic}">
					<button onclick="deleteList()">찜 삭제</button>
					</form> 
				
				
				<button onclick="window.history.back()">뒤로 가기</button></td>
			</c:when>
			
			
		</c:choose>	
				
		</tr>

	</table>

</body>

<script>
function deleteList(){
	movieDelete.submit;
	
}



</script>








</html>