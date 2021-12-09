<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<div><h1>게시글 상세 조회</h1></div>
		<div>
			<table border="1">
				<tr>
					<th width="100">작성자</th>				
					<th width="150">${board.writer}</th>				
					<th width="100">작성일자</th>				
					<th width="150">${board.wdate}</th>				
					<th width="100">조회수</th>				
					<th width="50">${board.hit}</th>				
				</tr>
				<tr>
					<th width="100">제목</th>				
					<th colspan="5">${board.title}</th>				
				</tr>
				<tr>
					<th width="100">내용</th>				
					<th colspan="5">
						<textarea rows="10" cols="90">${board.subject}</textarea>
					</th>				
				</tr>
			</table>
		</div><br>
		<div>
			<button type="button" onclick="location.href=''">글 수정</button>&nbsp;&nbsp;
			<button type="button" onclick="history.go(-1)">글 목록보기</button>
		</div>
	</div>
</body>
</html>