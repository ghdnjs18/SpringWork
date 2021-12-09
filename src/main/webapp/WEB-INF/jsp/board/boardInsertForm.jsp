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
		<div><h1>게시글 작성</h1></div>
		<div>
			<form id="frm" action="boardInsert.do" method="post">
				<div>
					<table border="1">
						<tr>
							<th width="100">작성자</th>				
							<th width="150" align="left">
								<input type="email" id="writer" name="writer" placeholder="email을 입력하세요..." required="required">
							</th>				
							<th width="100">작성일자</th>				
							<th width="150">
								<input type="date" id="wdate" name="wdate" required="required">
							</th>				
						</tr>
						<tr>
							<th width="100">제목</th>				
							<th colspan="3" align="left">
								<input type="text" id="title" name="title" size="30"
								placeholder="제목을 입력하세요..." required="required">
							</th>				
						</tr>
						<tr>
							<th width="100">내용</th>				
							<th colspan="3">
								<textarea rows="10" cols="90" id="subject" name="subject"></textarea>
							</th>				
						</tr>
					</table>
				</div><br>
				<div>
					<button type="submit">글 등록</button>&nbsp;&nbsp;
					<button type="button" onclick="history.go(-1)">글 목록보기</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>