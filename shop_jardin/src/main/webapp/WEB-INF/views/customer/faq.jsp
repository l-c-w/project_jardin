<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> JARDIN SHOP </title>


<meta charset="UTF-8" />

<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="description" content="JARDIN SHOP" />
<meta name="keywords" content="JARDIN SHOP" />
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scaleable=no" />


<link rel="stylesheet" type="text/css" href="../css/reset.css?v=Y" />
<link rel="stylesheet" type="text/css" href="../css/layout.css?v=Y" />
<link rel="stylesheet" type="text/css" href="../css/content.css?v=Y" />


<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/top_navi.js"></script>
<script type="text/javascript" src="../js/left_navi.js"></script>

<script type="text/javascript" src="../js/main.js"></script>
<script type="text/javascript" src="../js/common.js"></script>

<script type="text/javascript" src="../js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="../js/idangerous.swiper-2.1.min.js"></script>
<script type="text/javascript" src="../js/jquery.anchor.js"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="../js/html5.js"></script>
<script type="text/javascript" src="../js/respond.min.js"></script>
<![endif]-->

<script type="text/javascript">
$(document).ready(function() {
	


});
</script>

</head>

<body>

<!-- header 붙여넣기 -->
	<jsp:include page="../header.jsp"/>
	
	<!-- container -->
	<div id="container">

		<div id="location">
			<ol>
				<li><a href="../main/main">HOME</a></li>
				<li><a href="#">CUSTOMER</a></li>
				<li class="last">FAQ</li>
			</ol>
		</div>
		
		
		<div id="outbox">	
		
			<jsp:include page="custom1.jsp"/>
			
			<!-- <div id="left">
				<div id="title2">CUSTOMER<span>고객센터</span></div>
				<ul>	
					<li><a href="#" id="leftNavi1">NOTICE</a></li>
					<li><a href="#" id="leftNavi2">1:1문의</a></li>
					<li><a href="#" id="leftNavi3">FAQ</span></a></li>
					<li class="last"><a href="#" id="leftNavi4">이용안내</a></li>
				</ul>			
			</div> -->
			
			
			<script type="text/javascript">initSubmenu(3,0);</script>


			<!-- contents -->
			<div id="contents">
			
				<div id="customer">
				
					<h2><strong>FAQ</strong><span>회원님들께서 자주 묻는 질문들을 모아 놓았습니다.</span></h2>
					
					
					<div class="faqTab">
					
						<ul>
							<li><a href="../customer/faq" class="on">전체</a></li>
							
							<li class="dep" id="fjo"><a href="../customer/faq_list?f_type=join">회원가입</a></li>
							
							<li id="fpro"><a href="../customer/faq_list?f_type=product">상품</a></li>
							
							<li id="for" class="last"><a href="../customer/faq_list?f_type=order">주문</a></li>
							
						</ul>	
											
					</div>	
					
					
					
					<script type="text/javascript">
						$(function() {
							$('#fjo').click(function() {
								$('#fjo > a').addClass('on');
							});
						});
						
						$(function() {
							$('#fpro').click(function() {
								$('#fpro > a').addClass('on');
							});
						});
						
						$(function() {
							$('#for').click(function() {
								$('#for > a').addClass('on');
							});
						});
						
					</script>
					
					
					
					
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
										
										
										
										<div class="title">${f_list.f_title}</div>
									</div>
								</a>
								

								<div class="faqanswer">
									<div class="faqbox">
										<div class="blet">A</div>
										<div class="text">
										<strong>${f_list.f_content}</strong>
										</div>
									</div>
								</div>
							</li>
							
							
							
							</c:forEach>
							

						</ul>
						
					</div>
					<!-- //FAQ -->




					<!-- 페이징이동1 -->

						<div class="allPageMoving1">
						
						
							<div style="display: block; text-align: center;">


								<!-- 첫페이지 이동 -->
								<a href="faq?nowPage=${paging.startPage}&cntPerPage=${paging.cntPerPage}" class="n">
								<img src="../images/btn/btn_pre2.gif" alt="처음으로"/>
								</a>


								<!-- 이전페이지로 이동 -->
								
								<c:if test="${paging.nowPage != 1}">
								<a href="faq?nowPage=${paging.nowPage - 1}&cntPerPage=${paging.cntPerPage}" class="pre">
								<img src="../images/btn/btn_pre1.gif" alt="앞페이지로"/><!-- &lt; -->
								</a>
								</c:if>
								
								
								<!-- 순차 -->
								
								<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="p">
									
									<c:choose>
									
										<c:when test="${p == paging.nowPage}">
											<a href="#" class="reviews"><strong>${p}</strong></a>
										</c:when>
										
										<c:when test="${p != paging.nowPage }">
											<a href="faq?nowPage=${p}&cntPerPage=${paging.cntPerPage}">${p}</a>
										</c:when>
										
									</c:choose>
									
								</c:forEach>
								
								
								
								<!-- 다음페이지 이동 -->
							
								
								<c:if test="${paging.nowPage != paging.lastPage}" >
								<a href="faq?nowPage=${paging.nowPage+1}&cntPerPage=${paging.cntPerPage}" class="next"><!-- &gt; -->
								<img src="../images/btn/btn_next1.gif" alt="뒤페이지로"/>
								</a>
								</c:if>


								<!-- 마지막 페이지 이동 -->
								<a href="faq?nowPage=${paging.lastPage}" class="n" >
								<img src="../images/btn/btn_next2.gif" alt="마지막페이지로"/>
								</a>

							</div>
							
						</div>
						
						
						<!-- //페이징이동1 -->
					


                    <form action="../customer/faq_search" method="get" name="faq_search" id="faq_search">

					<div class="searchWrap">
					
						<div class="search">
						
							<ul>
								
								<li class="web"><img src="../images/txt/txt_search.gif" alt="search" /></li>
								
								<li class="se">
								
									<select id="searchType" name="searchType">
									
									     <option value="title">제목</option>
									     <option value="content">내용</option>
									     
									</select>
									
								</li>
								
								<li><input type="text" class="searchInput" id="keyword" name="keyword"/></li>
								
								<li class="web" id="searchBtn"><a href="#" onclick="document.getElementById('faq_search').submit()"><img src="../images/btn/btn_search.gif" alt="검색" /></a></li>
								
								<li class="mobile"><a href="#" onclick="document.getElementById('faq_search').submit()"><img src="../images/btn/btn_search_m.gif" alt="검색" /></a></li>
								
							</ul>
							
						</div>
						
					</div>
					
					</form>
					
					
					

				</div>
				
				
			</div>
			<!-- //contents -->
			

		</div>
		
	</div>
	<!-- //container -->

<!-- footer 붙여넣기 -->
	<jsp:include page="../footer.jsp"/>

</body>
</html>