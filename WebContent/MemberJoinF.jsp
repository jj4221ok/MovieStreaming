<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MemberJoinF || JoinF</title>
</head>
<style>
		td{
		padding : 3px;
	}
</style>
<body>
	<form action="memberJoin" method="POST">
	<table> 
		<tr>
			<td>아이디</td>
			<td><input type="text" name="momId" id="momId">
			<input type="button" onclick="IdCheck()" value="중복확인">
			<br><span id="idResult"></span></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="momPw" id="momPw"></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type="text" name="momName" id="momName"></td>
		</tr>
		<tr>
			<td>생년월일</td>
			<td><input type="date" name="momBirth" id="momBirth"></td>
		</tr>
		<tr>
			<td>성별</td>
			<td>남자<input type="radio" name="momGender"  value="남자">
				여자<input type="radio" name="momGender"  value="여자"></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><input type="email" name="momEmail" id="momEmail"><</td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><input type="text" name="momPhone" id="momPhone"></td>
		</tr>
		<tr>
	 			<td colspan="2">
	 				<input type="button" onclick="submitForm()" value="회원가입">
	 				<input type="reset" value="다시작성">
	 			</td>
	 		</tr>
		
		
		
		
	</table>
	
	
	
	
	
	</form>





</body>
<script>
	var checkId = false;
	
	var mId = document.getElementById("momId");
	var idResult = document.getElementById("idResult");
	idResult.style.color ="#ff0000";
	idResult.innerHTML="사용중인 아이디 입니다!!";
	
	
	console.log(checkId);
	function IdCheck(){
		var mId = document.getElementById("momId");
		var idResult = document.getElementById("idResult");
		
		if(mId.value==""){
			idResult.style.color ="#ff0000";
			idResult.innerHTML="아이디를 입력해 주세요!";
		} else {
			location.href="idCheck?momId="+momId.value;
		}
	}
	
	function submitForm(){
		alert('아이디 중복체크를 해주세요!');
	}
</script>
</html>