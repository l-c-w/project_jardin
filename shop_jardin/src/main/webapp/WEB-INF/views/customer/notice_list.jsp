<%@page import="java.util.Date"%>
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
				<li class="last">NOTICE</li>
			</ol>
		</div>
		
		<div id="outbox">		
		
			<jsp:include page="custom1.jsp"/>
			
			
			<!-- 
			
			<div id="left">
				<div id="title2">CUSTOMER<span>고객센터</span></div>
				<ul>	
					<li><a href="#" id="leftNavi1">NOTICE</a></li>
					<li><a href="#" id="leftNavi2">1:1문의</a></li>
					<li><a href="#" id="leftNavi3">FAQ</span></a></li>
					<li class="last"><a href="#" id="leftNavi4">이용안내</a></li>
				</ul>			
			</div> 
			
			-->
			
			
			
			<script type="text/javascript">initSubmenu(1,0);</script>


			<!-- contents -->
			<div id="contents">
			
				<div id="customer">
				
					<h2><strong>NOTICE</strong><span>쟈뎅샵 소식을 전해드립니다.</span></h2>
					
					<div class="orderDivMt">
					
						<table summary="NO, 제목, 등록일, 조회수 순으로 공지사항을 조회 하실수 있습니다." class="orderTable2" border="1" cellspacing="0">
							
							<caption>공지사항 보기  </caption>
							
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
										<a href="notice_view?n_num=${no.n_num}">${no.n_title}</a>
										
										
									
									 <c:set var="ago" value="<%=new Date(new Date().getTime() - 60*60*24*1000)%>"/>
									 <fmt:formatDate value="${ago}" pattern="yyyy-MM-dd" var="ago"/>
									 
									 <c:set var="wdate" value="${no.n_wdate}"/>
									 <fmt:formatDate value="${wdate}" pattern="yyyy-MM-dd" var="wdate"/>
									 
									
									   <c:choose>
										
										<c:when test="${wdate <= ago}">
										</c:when>
										
										<c:when test="${wdate > ago}">
										<img src="../images/ico/ico_new.gif" alt="NEW" /> 
										</c:when>
										
										</c:choose>
										
										
										<!-- <img src="../images/ico/ico_new.gif" alt="NEW" /> -->
										
									</td>
									<td><fmt:formatDate pattern="yyyy-MM-dd" value="${no.n_wdate}" /></td>
									<td class="tnone right" style="text-align: center;">${no.n_hit}</td>
								</tr>
								
							</c:forEach>
								
							</tbody>
							
						</table>
						
					</div>
						



					<div class="btnAreaList">
						

						<!-- 페이징이동1 -->

						<div class="allPageMoving1">
						
						
							<div style="display: block; text-align: center;">
							
							
							
							<c:choose>
							
							
							<c:when test="${searchType ne null and keyword ne null }">
						
							<!-- 첫페이지 이동 -->
								<a href="notice_search?searchType=${searchType}&keyword=${keyword}&nowPage=${paging.startPage}&cntPerPage=${paging.cntPerPage}" class="n">
								<img src="../images/btn/btn_pre2.gif" alt="처음으로"/>
								</a>


								<!-- 이전페이지로 이동 -->
								
								<c:if test="${paging.nowPage != 1}">
								<a href="notice_search?searchType=${searchType}&keyword=${keyword}&nowPage=${paging.nowPage - 1}&cntPerPage=${paging.cntPerPage}" class="pre">
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
											<a href="notice_search?searchType=${searchType}&keyword=${keyword}&nowPage=${p}&cntPerPage=${paging.cntPerPage}">${p}</a>
										</c:when>
										
									</c:choose>
									
								</c:forEach>
								
								
								
								<!-- 다음페이지 이동 -->
							
								
								<c:if test="${paging.nowPage != paging.lastPage}" >
								<a href="notice_search?searchType=${searchType}&keyword=${keyword}&nowPage=${paging.nowPage+1}&cntPerPage=${paging.cntPerPage}" class="next"><!-- &gt; -->
								<img src="../images/btn/btn_next1.gif" alt="뒤페이지로"/>
								</a>
								</c:if>


								<!-- 마지막 페이지 이동 -->
								<a href="notice_search?searchType=${searchType}&keyword=${keyword}&nowPage=${paging.lastPage}" class="n" >
								<img src="../images/btn/btn_next2.gif" alt="마지막페이지로"/>
								</a>
							
							</c:when>
							
							
							
							
							
							<c:otherwise>
							
							<!-- 첫페이지 이동 -->
								<a href="notice_list?nowPage=${paging.startPage}&cntPerPage=${paging.cntPerPage}" class="n">
								<img src="../images/btn/btn_pre2.gif" alt="처음으로"/>
								</a>


								<!-- 이전페이지로 이동 -->
								
								<c:if test="${paging.nowPage != 1}">
								<a href="notice_list?nowPage=${paging.nowPage - 1}&cntPerPage=${paging.cntPerPage}" class="pre">
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
											<a href="notice_list?nowPage=${p}&cntPerPage=${paging.cntPerPage}">${p}</a>
										</c:when>
										
									</c:choose>
									
								</c:forEach>
								
								
								
								<!-- 다음페이지 이동 -->
							
								
								<c:if test="${paging.nowPage != paging.lastPage}" >
								<a href="notice_list?nowPage=${paging.nowPage+1}&cntPerPage=${paging.cntPerPage}" class="next"><!-- &gt; -->
								<img src="../images/btn/btn_next1.gif" alt="뒤페이지로"/>
								</a>
								</c:if>


								<!-- 마지막 페이지 이동 -->
								<a href="notice_list?nowPage=${paging.lastPage}" class="n" >
								<img src="../images/btn/btn_next2.gif" alt="마지막페이지로"/>
								</a>
							
							</c:otherwise>
							
							
							
							</c:choose>
							
							

							</div>
							
						</div>
						
						
						<!-- //페이징이동1 -->
						
						
					</div>


             <form action="../customer/notice_search" method="get" name="notice_search" id="notice_search">

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
								
								<li class="web" id="searchBtn"><a href="#" onclick="document.getElementById('notice_search').submit()"><img src="../images/btn/btn_search.gif" alt="검색" /></a></li>
								
								<li class="mobile"><a href="#" onclick="document.getElementById('notice_search').submit()"><img src="../images/btn/btn_search_m.gif" alt="검색" /></a></li>
								
							</ul>
							
						</div>
						
					</div>
					
					</form>
					

   <!--  <script type="text/javascript">
    
    $(document).on('click', '#notice_search', function(e){

		e.preventDefault();

		var url = "${pageContext.request.contextPath}/customer/notice_search";

		url = url + "?searchType=" + $('#searchType').val();

		url = url + "&keyword=" + $('#keyword').val();

		location.href = url;

		console.log(url);

	});	

    </script>  
    
    -->

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