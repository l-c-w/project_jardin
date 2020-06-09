<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
				<li><a href="event_list">EVENT</a></li>
				<li class="last">당첨자 발표</li>
			</ol>
		</div>
		
		<div id="outbox">		
			<jsp:include page="event2.jsp"/>
			
			<!-- 
			<div id="left">
				<div id="title2">EVENT<span>이벤트</span></div>
				
				<ul>	
					<li><a href="event_list" id="leftNavi1">진행중 이벤트</a></li>
					<li><a href="#" id="leftNavi2">종료된 이벤트</a></li>
					<li class="last"><a href="#" id="leftNavi3">당첨자 발표</a></li>
				</ul>			
				
			</div> --><script type="text/javascript">initSubmenu(3,0);</script>


			<!-- contents -->
			<div id="contents">
				<div id="mypage">
					<h2><strong>당첨자 발표</strong><span>쟈뎅샵의 특별한 혜택이 가득한 이벤트의 당첨자를 발표합니다. </span></h2>
					
					<div class="orderDivMt">
						<table summary="NO, 제목, 등록일, 조회수 순으로 이벤트 당첨자을 조회 하실수 있습니다." class="orderTable2" border="1" cellspacing="0">
							<caption>이벤트 당첨자 보기</caption>
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
								<c:forEach var="dto" items="${winner_list }">
								<tr>
									<td class="tnone">${dto.w_code }</td>
									<td class="left">
										<a href="prizewinner_view?w_code=${dto.w_code }">${dto.w_title }</a>
										<img src="../images/ico/ico_new.gif" alt="NEW" />
									</td>
									<fmt:formatDate var="w_wdate" value="${dto.w_wdate }" pattern="YYYY-MM-dd" />
									<td>${w_wdate }</td>
									<td class="tnone right">${dto.w_hit }</td>
								</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
						

				<!-- searchFlag가 있을때 -->
		   		<c:choose>
		   	 	<c:when test="${searchFlag != null }">
			   	 <div class="pagination" id="pagination">
			   	 
			   	 	<!-- 첫 페이지 이동 -->
			   	 	<a href="list.do?searchFlag=${searchFlag}&opt=${opt}&search=${search}&page=${startpage }">
			   			<span class="page_num">
			   	 		<strong>◁◁</strong>
			   	 		</span>
			   	 	</a>
			   	 	
			   	 	<!-- 이전 페이지 이동버튼 -->
			   	 	<c:if test="${page <= 1 }">
			   	 	<span class="page_num">
			   	 		<strong>◁</strong>
			   	 	</span>
			   	 	</c:if>
			   	 	<c:if test="${page > 1 }">
			   			<span class="page_num">
			   	 		<a href="list.do?searchFlag=${searchFlag}&opt=${opt}&search=${search}&page=${page - 1 }"><strong>◁</strong></a>
			   	 		</span>
			   	 	</c:if>
			   	 	
			   	 	<!-- 순차적으로 페이지 출력 -->
			   	 	<c:forEach var="a" begin="${startpage }" end="${endpage }" step="1">
				   	 	<span class="page_num">
				   	 	<c:choose>
					   	 	<c:when test="${a == page }">
						   	 	<strong id="page_num2">${a}</strong>
					   	 	</c:when>	
					   	 	<c:when test="${a != page }">
						   	 	<a href="list.do?searchFlag=${searchFlag}&opt=${opt}&search=${search}&page=${a}"><strong>${a}</strong></a>
					   	 	</c:when>	
				   	 	</c:choose>			   	 		   	 	
				   	 	</span>
			   	 	</c:forEach>
				   	 	
				   	<!-- 다음 페이지 이동버튼 -->
			   	 	<c:if test="${page >= maxpage }">
			   	 	<span class="page_num">
			   	 		<strong>▷</strong>
			   	 	</span>
			   	 	</c:if>
			   	 	<c:if test="${page < maxpage }">
			   			<span class="page_num">
			   	 		<a href="list.do?searchFlag=${searchFlag}&opt=${opt}&search=${search}&page=${page + 1 }"><strong>▷</strong></a>
			   	 		</span>
			   	 	</c:if>
			   	 	
			   	 	<!-- 마지막 페이지 이동 -->
			   	 	<a href="list.do?page=${maxpage }">
			   			<span class="page_num">
			   	 		<strong>▷▷</strong>
			   	 		</span>
			   	 	</a>
			   	 	
			  	 </div>
		   	 	
		   	 	</c:when>
		   	 	<!-- // searchFlag가 있을때 끝-->
		   	 	
		   	 	<!-- searchFlag가 없을때 -->
		   	 	<c:otherwise>
					<div class="btnAreaList">
						<div class="allPageMoving1">

						<a href="prizewinner_list?page=${startpage }" class="n"><img src="../images/btn/btn_pre2.gif" alt="처음으로"/></a>
						<c:if test="${page <= 1 }">
							<img src="../images/btn/btn_pre1.gif" alt="앞페이지로"/>
						</c:if>
						<c:if test="${page > 1 }">
							<a href="prizewinner_list?page=${page - 1 }" class="pre">
							<img src="../images/btn/btn_pre1.gif" alt="앞페이지로"/></a>
						</c:if>
						
						<c:forEach var="a" begin="${startpage }" end="${endpage }" step="1">
						<c:choose>
							<c:when test="${a == page }">
								<strong>${a }</strong>
							</c:when>
							<c:when test="${a != page }">
								<a href="prizewinner_list?page=${a }">${a }</a>
							</c:when>
						</c:choose>						
						</c:forEach>
						
						<c:if test="${page >= maxpage}">
						<img src="../images/btn/btn_next1.gif" alt="뒤페이지로"/>
						</c:if>
						<c:if test="${page < maxpage}">
						<a href="prizewinner_list?page=${page + 1 }" class="next">
						<img src="../images/btn/btn_next1.gif" alt="뒤페이지로"/></a>
						</c:if>						
						<a href="prizewinner_list?page=${maxpage }" class="n"><img src="../images/btn/btn_next2.gif" alt="마지막페이지로"/></a>

						</div>
					</div>
					<!-- // searchFlag가 없을때 끝-->
					</c:otherwise>
					</c:choose>
					<!-- //페이징이동1 끝-->
					

					<div class="searchWrap">
						<div class="search">
							<ul>
								<li class="web"><img src="../images/txt/txt_search.gif" alt="search" /></li>
								<li class="se">
									<select>
										<option value="all" >전체</option>
										<option value="title" >제목</option>
										<option value="content" >내용</option>
									</select>
								</li>
								<li><input type="text" class="searchInput" /></li>
								<li class="web"><a href="#"><img src="../images/btn/btn_search.gif" alt="검색" /></a></li>
								<li class="mobile"><a href="#"><img src="../images/btn/btn_search_m.gif" alt="검색" /></a></li>
							</ul>
						</div>
					</div>
					<!-- //포토 구매후기 -->


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