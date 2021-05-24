<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Movie Upload</title>
<style>
	a {
		text-decoration: none;
	}
</style>
</head>
<body>
	

	<form action="movieWrite" method="POST" enctype="multipart/form-data">
		<table>

			<tr>
				<th>영화제목</th>
				<td><input type="text" name="moTitle"></td>
			</tr>

			<tr>
				<th>영화사진</th>
				<td><input type="file" name="moPic"></td>
			</tr>

			<tr>
				<th>영상주소</th>
				<td><input type="text" name="moUrl"><br>
					<button><a href="https://www.youtube.com" target="_blank">검색하기</a></button></td>
			</tr>
			
			<tr>
				<th>줄거리</th>
				<td><input type="text" name="moContents"></td>
			</tr>
			
			<tr>
				<th>상영시간</th>
				<td><input type="text" name="moTime"></td>
			</tr>
			
			<tr>
				<th>장르</th>
				<td><select name="moGenre">
						<option>영화 장르</option>
						<option value="액션">액션</option>
						<option value="로맨스">로맨스</option>
						<option value="SF">SF</option>
						<option value="호러">호러</option>
						<option value="판타지">판타지</option>
						<option value="코미디">코미디</option>
						<option value="애니메이션">애니메이션</option>
					</select>
				</td>
			</tr>
			
			<tr>
				<th>개봉일</th>
				<td><input type="date" name="moDate"></td>
			</tr>
			
			<tr>
				<th>출연진</th>
				<td><input type="text" name="moAct"></td>
			</tr>

			<tr>
				<td colspan="2"><input type="submit" value="등록"></td>
			</tr>
		</table>
	</form>
	
	

</body>


</html>


