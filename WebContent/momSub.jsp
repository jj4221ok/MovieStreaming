<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구독</title>
<style>
body{
	text-align:center;
	

}
table{
	width:60%;
	text-align:center;
	margin:auto;
}
</style>

</head>
<body>

<form action="momSub" method="POST" name="subForm">
	<table>
		<h1>구독일 선택 </h1>
		<input type="hidden" name="momId" value="${sessionScope.loginId}">
		<input type="hidden" name="momMoney" id="momMoney" value="${member.momMoney}">
		<h3>${sessionScope.loginId}님 환영합니다.</h3>
		<h3>${sessionScope.loginId}님의 잔액 : ${member.momMoney}</h3>
		<h3>희망하는 구독 일수를 선택해 주세요</h3>
		<tr>
			<td><strong>7일</strong></td>
			<td><strong>15일</strong></td>
			<td><strong>30일</strong></td>
		</tr>
		<hr>
		<tr>
			<td><label><img src="./img/7day.png" alt="7일" width="300px"><br>
				
				<input type="radio" name="subDay" value="7"></label></td>
			<td><label><img src="./img/15day.png" alt="15일" width="300px"><br>
				<input type="radio" name="subDay" value="15"></label></td>
			<td><label><img src="./img/30day.png" alt="30일" width="300px"><br>
				<input type="radio" name="subDay" value="30"></label></td>
			
			
		</tr>
		
		<tr>
			
			<td colspan="3">
			<input type=button value="결제하기" onclick="sub()">
			<input type=button value="뒤로가기" onclick="location.href='movieList'">
			<input type=button value="캐시충전" onclick="location.href='addMoney.jsp'">
				
			</td>
		</tr>
		
	</table>
</form>
	
</body>
<script>
var subDay = document.getElementById("subDay");

var money = document.getElementById("momMoney");

	function sub(){
			subForm.submit();
		
		
		}
	
	/* if(${member.momMoney}>subDay.value){ */

</script>


</html>