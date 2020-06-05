<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

    
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
				<li><a href="expr_list">COMMUNITY</a></li>
				<li class="last">사용 후기(포토)</li>
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
							<li><a href="epilogue_list" class="on">포토 구매후기</a></li>
							<li class="last"><a href="comment_list">상품평</a></li>
						</ul>		
										
					</div>
					
					

					<!-- 포토 구매후기 -->
					<div class="imgListType">

						<ul>

							<!-- List -->
							
							<c:forEach var="p_list" items="${plist}">
							
							<li>
							
								<div class="subject">
										<span style="vertical-align: middle;">${p_list.pr_num}</span>
									</div>
							
							
								<div class="img">
								
								 <img src="/ex/img/${p_list.pr_file}" width="150" height="150"/>
								
						     	<%-- <img src="<c:url value="/img/${p_list.pr_file}"/>" style="width: 150px; height: 150px;"/>
						     	 --%>
								</div>
								
								
								
								<div class="txt">
								
									<div class="subject">
										<a href="epilogue_view?id=${p_list.id}"><span class="orange">[먹어봤어요]</span>${p_list.pr_title}</a>
									</div>
									
									<div class="conf">
										${p_list.pr_content}
									</div>
									
									<div class="data">
									
										<p>작성자 <span>${p_list.id}</span></p>
										<p>등록일 <span><fmt:formatDate pattern="yyyy-MM-dd" value="${p_list.pr_wdate}" /></span></p>
										<p>조회수 <span>${p_list.pr_hit}</span></p>
										
										<p>평점 
										
										<span class="ty">
										
										<c:forEach begin="1" end="${p_list.pr_score}" step="1">
										
										<img src="../images/ico/ico_star.gif" alt="별점" />
										
										</c:forEach>
										
										</span> 
									
										</p>
										
									</div>
									
								</div>
							</li>
							
							
							</c:forEach>
							
							<!-- //List -->
							
						<!-- 	
							<li>
								<div class="img"><img src="../images/img/sample_epil.jpg" width="155" height="160" alt="" /></div>
								
								<div class="txt">
								
									<div class="subject">
										<a href="#"><span class="orange">[먹어봤어요]</span> 쟈뎅, 테이크아웃 카페모리 구매후기</a>
									</div>
									
									<div class="conf">
										소문만큼 맛있었습니다.소문만큼 맛있었습니다.소문만큼 맛있었습니다.소문만큼 맛있었습니다.소문만큼 맛있었습니다.소문만큼 맛있었습니다.소문만큼 맛있었습니다.소문만큼 맛있었습니다.....
									</div>
									
									<div class="data">
										<p>작성자 <span>dlsif***</span></p>
										<p>등록일 <span>2014-03-24</span></p>
										<p>조회수 <span>325</span></p>
										<p>평점 
											<span>
												<img src="../images/ico/ico_star.gif" alt="별점" />
												<img src="../images/ico/ico_star.gif" alt="별점" />
												<img src="../images/ico/ico_star.gif" alt="별점" />
												<img src="../images/ico/ico_star.gif" alt="별점" />
												<img src="../images/ico/ico_star.gif" alt="별점" />
											</span>
										</p>
									</div>
									
								</div>
								
							</li> -->

						
						</ul>
						
					</div>


					<div class="btnAreaList">
						<div class="bwright">
							<ul>
								<li><a href="epilogue_write" class="sbtnMini">글쓰기</a></li>
							</ul>
						</div>


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

					<div class="searchWrap">
					
						<div class="search">
						
							<ul>
								<li class="web"><img src="../images/txt/txt_search.gif" alt="search" /></li>
								
								<li class="se">
								
									
									<select>
										<option value="제목">제목</option>
										<option value="내용">내용</option>
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