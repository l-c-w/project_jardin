<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<p><a href="product/p_list">상품 목록</a></p>
<p><a href="/ex/admin/admin_product_list">상품 리스트</a></p>
<p><a href="/ex/admin/admin_product_write">상품 작성</a></p>
</body>
</html>
