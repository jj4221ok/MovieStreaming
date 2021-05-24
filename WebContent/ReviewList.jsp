<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>| ReviewList |</title>
<style>
table,td,th {
	margin: auto;
	border: 1px solid black;
}

td, th {
	padding: 10px;
}

</style>
</head>
<body>
	<h1 style="text-align:center" >debug : ${sessionScope.loginId}</h1>
	<div style="text-align: center">

		<table style="text-align: center">

			<thead>
				<tr>
					<th style="width: 5%">글번호</th>
					<th style="width: 25%">작성자</th>
					<th style="width: 55%">내용</th>
					<th style="width: 5%">별점</th>
					<c:if test="${sessionScope.loginId eq 'admin'}">
					<th style="width: 5%">수정</th>
					<th style="width: 5%">삭제</th>
					</c:if>
					
				</tr>
			</thead>

			<tbody>
				<c:forEach var="rList" items="${review}">
					<tr>
						<td>${rList.morNum}</td>
						<td>${rList.morId}</td>
						<td>${rList.morContents}</td>
						<td>${rList.morStar}</td>
						<c:if test="${sessionScope.loginId eq 'admin'}">
								<td><button onclick="location.href='reviewModifyForm?morNum=${rList.morNum}'">수정</button></td>
								<td><button onclick="reviewDelete(${rList.morNum}, '${rList.morId}')">삭제</button></td>
						</c:if>
						<c:if test="${sessionScope.loginId eq rList.morId}">
						<td><button onclick="location.href='reviewModifyForm?morNum=${rList.morNum}'">수정</button></td>
								<td><button onclick="reviewDelete(${rList.morNum}, '${rList.morId}')">삭제</button></td>
						</c:if>
					</tr>

					<input type="hidden" id="moNum" value="${rList.morMonum}">
					<input type="hidden" id="morId" value="${rList.morId}">
					<input type="hidden" id="morNum" value="${rList.morNum}">
					<input type="hidden" id="loginId" value="${sessionScope.loginId}">
				</c:forEach>
				<tr>
					<td colspan="6" style="text-align: right">
					<button onclick="location.href='morwriteFrom?moNum=${moNum}'">글쓰기</button>
					<button onclick="history.back()">뒤로</button></td>
				</tr>
			</tbody>
		</table>




		

</body>
<script>
	function reviewModify() {
		var loginId = document.getElementById("loginId").value;
		var morId = document.getElementById("morId").value;
		var morNum = document.getElementById("morNum").value;
	
		console.log("loginId : " + loginId);
		console.log("morId : " + morId);
	
		if (loginId != morId && loginId != 'admin') {
			alert('본인이 작성한 글이 아닙니다!');
		} else {
			location.href = "reviewModifyForm?morNum=" + morNum;
		}
	
	}	
	function reviewDelete(morNum, morId) {
		var loginId = document.getElementById("loginId").value;
		var moNum = document.getElementById("moNum").value;
		
		console.log("morNum : " + morNum);
		console.log("morId : " + morId);
		console.log("loginId : " + loginId);
		console.log("moNum : " + moNum);


		if (loginId != morId && loginId != 'admin') {
			alert('본인이 작성한 글이 아닙니다!');
		} else {
			
			location.href = "reviewDelete?morNum="+morNum+"&moNum="+moNum;
		}

	}
	
</script>
</html>