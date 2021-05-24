<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>| MemberModify |</title>
<style>
table, tr, td, th {
	border: 1px solid black;
	border-collapse: collapse;
	padding: 3px;
}
</style>
</head>
<body>
<form action="memberModify" method="POST" name="modiForm">
		<table>
			<caption>${modify.momId}님회원정보</caption>
			<tr>
				<th>아이디</th>
				<td>${modify.momId}</td>
				<input type="hidden" name="momId" value="${modify.momId}">
			</tr>
			<tr>
				<th>현재 패스워드</th>
				<td><input type="password" id="momPw"></td>
			</tr>
			<tr>
				<th>변경할 패스워드</th>
				<td><input type="password" name="momPw"></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><input type="text" name="momName"
					placeholder="${modify.momName}"></td>
			</tr>
			<tr>
				<th>생년월일</th>
				<td><input type="date" name="momBirth"
					placeholder="${modify.momBirth}"></td>
			</tr>
			<tr>
				<th>성별</th>
				<td>남자<input type="radio" name="momGender" value="남자"> 여자<input
					type="radio" name="momGender" value="여자"></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><input type="email" name="momEmail"
					placeholder="${modify.momEmail}"></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="momPhone"></td>
			</tr>
			<tr>
				<td>캐시</td>
				<td>${modify.momMoney}</td>
			</tr>
			<tr>
				<td>구독권</td>
				<td>${sessionScope.loginId2}</td>
			</tr>
			
			
			
			<tr>
				<td colspan="2"><input type="button" value="정보수정"
					onclick="memberModify()"> <input type="reset" value="다시작성">
				</td>
			</tr>
		</table>
	</form>
</body>
<script>
	function memberModify() {
		var password = '${modify.momPw}';
		var passwordConfirm = document.getElementById("momPw").value;

		if (password == passwordConfirm) {
			modiForm.submit();
		} else {
			alert('비밀번호가 틀립니다.');
		}
	}
</script>
</html>