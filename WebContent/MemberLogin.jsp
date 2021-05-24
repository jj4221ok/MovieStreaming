<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MOMLogin || Login</title>

</head>
<body>
	<h1>Login</h1>
	 <form action="memberLogin" method="POST">
	 	<table>
	 		<tr>
	 			<td>아이디</td>
	 			<td><input type="text" name="momId"></td>
	 		</tr>
	 		<tr>
	 			<td>패스워드</td>
	 			<td><input type="password" name="momPw"></td>
	 		</tr>
	 		
	 		
	 		<tr>
	 			<td colspan="2">
	 				<input type="submit" value="로그인">
	 			</td>
	 		</tr>
	 		
	 	</table>
	 </form>
</body>
</html>