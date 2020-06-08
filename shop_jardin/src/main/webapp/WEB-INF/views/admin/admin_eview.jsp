<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/admin_nview.css">
<script type="text/javascript">
	function delete_check() {
		var confirm_check=confirm("삭제하시겠습니까?");
		if(confirm_check){
			location.href="edelete.edo?se_num="+${eview.se_num };
		}else{
			alert("취소되었습니다.");
		}
	}
</script>
</head>
<body>
		<%@include file="admin_header.jsp" %>
	
	<!-- --------------------------------------------------------------------------------------------------------------------------- -->
		<div id="nview">
		<table id="nview_table">
			<tr id="tr01">
				<td colspan="2">${eview.se_title }</td>
			</tr>
			<tr id="tr02">
				<td>${eview.se_name }</td>
				<td>${eview.se_bdate }</td>
			</tr>
			<tr id="tr01">
				<td colspan="2">(남은기간:${eview.se_ddate}일)<br>  ${eview.se_sdate } ~ ${eview.se_edate }</td>
			
			<tr id="tr03">
				<td colspan="2"><img src="/c_shop/upload/${eview.se_file1 }"/><br>
				<img src="/c_shop/upload/${eview.se_file2 }"/><br>
				${eview.se_content }</td>
			</tr>
		</table>
			<div id="nivew_btn">
			<button type="button" onclick="location.href='elist.edo'">목록</button>
			<button type="button" onclick="location.href='eview.edo?se_num=${eview.se_num }&case=update'">수정</button>
			<button type="button" onclick="delete_check()">삭제</button>
			</div>
		</div>
</body>
</html>