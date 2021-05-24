<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>| ReviewModify |</title>
<style>
	table,td,th{text-align: center; border : 2px solid black;	padding:5px; margin: auto; }
	textarea{width:300px; height:200px; resize:none;}
	 
</style>
</head>
<body>
			<div style="text-align: center">
				<form action="reviewModify" method="POST">
					<table>
						<tr>
						 <th>글번호</th>
						 <td>${review.morNum}<input type="hidden" name="morNum" value="${review.morNum}">
						 <input type="hidden" name="morMonum" value="${review.morMonum}">
						 </td>
						</tr>
							<tr>
					<th>작성자</th>
					<td>${review.morId}<input type="hidden" name="morId" value="${review.morId}"></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea cols="" rows="20" cols="30" name="morContents"  placeholder="수정할 내용을 입력해주세요.(100자 이내)"></textarea></td>
				</tr>
	
				<tr>
			     <th>점수</th>
				<td><select name="morStar">
				<option>선택</option>
				<option value="5점">5점</option>
				<option value="4점">4점</option>
				<option value="3점">3점</option>
				<option value="2점">2점</option>
				<option value="1점">1점</option>
				<option value="0점">0점</option>
				</select></td></tr>
	
				<tr>
					<td colspan="2"><input type="submit" value="등록"></td>
					<td colspan="2"><button onclick="history.back()">뒤로</button></td>
				</tr>
			</table>
		</form>
		</div>
</body>
</html>