<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My WebSite</title>

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/bootstrap.css">

    <link rel="stylesheet" href="assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
    <link rel="stylesheet" href="assets/vendors/bootstrap-icons/bootstrap-icons.css">
    <link rel="stylesheet" href="assets/css/app.css">
    <link rel="shortcut icon" href="assets/images/favicon.svg" type="image/x-icon">
</head>
<body>
	<div align="center">
		<div><h1>공지사항 목록</h1></div>
		<div>
			<table border="1">
				<tr>
					<td width="70">순번</td>
					<td width="150">작성자</td>
					<td width="250">제목</td>
					<td width="150">작성일자</td>
					<td width="70">조회수</td>
				</tr>
				<c:forEach items="${boards}" var="board">
					<tr onmouseover="this.style.background='#c2fd65'"
					onmouseout="this.style.background='white'"
					onclick="boardSearch('${board.no}')">
						<td align="center">${board.no}</td>
						<td align="center">${board.writer}</td>
						<td align="center">${board.title}</td>
						<td align="center">${board.wdate}</td>
						<td align="center">${board.hit}</td>
					</tr>
				</c:forEach>
			</table>
		</div><br>
		<div>
			<form id="frm" action="boardSelect.do" method="post">
				<input type="hidden" id="no" name="no">
				<button type="button" onclick="location.href='home.do'">홈 가기</button>&nbsp;&nbsp;
				<button type="button" onclick="location.href='boardInsertForm.do'">글 쓰기</button>
			</form>
		</div>
	</div>
	
	<script type="text/javascript">
		function boardSearch(n) {
			frm.no.value = n;
			frm.submit();
		}
	</script>
</body>
</html>