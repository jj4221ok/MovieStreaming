<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ReviewBoard || Write</title>
<style>
	table{text-align: center; border : 2px solid black;	padding:5px; }
	textarea{width:300px; height:200px; resize:none;}

</style>
</head>
<body>
	<form action="reviewWrite" method="POST">
		<table>
			<tr>
				<th>작성자</th>
				<td><strong>${sessionScope.loginId}</strong>
					<input type="hidden" value="${sessionScope.loginId}" name="morId">
					<input type="hidden" value="${moNum}" name="moNum">
					</td>	
			</tr>
			<tr>
				<td colspan="2"><hr></td>
			</tr>
			<tr>
				<th>리뷰내용</th>
				<td><textarea cols="" rows="20" cols="120" name="morContents" placeholder="감상평을 입력해주세요! ()100자 이내)"></textarea></td>
			</tr>
			<tr>
				<td colspan="2"><hr></td>
			</tr>
			<tr>
			        <th> 점수</th>
				<td><select name="morStar">
				<option>점수</option>
				<option value="5점">5점</option>
				<option value="4점">4점</option>
				<option value="3점">3점</option>
				<option value="2점">2점</option>
				<option value="1점">1점</option>
				<option value="0점">0점</option>
				</select></td>
			</tr>
			<tr>
				<td colspan="2"><hr></td>
			</tr>
			
			<tr>
				<td colspan="2"><input type="submit" value="리뷰작성완료"></td>
			</tr>
		</table>
	</form>
</body>
</html>