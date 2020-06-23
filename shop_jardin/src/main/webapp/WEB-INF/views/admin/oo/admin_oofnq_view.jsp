<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<title>Insert title here</title>


<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.4.1.min.js"></script>

<!-- 제이쿼리 [다운받아서 링크 걸어놓기] -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/prefixfree.dynamic-dom.min.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/admin_mlist.js"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin_account.css">

<script type="text/javascript" src="${pageContext.request.contextPath}/js/admin_Leftmenu.js"></script>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/admin_mlist.css?ver=1">


</head>
<body>
<!-- 리스트 붙여넣기 -->
	<jsp:include page="../admin_header.jsp"/>
	<!----------------------------------------------------------------------------------------------------------------------------- -->
	<section>
		<div id="contentArea">
		<table id="nview_table">
			<tr id="tr02">
				<td>상품이 이상해요</td>
				<td>교환/환불(분류)</td>
			</tr>
			<tr id="tr02">
				<td>김씨</td>
				<td>2020/05/27</td>
			</tr>
			<tr id="tr03">
				<td colspan="2">상품이 이상해요!!</td>
			</tr>
			<tr id="tr04" onclick="">
				<td colspan="2">관리자</td>
			</tr>
			<tr id="tr05" onclick="">
				<td colspan="2">대충 쓰세요</td>
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