<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>   
 <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>   
    
    
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
				<li><a href="#">MY PAGE</a></li>
				<li class="last">1:1문의</li>
			</ol>
		</div>
		
		<div id="outbox">		
		<jsp:include page="mypage1.jsp"></jsp:include>
		
			
			<!-- <div id="left">
				<div id="title">MY PAGE<span>마이페이지</span></div>
				<ul>	
					<li><a href="#" id="leftNavi1">주문/배송 조회</a></li>
					<li><a href="#" id="leftNavi2">반품/배송 현황</a></li>
					<li><a href="#" id="leftNavi3">장바구니</a></li>
					<li><a href="#" id="leftNavi4">위시리스트</a></li>
					<li><a href="#" id="leftNavi5">나의 쿠폰</a></li>
					<li><a href="#" id="leftNavi6">나의 포인트</a></li>
					<li><a href="#" id="leftNavi7">1:1문의</a></li>
					<li><a href="#" id="leftNavi8">회원정보 수정</a></li>
					<li class="last"><a href="#" id="leftNavi9">회원 탈퇴</a></li>
				</ul>			
			</div>
			 -->
			 
			<script type="text/javascript">initSubmenu(7,0);</script>


			<!-- contents -->
			<div id="contents">
			
				<div id="mypage">
				
					<h2><strong>1:1문의</strong><span>쟈뎅에 궁금하신 사항을 남겨주시면 답변해드립니다.</span></h2>
					
					<div class="myInfo">
						<ul>
							<li class="info"><strong>${s_n}</strong> 님의 정보를 한눈에 확인하세요.</li>
							<li>보유 쿠폰<br/><span class="num">199</span> <span class="unit">장</span></li>
							<li class="point">내 포인트<br/><span class="num">100,000</span> <span class="unit">P</span></li>
							<li class="last">진행중인 주문<br/><span class="num">199</span> <span class="unit">건</span></li>
						</ul>
					</div>
					
					
				

					<div class="orderDivNm">
					
						<table summary="NO, 종류, 적립포인트, 적립날짜, 상태 순으로 현재 적립된 포인트를 조회 하실수 있습니다." class="orderTable2" border="1" cellspacing="0">
							
							<caption>적립내역 보기</caption>
							
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
									
									<td class="left"><a href="inquiry_view?oo_num=${oo_list.oo_num}">${oo_list.oo_title}</a></td>
									
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
					
					 <div class="noData">   문의 하신 내용이 없습니다.
					  </div>
						
				       </c:if>
				       
				       
				       
				         <div class="btnAreaList">
					
						<div class="bwright">
							<ul>
								<li><a href="../mypage/inquiry_write" class="writeBtn">글쓰기</a></li>
							</ul>
						</div>
				       
				       
				       
				       <c:if test="${not empty viewAll}">

							<!-- 페이징이동1 -->

						<div class="allPageMoving1">
						
						
							<div style="display: block; text-align: center;">


								<!-- 첫페이지 이동 -->
								<a href="inquiry_list?nowPage=${paging.startPage}&cntPerPage=${paging.cntPerPage}" class="n">
								<img src="../images/btn/btn_pre2.gif" alt="처음으로"/>
								</a>


								<!-- 이전페이지로 이동 -->
								
								<c:if test="${paging.nowPage != 1}">
								<a href="inquiry_list?nowPage=${paging.nowPage - 1}&cntPerPage=${paging.cntPerPage}" class="pre">
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
											<a href="inquiry_list?nowPage=${p}&cntPerPage=${paging.cntPerPage}">${p}</a>
										</c:when>
										
									</c:choose>
									
								</c:forEach>
								
								
								
								<!-- 다음페이지 이동 -->
							
								
								<c:if test="${paging.nowPage != paging.lastPage}" >
								<a href="inquiry_list?nowPage=${paging.nowPage+1}&cntPerPage=${paging.cntPerPage}" class="next"><!-- &gt; -->
								<img src="../images/btn/btn_next1.gif" alt="뒤페이지로"/>
								</a>
								</c:if>


								<!-- 마지막 페이지 이동 -->
								<a href="inquiry_list?nowPage=${paging.lastPage}" class="n" >
								<img src="../images/btn/btn_next2.gif" alt="마지막페이지로"/>
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
	</div>
	<!-- //container -->
	

<!-- footer 붙여넣기 -->
	<jsp:include page="../footer.jsp"/>

</body>
</html>