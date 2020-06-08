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
	<p>공지사항 수정</p><hr><br><br>
	<form action="nupdate.do" name="n_update" method="post">
		<label for="n_writer">글번호<input type="hidden" name="sn_num" id="n_writer" value="${nview.sn_num }" ></label><br>
		<label for="n_writer">작성자<input type="text" name="n_writer" id="n_writer" value="${nview.sn_name }" readonly></label><br>
		<label for="n_title">제목<input type="text" name="n_title" id="n_title" value="${nview.sn_title }"></label><br>
		<label for="n_content"><textarea rows="50" cols="120" name="n_content" id=n_content >${nview.sn_content }</textarea></label><br>
		<div id="n_write_btn">
		<input type="button" value="수정" onclick="n_update.submit()">
		<input type="button" value="취소" onclick="history.back()">
		</div>
	</form>
	</div>
</body>
</html>