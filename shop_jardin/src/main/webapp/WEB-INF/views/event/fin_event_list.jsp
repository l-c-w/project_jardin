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
				<li><a href="main">HOME</a></li>
				<li><a href="event_list">EVENT</a></li>
				<li class="last">종료된 이벤트</li>
			</ol>
		</div>
		
		<div id="outbox">		
			<jsp:include page="event2.jsp"/>
			
		<script type="text/javascript">initSubmenu(2,0);</script>


			<!-- contents -->
			<div id="contents">
				<div id="mypage">
					<h2><strong>종료된 이벤트</strong><span>쟈뎅샵의 특별한 혜택이 가득했던 이벤트 목록을 확인하실 수 있습니다.</span></h2>
					
					<!-- list -->
					<div class="eventList">
						<ul>
							<!-- 반복 -->
							<c:forEach var="dto" items="${fin_event_list }">
							<li>
								<div class="img">
									<a href="fin_event_view?e_code=${dto.e_code }"><img src="../images/img/sample_event.jpg" alt="진행중 이벤트" /></a>
								</div>
								<div class="txt">
									<div class="subject">${dto.e_title}</div>
									<fmt:formatDate var="e_start" value="${dto.e_start }" pattern="YYYY/MM/dd" />
									<fmt:formatDate var="e_end" value="${dto.e_end }" pattern="YYYY/MM/dd" />
									<div class="day">이벤트 기간 : ${e_start } ~ ${e_end }</div>
								</div>
							</li>
							</c:forEach>
							<!-- 반복  끝 -->
						</ul>
					</div>
					<!-- //list -->

					<!-- 페이징이동 -->
					<!-- searchFlag가 있을때 -->
					<c:choose>
						<c:when test="${searchFlag != null }">
							<div class="btnAreaList">
								<div class="allPageMoving1">
									<!-- 첫 페이지 이동 -->
									<a href="fin_event_list?searchFlag=${searchFlag}&opt=${opt}&search=${search}&page=${startpage }" class="n">
										<img src="../images/btn/btn_pre2.gif" alt="처음으로"/>
									</a>
									<!-- 이전 페이지 이동버튼 -->
									<c:if test="${page <= 1 }">
										<img src="../images/btn/btn_pre1.gif" alt="앞페이지로"/>
									</c:if>
									<c:if test="${page > 1 }">
										<a href="fin_event_list?searchFlag=${searchFlag}&opt=${opt}&search=${search}&page=${page - 1 }" class="pre">
											<img src="../images/btn/btn_pre1.gif" alt="앞페이지로"/>
										</a>
									</c:if>
									<!-- 순차적으로 페이지 출력 -->
							   	 	<c:forEach var="a" begin="${startpage }" end="${endpage }" step="1">
								   	 	<span class="page_num">
									   	 	<c:choose>
										   	 	<c:when test="${a == page }">
											   	 	<strong id="page_num2">${a}</strong>
										   	 	</c:when>	
										   	 	<c:when test="${a != page }">
											   	 	<a href="fin_event_list?searchFlag=${searchFlag}&opt=${opt}&search=${search}&page=${a}">${a}</a>
										   	 	</c:when>	
									   	 	</c:choose>			   	 		   	 	
								   	 	</span>
							   	 	</c:forEach>
									<!-- 다음 페이지 이동버튼 -->
									<c:if test="${page >= maxpage }">
										<img src="../images/btn/btn_next1.gif" alt="뒤페이지로"/>
									</c:if>
									<c:if test="${page < maxpage }">
										<a href="fin_event_list?searchFlag=${searchFlag}&opt=${opt}&search=${search}&page=${page + 1 }" class="next">
											<img src="../images/btn/btn_next1.gif" alt="뒤페이지로"/>
										</a>
									</c:if>
									<!-- 마지막 페이지 이동 -->
									<a href="fin_event_list?searchFlag=${searchFlag}&opt=${opt}&search=${search}&page=${maxpage }" class="n">
										<img src="../images/btn/btn_next2.gif" alt="마지막페이지로"/>
									</a>
								</div>
							</div>
						</c:when>
						<c:otherwise>
						<!-- searchFlag가 없을때 -->
							<div class="btnAreaList">
								<div class="allPageMoving1">
									<!-- 첫 페이지 이동 -->
									<a href="fin_event_list?page=${startpage }" class="n">
										<img src="../images/btn/btn_pre2.gif" alt="처음으로"/>
									</a>
									<!-- 이전 페이지 이동버튼 -->
									<c:if test="${page <= 1 }">
										<img src="../images/btn/btn_pre1.gif" alt="앞페이지로"/>
									</c:if>
									<c:if test="${page > 1 }">
										<a href="fin_event_list?page=${page - 1 }" class="pre">
											<img src="../images/btn/btn_pre1.gif" alt="앞페이지로"/>
										</a>
									</c:if>
									<!-- 순차적으로 페이지 출력 -->
							   	 	<c:forEach var="a" begin="${startpage }" end="${endpage }" step="1">
								   	 	<span class="page_num">
									   	 	<c:choose>
										   	 	<c:when test="${a == page }">
											   	 	<strong id="page_num2">${a}</strong>
										   	 	</c:when>	
										   	 	<c:when test="${a != page }">
											   	 	<a href="fin_event_list?page=${a}">${a}</a>
										   	 	</c:when>	
									   	 	</c:choose>			   	 		   	 	
								   	 	</span>
							   	 	</c:forEach>
									<!-- 다음 페이지 이동버튼 -->
									<c:if test="${page >= maxpage }">
										<img src="../images/btn/btn_next1.gif" alt="뒤페이지로"/>
									</c:if>
									<c:if test="${page < maxpage }">
										<a href="fin_event_list?page=${page + 1 }" class="next">
											<img src="../images/btn/btn_next1.gif" alt="뒤페이지로"/>
										</a>
									</c:if>
									<!-- 마지막 페이지 이동 -->
									<a href="fin_event_list?page=${maxpage }" class="n">
										<img src="../images/btn/btn_next2.gif" alt="마지막페이지로"/>
									</a>
								</div>
							</div>
						</c:otherwise>
					</c:choose>
					<!-- //페이징이동 -->
					
					<!-- 검색 -->
					<div class="searchWrap">
						<form action="fin_event_list" method="get">
						<div class="search">
							<ul>
								<li class="web">
									<img src="../images/txt/txt_search.gif" alt="search" />
								</li>
								<li class="se">
									<select name="opt">
										<option value="all" >전체</option>
										<option value="tit" >제목</option>
										<option value="con" >내용</option>
									</select>
								</li>
								<li>
									<input type="text" class="searchInput" name="search" />
								</li>
								<li class="web">
									<input type="submit" src="../images/btn/btn_search.gif" alt="검색" />
								</li>
								<li class="mobile">
									<input type="submit" src="../images/btn/btn_search_m.gif" alt="검색" />
								</li>
							</ul>
						</div>
						</form>
					</div>
					<!-- //검색 -->

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