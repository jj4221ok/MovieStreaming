<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>| MemberList |</title>
<style>
table, th, tr, td {
	border: 1px black solid;
	border-collapse: collapse;
}

th, td {
	padding: 5px;
}

.table {
	margin: auto;
}

.div1{
	width : 60%;
	margin: auto;
}

</style>
</head>
<body>
	<div class="div1">
		<table class="table" style="text-align: center">
	
			<thead>
				<tr class="noborder">
				<td class="noborder" colspan="5">
				<div style="text-align: right">
			<select name="limit" id="limit" onchange="funSel()">
				<option>게시글 갯수</option>
				<option value="3">3개씩</option>
				<option value="5">5개씩</option>
				<option value="10">10개씩</option>
			</select>
		</div></td>
				</tr>
				<tr>
					<th>순서</th>
					<th>이름</th>
					<th>아이디</th>
					<th>생년월일</th>
					<th>회원탈퇴</th>
				</tr>
			</thead>
	
			<tbody>
				<c:forEach var="member" items="${momList}" varStatus="num">
					<tr>
						<td>${num.count}</td>
						<td>${member.momName}</td>
						<td><a href="memberView?momId=${member.momId}&page=${paging.page}&limit=${paging.limit}">${member.momId}</a></td>
						<td>${member.momBirth}</td>
						<td><a href="memberDeleteAdmin?momId=${member.momId}">탈퇴</a></td>
					</tr>
	
				</c:forEach>
			</tbody>
		</table>
		
	</div>
		<!-- 페이징 처리 -->
		<div style="text-align: center">
			<c:if test="${paging.page<=1}">[이전]&nbsp;</c:if>
	
			<c:if test="${paging.page>1}">
				<a href="memberList?page=${paging.page-1}&limit=${paging.limit}">[이전]</a>&nbsp;
									</c:if>
	
			<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="i"
				step="1">
				<c:choose>
					<c:when test="${i eq paging.page}"> ${i} </c:when>
					<c:otherwise>
						<a href="memberList?page=${i}&limit=${paging.limit}">${i}</a>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:if test="${paging.page>=paging.maxPage}">[다음]&nbsp;</c:if>
			<c:if test="${paging.page<paging.maxPage}">
				<a href="memberList?page=${paging.page+1}&limit=${paging.limit}">[다음]</a>&nbsp;
			</c:if>
			
			<button onclick="history.back()">뒤로</button>
		</div>
		
</body>
<script>
	function funSel() {
		var limit = document.getElementById("limit").value;
		location.href = "memberList?limit=" + limit;
	}
</script>
</html>