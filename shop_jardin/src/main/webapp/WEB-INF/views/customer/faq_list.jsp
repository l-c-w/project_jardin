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
			
		
			<script type="text/javascript">initSubmenu(3,0);</script>


			<!-- contents -->
			<div id="contents">
			
				<div id="customer">
				
					<h2><strong>FAQ</strong><span>회원님들께서 자주 묻는 질문들을 모아 놓았습니다.</span></h2>
					
					
						<div class="faqTab">
					
						<ul>
						
						<li><a href="../customer/faq">전체</a></li>
						
						<li class="dep" id="fjo">
						<a href="../customer/faq_list?f_type=join" <c:if test="${f_type eq 'join'}">  class="on" </c:if>>회원가입</a></li>
						
						
						<li id="fpro">
						<a href="../customer/faq_list?f_type=product" <c:if test="${f_type eq 'product'}"> class="on" </c:if>>상품</a></li>
						
						
						<li id="for" class="last"><a href="../customer/faq_list?f_type=order" 
						<c:if test="${f_type eq 'order'}"> class="on" </c:if>>주문</a></li>
						
					
						<!-- <li><a href="../customer/faq">전체</a></li>
						<li class="dep" id="fjo"><a href="../customer/faq_list?f_type=join">회원가입</a></li>
						<li id="fpro"><a href="../customer/faq_list?f_type=product">상품</a></li>
						<li id="for" class="last"><a href="../customer/faq_list?f_type=order">주문</a></li> -->
							
							
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
							
							<c:forEach var="f_list" items="${f_type_list}">
							
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




						<div class="btnAreaList">
						
						
						<!-- 페이징이동1 -->
						<div class="allPageMoving1">

						
						<a href="#" class="n"><img src="../images/btn/btn_pre2.gif" alt="처음으로"/></a><a href="#" class="pre"><img src="../images/btn/btn_pre1.gif" alt="앞페이지로"/></a>
						
						<strong>1</strong>
					
						<a href="#">2</a>
						<a href="#">3</a>
						<a href="#">4</a>
						<a href="#">5</a>
						
						<a href="#" class="next"><img src="../images/btn/btn_next1.gif" alt="뒤페이지로"/></a><a href="#" class="n"><img src="../images/btn/btn_next2.gif" alt="마지막페이지로"/></a>

						</div>
						
						<!-- //페이징이동1 -->
						
						
						
					</div>
					
						
					</div>




					<div class="searchWrap">
						
						<div class="search">
						
							<ul>
								
								<li class="web"><img src="../images/txt/txt_search.gif" alt="search" /></li>
								
								<li class="se">
									<select>
										<option value="title">제목</option>
										<option value="content">내용</option>
									</select>
								</li>
								
								<li><input type="text" class="searchInput"/></li>
								
								<li class="web"><a href="#"><img src="../images/btn/btn_search.gif" alt="검색" /></a></li>
								
								<li class="mobile"><a href="#"><img src="../images/btn/btn_search_m.gif" alt="검색" /></a></li>
							</ul>
							
						</div>
						
					</div>
					
					
					
					

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