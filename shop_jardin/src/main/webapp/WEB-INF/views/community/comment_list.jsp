<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<!DOCTYPE html>
<html>
<head>
<title> JARDIN SHOP </title>
<meta charset="UTF-8">
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
<title>Insert title here</title>
</head>
<body>

<!-- header 붙여넣기 -->
	<jsp:include page="../header.jsp"/>
	
<!-- container -->
	<div id="container">

		<div id="location">
			<ol>
				<li><a href="../main/main">HOME</a></li>
				<li><a href="expr_list">COMMUNITY</a></li>
				<li class="last">사용 후기</li>
			</ol>
		</div>

		<div id="outbox">
		
		<div id="left">
				<div id="title2">COMMUNITY<span>커뮤니티</span>
				</div>
				<ul>
					<li><a href="expr_list" id="leftNavi1">체험단</a></li>
					<li><a href="comment_list" id="leftNavi2">사용후기</a></li>
					<li class="last"><a href="enjoy_list" id="leftNavi3">ENJOY COFFEE</a></li>
				</ul>
			</div>
			
			<script type="text/javascript">initSubmenu(2,0);</script>


			<!-- contents -->
			<div id="contents">
			
				<div id="mypage">
				
					<h2><strong>사용 후기</strong><span>쟈뎅 제품을 구매하신 회원님들의 소중한 후기입니다.</span></h2>
					
					<div class="productTab normaltab">
					
						<ul>
							<li><a href="epilogue_list">포토 구매후기</a></li>
							<li class="last"><a href="comment_list" class="on">상품평</a></li>
						</ul>		
										
					</div>


					<!-- 상품평 -->
					
					
					<div class="orderDiv">
					
					
					<table summary="상품평 게시판으로 NO, 제품명, 제목, 작성자, 평점/등록일, 조회수 순으로 조회 하실수 있습니다." class="orderTable" border="1" cellspacing="0">
						
						
						<caption>주문 제품 확인</caption>
						
						
						<colgroup>
						<col width="8%" class="tnone" />
						<col width="12%" class="tw20" />
						<col width="*" />
						<col width="14%" class="tw20" />
						<col width="14%" class="tnone" />
						<col width="10%" class="tnone" />
						</colgroup>
						
						
						<thead>
							<th scope="col" class="tnone">NO.</th>
							<th scope="col">제품명</th>
							<th scope="col">제목</th>
							<th scope="col">작성자</th>
							<th scope="col" class="tnone">평점/등록일</th>
							<th scope="col" class="tnone">조회수</th>
						</thead>
						
						<tbody>
						
						
						<!-- 일반상품평 리스트 불러오기  -->
						
						<c:forEach var="c_list" items="${viewAll}">
						
							<tr>
								<td class="tnone">${c_list.cr_num}</td>
								<td>${c_list.p_code}</td>
								<td class="left">
									<a href="#">
										<span class="orange">[먹어봤어요]</span> 
										
										<a href="comment_view?cr_num=${c_list.cr_num}">${c_list.cr_title}</a>
										
										<img src="../images/ico/ico_new.gif" alt="new" />
									</a>
								</td>
								
								<td>${c_list.id}</td>
								
								
								<td class="tnone">
								
								
										<c:forEach begin="1" end="${c_list.cr_score}" step="1">
										
										<img src="../images/ico/ico_star.gif" alt="별점" />
										
										</c:forEach>
										
									
									<br/><fmt:formatDate pattern="yyyy-MM-dd" value="${c_list.cr_wdate}" /><%-- ${c_list.cr_wdate} --%>
								</td>
								
								
								
								<td class="right tnone" style="text-align: center;">${c_list.cr_hit }</td>
								
							</tr>
							
                          </c:forEach>
						
						</tbody>
						
					</table>
					
					</div>



					<div class="btnAreaList">
					
					
					<c:if test="${s_n != null}">
					
						<div class="bwright">
							<ul>
								<li><a href="comment_write" class="sbtnMini">글쓰기</a></li>
							</ul>
						</div>
						
						</c:if>
						
						
				      <c:if test="${s_n == null}">
					
						<div class="bwright">
						</div>
						
						</c:if>
						
						

					<!-- 페이징이동1 -->

						<div class="allPageMoving1">
						
						<%-- 	<div style="float: right;">
								<select id="cntPerPage" name="sel" onchange="selChange()">
									<option value="5"
										<c:if test="${paging.cntPerPage == 5}">selected</c:if>>5줄
										보기</option>
									<option value="10"
										<c:if test="${paging.cntPerPage == 10}">selected</c:if>>10줄
										보기</option>
									<option value="15"
										<c:if test="${paging.cntPerPage == 15}">selected</c:if>>15줄
										보기</option>
									<option value="20"
										<c:if test="${paging.cntPerPage == 20}">selected</c:if>>20줄
										보기</option>
								</select>
							</div>
							<!-- 옵션선택 끝 --> --%>
							
						
							<div style="display: block; text-align: center;">


								<!-- 첫페이지 이동 -->
								<a href="comment_list?nowPage=${paging.startPage}&cntPerPage=${paging.cntPerPage}" class="n">
								<img src="../images/btn/btn_pre2.gif" alt="처음으로"/>
								</a>


								<!-- 이전페이지로 이동 -->
								
								<c:if test="${paging.nowPage != 1}">
								<a href="comment_list?nowPage=${paging.nowPage - 1}&cntPerPage=${paging.cntPerPage}" class="pre">
								<img src="../images/btn/btn_pre1.gif" alt="앞페이지로"/><!-- &lt; -->
								</a>
								</c:if>


							<%-- 	<c:if test="${paging.startPage != 1}">
									<a href="comment_list?nowPage=${paging.startPage - 1}&cntPerPage=${paging.cntPerPage}" class="pre">
									<img src="../images/btn/btn_pre1.gif" alt="앞페이지로"/><!-- &lt; -->
									</a>
								</c:if>
								 --%>
								
								
								<!-- 순차 -->
								
								<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="p">
									
									<c:choose>
									
										<c:when test="${p == paging.nowPage}">
											<a href="#" class="reviews"><strong>${p}</strong></a>
										</c:when>
										
										<c:when test="${p != paging.nowPage }">
											<a href="comment_list?nowPage=${p}&cntPerPage=${paging.cntPerPage}">${p}</a>
										</c:when>
										
									</c:choose>
									
								</c:forEach>
								
								
								
								<!-- 다음페이지 이동 -->
							
							<%-- 	<c:if test="${paging.endPage != paging.lastPage}" >
									<a href="comment_list?nowPage=${paging.endPage+1}&cntPerPage=${paging.cntPerPage}" class="next"><!-- &gt; -->
									<img src="../images/btn/btn_next1.gif" alt="뒤페이지로"/>
									</a>
								</c:if> --%>
								
								
								<c:if test="${paging.nowPage != paging.lastPage}" >
								<a href="comment_list?nowPage=${paging.nowPage+1}&cntPerPage=${paging.cntPerPage}" class="next"><!-- &gt; -->
								<img src="../images/btn/btn_next1.gif" alt="뒤페이지로"/>
								</a>
								</c:if>


								<!-- 마지막 페이지 이동 -->
								<a href="comment_list?nowPage=${paging.lastPage}" class="n" >
								<img src="../images/btn/btn_next2.gif" alt="마지막페이지로"/>
								</a>

							</div>
							
						</div>


						<!-- <div class="allPageMoving1">

						<a href="#" class="n"><img src="../images/btn/btn_pre2.gif" alt="처음으로"/></a>
						<a href="#" class="pre"><img src="../images/btn/btn_pre1.gif" alt="앞페이지로"/></a>
						
						<strong>1</strong>
						
						<a href="#">2</a>
						<a href="#">3</a>
						<a href="#">4</a>
						<a href="#">5</a>
						
						<a href="#" class="next"><img src="../images/btn/btn_next1.gif" alt="뒤페이지로"/></a>
						<a href="#" class="n"><img src="../images/btn/btn_next2.gif" alt="마지막페이지로"/></a>


						</div>
						 -->
						
						<!-- //페이징이동1 -->



					<div class="searchWrap">
						<div class="search">
							<ul>
								<li class="web"><img src="../images/txt/txt_search.gif" alt="search" /></li>
								<li class="se">
									<select>
										<option value="title">제목</option>
										<option value="content">내용</option>
										<option value="writer">글쓴이</option>
									</select>
								</li>
								<li><input type="text" class="searchInput" /></li>
								<li class="web"><a href="#"><img src="../images/btn/btn_search.gif" alt="검색" /></a></li>
								<li class="mobile"><a href="#"><img src="../images/btn/btn_search_m.gif" alt="검색" /></a></li>
							</ul>
						</div>
					</div>
					<!-- //상품평 -->
					
					
					

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