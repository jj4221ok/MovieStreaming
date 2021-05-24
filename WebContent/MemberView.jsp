<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>| MemberView |</title>
<style>
table, tr, td, th {
	border: 1px solid black;
	border-collapse: collapse;
	padding: 3px;
}
</style>
</head>
<body>
	<table>
		<caption>${member.momId}님회원정보</caption>
		<tr>
			<th>아이디</th>
			<td>${member.momId}</td>
		</tr>
		<tr>
			<th>패스워드</th>
			<td>${member.momPw}</td>
		</tr>
		<tr>
			<th>이름</th>
			<td>${member.momName}</td>
		</tr>
		<tr>
			<th>생년월일</th>
			<td>${member.momBirth}</td>
		</tr>
		<tr>
			<th>성별</th>
			<td>${member.momGender}</td>
		</tr>
		<tr>
			<th>이메일</th>
			<td>${member.momEmail}</td>
		</tr>
		<tr>
			<th>캐시</th>
			<td>${member.momMoney}</td>
		</tr>
		<tr>
			<th>구독권</th>
			<c:choose>

				<c:when test="${sessionScope.loginId eq 'admin'}">
					<td>관리자 모드 입니다.</td>
				</c:when>
				
				<c:when test="${member.momSubD >0}">
					<td>${member.momSub}까지${member.momSubD}일 남음</td>
				</c:when>
				
				<c:otherwise>
					<td>구독권을 구매해 주세요 .</td>
				</c:otherwise>

			</c:choose>
		</tr>
		<tr>
			<td colspan="2"><c:if
					test="${sessionScope.loginId eq member.momId}">
					<button
						onclick="location.href='memberDelete?momId=${member.momId}'">탈퇴하기</button>
					<button
						onclick="location.href='memberModifyForm?momId=${member.momId}'">수정하기</button>
				</c:if> <c:if test="${sessionScope.loginId eq 'admin'}">
					<button
						onclick="location.href='memberDeleteAdmin?momId=${member.momId}'">탈퇴시키기</button>
					<button
						onclick="location.href='memberList?page=${page}&limit=${limit}'">회원목록보기</button>
				</c:if>
				<button onclick="history.back()">뒤로</button></td>
		</tr>
	</table>
</body>
</html>