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




<body>
<!-- 리스트 붙여넣기 -->
	<jsp:include page="../admin_header.jsp"/>
	<!------------------------------------------------------------------------------------------------------------------------------->
	<p>FAQ</p>
	<div class="notice_conts" id="contentArea">
				
				
					<!-- FAQ -->
					<div class="faqList">
					
						<ul>
						
							<!-- list -->
							
							<c:forEach var="f_list" items="${viewAll}">
							
							<li>
							
								<a href="javascript:;" class="faqbtn">
								
									<div class="question">
									
									
										<div class="blet">Q</div>
								
										<c:if test="${f_list.f_type == 'order'}">
										<div class="category">주문</div>
										</c:if>
										
										<c:if test="${f_list.f_type == 'join'}">
										<div class="category">회원가입</div>
										</c:if>
										
										<c:if test="${f_list.f_type == 'product'}">
										<div class="category">상품</div>
										</c:if>
										
										
										<%-- <div class="category">${f_list.f_type}</div> --%>
										
										
										<a href="admin_faq_view?f_num=${f_list.f_num}"><div class="title">${f_list.f_title}</div></a>
										
									</div>
									
								</a>
								
							</li>
							
							
							</c:forEach>
							

						</ul>
						
					</div>
					<!-- //FAQ -->




					<!-- 페이징이동1 -->

						<div class="allPageMoving1">
						
						
							<div style="display: block; text-align: center;">


								<!-- 첫페이지 이동 -->
								<a href="admin_faq_list?nowPage=${paging.startPage}&cntPerPage=${paging.cntPerPage}" class="n">
								<img src="${pageContext.request.contextPath}/images/btn/btn_pre2.gif" alt="처음으로"/>
								</a>


								<!-- 이전페이지로 이동 -->
								
								<c:if test="${paging.nowPage != 1}">
								<a href="admin_faq_list?nowPage=${paging.nowPage - 1}&cntPerPage=${paging.cntPerPage}" class="pre">
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
											<a href="admin_faq_list?nowPage=${p}&cntPerPage=${paging.cntPerPage}">${p}</a>
										</c:when>
										
									</c:choose>
									
								</c:forEach>
								
								
								
								<!-- 다음페이지 이동 -->
							
								
								<c:if test="${paging.nowPage != paging.lastPage}" >
								<a href="admin_faq_list?nowPage=${paging.nowPage+1}&cntPerPage=${paging.cntPerPage}" class="next"><!-- &gt; -->
								<img src="${pageContext.request.contextPath}/images/btn/btn_next1.gif" alt="뒤페이지로"/>
								</a>
								</c:if>


								<!-- 마지막 페이지 이동 -->
								<a href="admin_faq_list?nowPage=${paging.lastPage}" class="n" >
								<img src="${pageContext.request.contextPath}/images/btn/btn_next2.gif" alt="마지막페이지로"/>
								</a>

							</div>
							
						</div>
						
						
						<!-- //페이징이동1 -->
					
				
				
				
				
				</div>
				
				
				
				 <div class="bwright">
							<ul>
								<li><a href="admin_faq_write" class="sbtnMini">글작성</a></li>
							</ul>
						</div>
				
				
				
</body>
</html>