<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<div><h1>회원목록 보기</h1></div>
		<div>
			<table border="1">
				<tr>
					<th width="150">아이디</th>
					<th width="150">패스워드</th>
					<th width="150">이   름</th>
					<th width="150">전화번호</th>
					<th width="150">주   소</th>
					<th width="150">권   한</th>
				</tr>
				<c:forEach items="${members}" var="member">
					<tr onmouseover="this.style.background='#c2fd65'"
					onmouseout="this.style.background='white'"
					onclick="memberSearch('${member.id}')">
						<td>${member.id}</td>
						<td>${member.password}</td>
						<td>${member.name}</td>
						<td>${member.tel}</td>
						<td>${member.address}</td>
						<td>${member.author}</td>
					</tr>
				</c:forEach>
			</table>
		</div><br>
		<div>
			<button type="button" onclick="location.href='home.do'">홈 가기</button>
		</div>
		<div>
			<form id="frm" action="memberSelect.do" method="post">
				<input type="hidden" id="id" name="id">
			</form>
		</div>
	</div>
	
	<!-- 사용자 javaScript -->
	<script type="text/javascript">
		function memberSearch(str) {
			frm.id.value = str;
			frm.submit();
		}
	</script>
</body>
</html>