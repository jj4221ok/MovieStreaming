<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>adminMovieList</title>
<style>
table {
	margin: auto;
}

td, th {
	padding: 10px;
}
</style>
</head>
<body>
	<div style="text-align: center">
		<table style="text-align: center">

			<thead>

				<tr>
					<th style="width: 10%">번호</th>
					<th style="width: 40%">영화제목</th>
					<th style="width: 20%">장르</th>
					<th style="width: 20%">개봉일</th>
					<th style="width: 10%">삭제</th>
				</tr>

			</thead>

			<tbody>

				<c:forEach var="movie" items="${adminmoList}" varStatus="num">
					<tr>
						<td>${num.count}</td>
						<td><a href="movieView?moNum=${movie.moNum}&page=${paging.page}&limit=${paging.limit}">${movie.moTitle}</a></td>
						<td>${movie.moGenre}</td>
						<td>${movie.moDate}</td>
						<td><button onclick="location.href='movieDelete?moNum=${movie.moNum}'">삭제</button></td>
					</tr>
				</c:forEach>

				<tr>
					
					<td colspan="5" style="text-align: right">
					<button onclick = "add()">영화 등록</button>
						<button onclick = "main()">메인페이지로</button>
						<select name="limit" id="limit" onchange="funSel()">
							<option>영화목록 갯수</option>
							<option value="5">5개씩</option>
							<option value="10">10개씩</option>
							<option value="15">15개씩</option>
						</select>
					</td>
				</tr>

			</tbody>

		</table>


		<!-- 페이징 처리 -->

		<!-- [이전] 에 대한 페이징 처리 -->
		<c:if test="${paging.page<=1}">[이전]&nbsp;</c:if>

		<c:if test="${paging.page>1}">
			<a href="adminmovieList?page=${paging.page-1}&limit=${paging.limit}"><b>[이전]</b></a>&nbsp;
		</c:if>

		<!-- 페이징 숫자에 대한 페이징 처리 -->
		<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="i"
			step="1">
			<c:choose>

				<c:when test="${i eq paging.page}">
					${i}&nbsp;
				</c:when>

				<c:otherwise>
					<a href="adminmovieList?page=${i}&limit=${paging.limit}"><b>${i}</b></a>&nbsp;
				</c:otherwise>

			</c:choose>
		</c:forEach>

		<!-- [다음] 에 대한 페이징 처리 -->
		<c:if test="${paging.page>=paging.maxPage}">[다음]&nbsp;</c:if>

		<c:if test="${paging.page<paging.maxPage}">
			<a href="adminmovieList?page=${paging.page+1}&limit=${paging.limit}"><b>[다음]</b></a>&nbsp;
			
		</c:if>
		
	</div>
	<!-- 페이징처리 끝 -->

</body>

<script>
	function funSel(){
		var limit = document.getElementById("limit").value;
		location.href="adminmovieList?limit=" + limit;
	}
	
	function add(){
		location.href="MovieWrite.jsp"	
	}
	function main(){
		location.href="movieList"	
	}
</script>

</html>


