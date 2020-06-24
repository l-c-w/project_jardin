<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
	<!-- --------------------------------------------------------------------------------------------------------------------------- -->
	
	<p>1:1문의</p>
	<div class="notice_conts" id="contentArea">
				
				<!-- contents -->
			<div id="contents">
			
				<div id="mypage">
				
					<h2><strong>1:1문의</strong></h2>
					
					<div class="orderDivNm">
					
						<table summary="NO, 종류, 적립포인트, 적립날짜, 상태 순으로 현재 적립된 포인트를 조회 하실수 있습니다." class="orderTable2" border="1" cellspacing="0">
							
							<colgroup>
							
							<col width="9%" class="tnone" />
							<col width="14%" class="tw20" />
							<col width="*" />
							<col width="15%" class="tnone" />
							<col width="15%" class="tw30" />
							
							</colgroup>
							
							
							<thead>
								<th scope="col" class="tnone">NO.</th>
								<th scope="col">분류</th>
								<th scope="col">제목</th>
								<th scope="col" class="tnone">등록일</th>
								<th scope="col">처리상태</th>
							</thead>
							
							
							<tbody>
							
						    <c:if test="${not empty viewAll}">
							
							<c:forEach var="oo_list" items="${viewAll}">
							
								<tr>
								
									<td class="tnone">${oo_list.oo_num}</td>
									
									<td>${oo_list.oo_type}</td>
									
									<td class="left"><a href="admin_oofnq_view?oo_num=${oo_list.oo_num}">${oo_list.oo_title}</a></td>
									
									<td class="tnone"><fmt:formatDate pattern="yyyy-MM-dd" value="${oo_list.oo_wdate}"/></td>
									
									
									
									
									<c:if test="${oo_list.oo_answer == null }">
									
									<td>
										<ul class="state">
											<li><div class="nbtnMini iw83">답변대기</div></li>
										</ul>
									</td>
									
									</c:if>
									
									
									
									<c:if test="${oo_list.oo_answer != null }">
									
									<td>
										<ul class="state">
											<li><div class="obtnMini iw83">답변완료</div></li>
										</ul>
									</td>
									
									</c:if>
									
									
								</tr>
								
								
						     </c:forEach>
						 
						 	</c:if>
						 	
								
							<!-- 	
								<div class="nbtnMini iw83">답변대기</div></li>
								<div class="obtnMini iw83">답변완료</div></li>
							 -->
								 

							</tbody>
							
						</table>
						
					</div>
					
					
					<c:if test="${empty viewAll}">
					 
					<div class="noData">   문의 하신 내용이 없습니다. </div>
						
				     </c:if>
				       
				       
				       
				        <div class="btnAreaList">
					
						<div class="bwright">
						
							<ul>
								<li><a href="../mypage/inquiry_write" class="writeBtn" style="color: white;">답글쓰기</a></li>
							</ul>
							
						</div>
				       
				       
				       
				       <c:if test="${not empty viewAll}">

							<!-- 페이징이동1 -->

						<div class="allPageMoving1">
						
						
							<div style="display: block; text-align: center;">


								<!-- 첫페이지 이동 -->
								<a href="admin_oofnq_list?nowPage=${paging.startPage}&cntPerPage=${paging.cntPerPage}" class="n">
								<img src="${pageContext.request.contextPath}/images/btn/btn_pre2.gif" alt="처음으로"/>
								</a>


								<!-- 이전페이지로 이동 -->
								
								<c:if test="${paging.nowPage != 1}">
								<a href="admin_oofnq_list?nowPage=${paging.nowPage - 1}&cntPerPage=${paging.cntPerPage}" class="pre">
								<img src="${pageContext.request.contextPath}/images/btn/btn_pre1.gif" alt="앞페이지로"/><!-- &lt; -->
								</a>
								</c:if>
								
								
								<!-- 순차 -->
								
								<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="p">
									
									<c:choose>
									
										<c:when test="${p == paging.nowPage}">
											<a href="#" class="reviews"><strong>${p}</strong></a>
										</c:when>
										
										<c:when test="${p != paging.nowPage }">
											<a href="admin_oofnq_list?nowPage=${p}&cntPerPage=${paging.cntPerPage}">${p}</a>
										</c:when>
										
									</c:choose>
									
								</c:forEach>
								
								
								
								<!-- 다음페이지 이동 -->
							
								
								<c:if test="${paging.nowPage != paging.lastPage}" >
								<a href="admin_oofnq_list?nowPage=${paging.nowPage+1}&cntPerPage=${paging.cntPerPage}" class="next"><!-- &gt; -->
								<img src="${pageContext.request.contextPath}/images/btn/btn_next1.gif" alt="뒤페이지로"/>
								</a>
								</c:if>


								<!-- 마지막 페이지 이동 -->
								<a href="admin_oofnq_list?nowPage=${paging.lastPage}" class="n" >
								<img src="${pageContext.request.contextPath}/images/btn/btn_next2.gif" alt="마지막페이지로"/>
								</a>

							</div>
							
						</div>
						
						
						<!-- //페이징이동1 -->
						
						
						</c:if>
						
						
					</div>

				</div>
				
			</div>
			<!-- //contents -->
				
				
				
			
				
	</div>
			
</body>
</html>