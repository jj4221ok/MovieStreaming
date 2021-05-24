<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>충전할 금액을 입력해 주세요.</h3>

<form action="addmoney" method="POST" name="addmoney">
<input type="hidden" name="momId" value="${sessionScope.loginId}">
<input type="text" name="money" id="money">


<input type="button" onclick="addmoney1()" value="충전 ">
</form>



</body>
<script>
var money = document.getElementById("money");

	function addmoney1(){
		
		if(money.value == ""){
			alert('금액을 입력해 주세요');
		}else if(money.value>0){
			addmoney.submit();
		}else{
			alert('잘못된 입력 입니다');
		}
		
	}



</script> 


</html>