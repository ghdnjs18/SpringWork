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
		<div><h1>멤버 세부 정보</h1></div>	
		<div>
			아이디 : ${member.id}<br>
			패스워드 : ${member.password}<br>
			이   름 : ${member.name}<br>
			전화번호 : ${member.tel}<br>
			주   소 : ${member.address}<br>
			권   한 : ${member.author}<br>
		</div>
		<div>
			<button type="button" onclick="location.href='memberSelectList.do'">목록 보기</button>
		</div>
	</div>
</body>
</html>