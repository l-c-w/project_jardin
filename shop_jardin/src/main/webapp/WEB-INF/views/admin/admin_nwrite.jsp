<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/admin_nwrite.css">
</head>
<body>
	<%@include file="admin_header.jsp" %>
	<!-- --------------------------------------------------------------------------------------------------------------------------- -->
	<div id="n_write">
	<p>공지사항 작성</p><hr><br><br>
	<form action="nwrite.do" name="s_notice" method="post" >
		<label for="n_writer">작성자<input type="text" name="n_writer" id="n_writer"></label><br>
		<label for="n_title">제목<input type="text" name="n_title" id="n_title"></label><br>
		<label for="n_content"><textarea rows="50" cols="120" name="n_content" id=n_content></textarea></label><br>
		<div id="n_write_btn">
		<input type="button" value="작성" onclick="s_notice.submit()">
		<input type="button" value="취소" onclick="history.back()">
		</div>
	</form>
	</div>
</body>
</html>