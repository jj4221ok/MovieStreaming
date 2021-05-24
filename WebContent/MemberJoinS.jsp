<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MemberJoin || JoinS</title>
</head>
<style>
		td{
		padding : 3px;
	}
</style>
<body>
	<form action="memberJoin" method="POST" name="joinForm">
	<table> 
		<tr>
			<td>아이디</td>
			<td><input type="text" name="momId" id="momId" value="${momId}">
			<input type="button" onclick="IdCheck()" value="중복확인">
			<br><span id="idResult"></span></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="momPw" id="momPw"
					onkeyup="PwCheck()"> <br>
				<span id="pwResult"></span></td>
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
			<td>남자<input type="radio" name="momGender" id="momGender1"  value="남자">
				여자<input type="radio" name="momGender" id="momGender2" value="여자"></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><input type="email" name="momEmail" id="momEmail"></td>
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
var checkId = true;

var momId = document.getElementById("momId");
var idResult = document.getElementById("idResult");
idResult.style.color = "#0000ff";
idResult.innerHTML = "사용가능한 아이디 입니다!!";

console.log(checkId);
function IdCheck() {
	var momId = document.getElementById("momId");
	var idResult = document.getElementById("idResult");

	if (mId.value == "") {
		idResult.style.color = "#ff0000";
		idResult.innerHTML = "아이디를 입력해 주세요!";
	} else {
		location.href="idCheck?momId="+momId.value;
	}
}

function PwCheck() {
	var momPw = document.getElementById("momPw");
	var pwResult = document.getElementById("pwResult");

	var momPwVal = momPw.value;

	var num = momPwVal.search(/[0-9]/g);
	var eng = momPwVal.search(/[a-z]/ig);
	var spe = momPwVal.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);

	if (momPwVal.length <= 0) {
		pwResult.innerHTML = "";
		return false;
	} else if (momPwVal.length<8 || momPwVal.length>10) {
		pwResult.style.color = "#ff0000";
		pwResult.innerHTML = "8~10자리 이내로 입력해주세요!";
		return false;
	} else if (momPwVal.search(/\s/) != -1) {
		pwResult.style.color = "#ff0000";
		pwResult.innerHTML = "비밀번호는 공백 없이 입력해주세요!";
		return false;
	} else if (num < 0 || eng < 0 || spe < 0) {
		pwResult.style.color = "#ff0000";
		pwResult.innerHTML = "영문, 숫자, 특수문자를 혼합하여 입력해주세요!";
		return false;
	} else {
		pwResult.style.color = "#0000ff";
		pwResult.innerHTML = "적절한 비밀번호 입니다!";
		return true;
	}

}


var momGenderArray = document.getElementsByName("momGender");

var momName = document.getElementById("momName");
var momBirth = document.getElementById("momBirth");
var momEmail = document.getElementById("momEmail");


function submitForm() {
	
	var momGender = "";
	
	for(var i=0; i<momGenderArray.length; i++){
		if(momGenderArray[i].checked==true){
			momGender = momGenderArray[i].value;
		}
	}
	
	console.log(momGender);
	
	
	if (!checkId) {
		alert('아이디를 확인해주세요!');
	} else if (!PwCheck()) {
		alert('비밀번호를 확인해주세요!');
	} else if (momName.value == "") {
		alert('이름을 입력해주세요!');
	} else if (momBirth.value == "") {
		alert('생년월일을 입력해주세요!');
	} else if (momGender=="") {
		alert('성별을 입력해주세요!');
	} else if (momEmail.value == "") {
		alert('이메일을 입력해주세요!');			
	} else {
		var emailRule = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		 
		if(!emailRule.test(momEmail.value)) {            
			alert('이메일을 확인해주세요!!');
		} else {
			joinForm.submit();	
		}			
	}

}

</script>
</html>