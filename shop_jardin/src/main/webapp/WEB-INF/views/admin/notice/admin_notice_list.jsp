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
	
	
	<div class="notice_conts" id="contentArea">
				
		<h2><strong>NOTICE</strong></h2>
				
				<div class="orderDivMt">
					
						<table summary="NO, 제목, 등록일, 조회수 순으로 공지사항을 조회 하실수 있습니다." class="orderTable2" border="1" cellspacing="0">
							
							<caption>공지사항 보기</caption>
							
							<colgroup>
							<col width="10%" class="tnone" />
							<col width="*" />
							<col width="14%" class="tw25" />
							<col width="14%" class="tnone" />
							</colgroup>
							
							
							<thead>
								<th scope="col" class="tnone">NO.</th>
								<th scope="col">제목</th>
								<th scope="col">등록일</th>
								<th scope="col" class="tnone">조회수</th>
							</thead>
							
							<tbody>
							
							
							<c:forEach items="${viewAll}" var="no">
							
								<tr>
									<td class="tnone">${no.n_num}</td>
									
									<td class="left">
										<a href="admin_notice_view?n_num=${no.n_num}">${no.n_title}</a>
									</td>
									
									<td><fmt:formatDate pattern="yyyy-MM-dd" value="${no.n_wdate}" /></td>
									<td class="tnone right" style="text-align: center;">${no.n_hit}</td>
								</tr>
								
							</c:forEach>
								
							</tbody>
							
						</table>
						
					</div>
						
				
				
				     <div class="bwright">
							<ul>
								<li><a href="../notice/admin_notice_write" class="sbtnMini">글작성</a></li>
							</ul>
						</div>
				
				
				
				
					<div class="btnAreaList">
						

						<!-- 페이징이동1 -->

						<div class="allPageMoving1">
						
						
							<div style="display: block; text-align: center;">


								<!-- 첫페이지 이동 -->
								<a href="admin_notice_list?nowPage=${paging.startPage}&cntPerPage=${paging.cntPerPage}" class="n">
								<img src="${pageContext.request.contextPath}/images/btn/btn_pre2.gif" alt="처음으로"/>
								</a>


								<!-- 이전페이지로 이동 -->
								
								<c:if test="${paging.nowPage != 1}">
								<a href="admin_notice_list?nowPage=${paging.nowPage - 1}&cntPerPage=${paging.cntPerPage}" class="pre">
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
											<a href="admin_notice_list?nowPage=${p}&cntPerPage=${paging.cntPerPage}">${p}</a>
										</c:when>
										
									</c:choose>
									
								</c:forEach>
								
								
								
								<!-- 다음페이지 이동 -->
							
								
								<c:if test="${paging.nowPage != paging.lastPage}" >
								<a href="admin_notice_list?nowPage=${paging.nowPage+1}&cntPerPage=${paging.cntPerPage}" class="next"><!-- &gt; -->
								<img src="${pageContext.request.contextPath}/images/btn/btn_next1.gif" alt="뒤페이지로"/>
								</a>
								</c:if>


								<!-- 마지막 페이지 이동 -->
								<a href="admin_notice_list?nowPage=${paging.lastPage}" class="n" >
								<img src="${pageContext.request.contextPath}/images/btn/btn_next2.gif" alt="마지막페이지로"/>
								</a>

							</div>
							
						</div>
						
						
						<!-- //페이징이동1 -->
						
						
			    <form action="${pageContext.request.contextPath}/customer/notice_search" method="get" name="notice_search" id="notice_search">

					<div class="searchWrap">
					
						<div class="search">
						
							<ul>
								
								<li class="web"><img src="${pageContext.request.contextPath}/images/txt/txt_search.gif" alt="search" /></li>
								
								<li class="se">
								
									<select id="searchType" name="searchType">
									
									     <option value="title">제목</option>
									     <option value="content">내용</option>
									     
									</select>
									
								</li>
								
								<li><input type="text" class="searchInput" id="keyword" name="keyword"/></li>
								
								<li class="web" id="searchBtn"><a href="#" onclick="document.getElementById('notice_search').submit()"><img src="${pageContext.request.contextPath}/images/btn/btn_search.gif" alt="검색" /></a></li>
								
								<li class="mobile"><a href="#" onclick="document.getElementById('notice_search').submit()"><img src="${pageContext.request.contextPath}/images/btn/btn_search_m.gif" alt="검색" /></a></li>
								
							</ul>
							
						</div>
						
					</div>
					
			     </form>
						
		</div>
		
	</div>
	
</body>

</html>