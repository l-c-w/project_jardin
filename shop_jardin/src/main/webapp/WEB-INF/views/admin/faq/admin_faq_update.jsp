<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<p>FAQ 작성</p><br><br>
	<form action="" name="fnq" method="post" >
		<label>분&nbsp;&nbsp;류</label><select name="f_type" id="f_type">
			<option value="all">전체</option>
			<option value="join">회원가입</option>
			<option value="product">상품</option>
			<option value="order">주문</option>
		</select>
		<label for="f_title">제&nbsp;&nbsp;목<input type="text" name="" id="n_title"></label><br>
		<label for="f_content"><textarea rows="25" cols="145" name="" id="n_content"></textarea></label><br>
		<div id="n_write_btn">
		<input type="button" value="작성" onclick="">
		<input type="button" value="취소" onclick="">
		</div>
	</form>
	</div>
	</section>
</body>
</html>