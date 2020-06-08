<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/admin_nview.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
<link rel="stylesheet" href="../css/admin_account.css">
<script type="text/javascript" src="../js/admin_Leftmenu.js"></script>
</head>
<body>
<!-- 리스트 붙여넣기 -->
	<jsp:include page="admin_header.jsp"/>
	<!----------------------------------------------------------------------------------------------------------------------------- -->
	<section>
		<div id="nview">
		<table id="nview_table">
			<tr id="tr02">
				<td>커피가 썩었어요</td>
				<td>원두</td>
			</tr>
			<tr id="tr02">
				<td>김씨</td>
				<td>2020/05/27</td>
			</tr>
			<tr id="tr03">
				<td colspan="2">열어봤는데 썩었어요!</td>
			</tr>
			
		</table>
			<div id="nivew_btn">
			<button type="button" onclick="">목록</button>
			<button type="button" onclick="">답변작성</button>
			</div>
		</div>
		</section>
</body>
</html>