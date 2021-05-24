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
			<td>${movie.moTitle}</td>
		</tr>

		<tr>
			<th>영화</th>
			<td>${movie.moUrl}</td>
		</tr>

		<tr>
			<th>줄거리</th>
			<td>${movie.moContents}</td>
		</tr>

		<tr>
			<th>상영시간</th>
			<td>${movie.moTime}</td>
		</tr>

		<tr>
			<th>장르</th>
			<td>${movie.moGenre}</td>
		</tr>

		<tr>
			<th>개봉일</th>
			<td>${movie.moDate}</td>
		</tr>

		<tr>
			<th>출연진</th>
			<td>${movie.moAct}</td>
		</tr>

		<tr>
		<c:choose>
		
		
		<c:when test="${sessionScope.loginId eq 'admin'}">
		

			<td colspan="2" style="text-align: center">
				<a href="movieModifyForm?moNum=${movie.moNum}">수정</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="adminmovieList?page=${page}&limit=${limit}">목록보기</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				
				<a href="movieDelete?moNum=${movie.moNum}">삭제</a>
				<form action="reviewList" method="POST" name="movieSave">
					
					<input type="hidden" name="moId" id="moId" value="${sessionScope.loginId}">
					<input type="hidden" name="moNum" id="moNum" value="${movie.moNum}">
					<input type="button" onclick="location.href='reviewList'" value="리뷰보기">
					</form></td>
				
				
		</c:when>
		
		
		
			<c:when test="${sessionScope.loginId != null}">	
				<td colspan="2" style="text-align: center">
				
					<form action="movieSave" method="POST" name="movieSave">
					<input type="hidden" name="mosId" id="mosId" value="${sessionScope.loginId}">
					<input type="hidden" name="moNum" id="moNum" value="${movie.moNum}">
					
					<input type="hidden" name="moTitle" id="moTitle" value="${movie.moTitle}">
					<input type="hidden" name="moPic" id="moTitle" value="${movie.moPic}">
					
					<button onclick="addList()">찜 추가</button>
					</form> 
					<form action="reviewList" method="POST" name="movieSave">
					
					<input type="hidden" name="moId" id="moId" value="${sessionScope.loginId}">
					<input type="hidden" name="moNum" id="moNum" value="${movie.moNum}">
					
					<button onclick="location.href='reviewList?morNum=${movie.moNum}'">리뷰보기</button>
					</form>
					<button onclick="window.history.back()">뒤로 가기</button></td>
			</c:when>
			
			
		</c:choose>	
				
		</tr>

	</table>

</body>




<script>
</script>





</html>