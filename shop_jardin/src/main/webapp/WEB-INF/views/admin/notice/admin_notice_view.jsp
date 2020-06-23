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


<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/reset.css?v=Y" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/layout.css?v=Y" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/content.css?v=Y" />



</head>
<body>
<!-- 리스트 붙여넣기 -->
	<jsp:include page="../admin_header.jsp"/>
	<!----------------------------------------------------------------------------------------------------------------------------- -->
		<div id="contentArea">
		
		<!-- contents -->
			<div id="contents">
				<div id="customer">
				
					<h2><strong>NOTICE</strong><span>쟈뎅샵 소식을 전해드립니다.</span></h2>

					<div class="viewDivMt">
					
						<div class="viewHead">
						
							<div class="subject">
							
								<ul>
									<li>${ndto.n_title}</li>
								</ul>
							</div>
							
							<div class="day">
								<p class="txt">작성일<span><fmt:formatDate pattern="yyyy-MM-dd" value="${ndto.n_wdate}" /></span></p>
							</div>
						</div>

						<div class="viewContents">
							${ndto.n_content}<br/><br/>
						</div>
						
					</div>
					
					
					

					<!-- 이전다음글 -->
					<div class="pnDiv web">
						<table summary="이전다음글을 선택하여 보실 수 있습니다." class="preNext" border="1" cellspacing="0">
							<caption>이전다음글</caption>
							
							<colgroup>
							<col width="100px" />
							<col width="*" />
							</colgroup>
							
							<tbody>
							
								<tr>
									<th class="pre">PREV</th>
									<td><a href="notice_view?n_num=${ndto_p.n_num}">${ndto_p.n_title}</a></td>
								</tr>

								<tr>
									<th class="next">NEXT</th>
									<td><a href="notice_view?n_num=${ndto_n.n_num}">${ndto_n.n_title}</a></td>
									
								</tr>
								
							</tbody>
							
						</table>
					</div>
					<!-- //이전다음글 -->



					<!-- Btn Area -->
					<div class="btnArea btline">
						<div class="bRight">
							<ul>
							    <li><a href="admin_notice_update?n_num=${ndto.n_num}" class="nbtnbig mw">수정</a></li>
								<li><a href="javascript:admin_n_delete()" class="nbtnbig mw">삭제</a></li>
								<li><a href="admin_notice_list" class="sbtnMini mw">목록</a></li>
							</ul>
						</div>
					</div>
					<!-- //Btn Area -->
					
					
					
					<script type="text/javascript">
						
						function admin_n_delete() {

							var result = confirm('데이터를 삭제 하시겠습니까?');
							
							var n_num = ${ndto.n_num};

							if (result == true) {

								alert("삭제하겠습니다");
								window.location.href = 'admin_notice_delete?n_num=' + n_num;
								
								
							} else {
								
								alert("삭제를 취소합니다");
							}

						}
						
						</script>
					
				</div>
				
			</div>
			<!-- //contents -->
		
		
		
		
		</div>
</body>
</html>