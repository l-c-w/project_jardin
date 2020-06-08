<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/admin_notice.css">
</head>
<body>
<!-- 리스트 붙여넣기 -->
	<%@include file="admin_header.jsp" %>
<!-- 수정, 삭제 알림 -->
	<c:if test="${u_check==1 }">
		<script>
			alert("수정되었습니다.");
		</script>
	</c:if>
	<c:if test="${d_check==1 }">
		<script>
			alert("삭제되었습니다.");
		</script>
	</c:if>

	<!-- --------------------------------------------------------------------------------------------------------------------------- -->
	<div class="notice_conts" id="noticeContent">
	
				
				<p>이벤트</p>
				${sessionScope.admin_id }
				
				<div class="tb_row">
					<table id="notice_list">
						<colgroup>
							<col width="10%">
							<col width="40%">
							<col width="25%">
							<col width="10%">
							<col width="15%">
						</colgroup>
						<thead>
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>기간</th>
								<th>작성자</th>
								<th>등록일</th>
							</tr>
						</thead>
					<c:forEach var="event_list" items="${elist }">
						<tr class="notice_tr" onclick="location.href='eview.edo?se_num=${event_list.se_num }&case=view'">
							<td>${event_list.se_num }</td>						
							<td>${event_list.se_title }</td>
							<td id="event_content">
								(남은기간:${event_list.se_ddate}일)<br>  ${event_list.se_sdate } ~ ${event_list.se_edate }</td>
							<td>${event_list.se_name }</td>
							<td>${event_list.se_bdate }</td>
						</tr>
					</c:forEach>
					</table>
				</div>
				<div id="write_notice">
					<button type="button" onclick="location.href='admin_ewrite.jsp'">글작성</button>
				</div>
				
				<div class="pagination" id="pagination">
				
				<ul id="paging">
				
					<li onclick="location.href='elist.edo?page=1'" class="pata_else1">＜＜</li>
					
					
					<c:if test="${page<=1 }">
					
					</c:if>
					<c:if test="${page>1 }">
					<li onclick="location.href='elist.edo?page=${page-1}'" class="pata_else1">이전</li>
					</c:if>
					
					
					<c:forEach var="event" begin="${startpage }" end="${endpage }" step="1">
					<c:choose>
					<c:when test="${event==page }">
					<li class="pata_else">${event }</li>
					</c:when>
					<c:when test="${event!=page }">
					<li onclick="location.href='elist.edo?page=${event}'" class="pata_else">${event }</li>
					</c:when>
					</c:choose>
					</c:forEach>
					
					<c:if test="${page>=maxpage }">
					
					</c:if>
					
					<c:if test="${page<maxpage }">
					<li onclick="location.href='elist.edo?page=${page+1}'" class="pata_else1">다음</li>
					</c:if>
					
					
					<li onclick="location.href='elist.edo?page=${maxpage}'" class="pata_else1">＞＞</li>
					
					
				</ul>
				</div>
				
				
				
			</body>
</html>