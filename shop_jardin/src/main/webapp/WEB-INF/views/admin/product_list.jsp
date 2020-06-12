<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table>
		<tbody>
			<c:forEach items="${list}" var="list">
				<tr>
					<td>${list.p_code}</td>
					<td>${list.p_case}</td>
					<td>${list.p_case2}</td>
					<td>${list.p_name}</td>
					<td>${list.p_price}</td>
					<td>${list.p_point}</td>
					<td>${list.p_producer}</td>
					<td>${list.p_expiry}</td>
					<td>${list.p_type}</td>
					<td>${list.p_capacity}</td>
					<td>${list.p_detail}</td>
					<td>${list.p_location}</td>
					<td>${list.p_gene}</td>
					<td>${list.p_import}</td>
					<td>${list.p_stock}</td>
					<td>${list.p_img1}</td>
					<td>${list.p_img2}</td>
					<td>${list.p_img3}</td>
					<td>${list.p_content_img}</td>
					<td>${list.p_wdate}</td>
					<td>${list.p_udate}</td>
					<td>${list.p_delflag}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>