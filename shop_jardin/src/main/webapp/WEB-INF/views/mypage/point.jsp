<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
				<li><a href="#">MY PAGE</a></li>
				<li class="last">나의 포인트</li>
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
			 
			 <script type="text/javascript">initSubmenu(6,0);</script>


			<!-- contents -->
			<div id="contents">
				<div id="mypage">
					<h2><strong>나의 포인트</strong><span>회원님께서 보유하신 포인트를 확인해보세요.</span></h2>
					
					<div class="myInfo">
						<ul>
							<li class="info"><strong>${sessionScope.session_mem }</strong> 님의 정보를 한눈에 확인하세요.</li>
							<li>보유 쿠폰<br/><span class="num">${usable_coupon }</span> <span class="unit">장</span></li>
							<li class="point">내 포인트<br/><span class="num">${usable_point }</span> <span class="unit">P</span></li>
							<li class="last">진행중인 주문<br/><span class="num">199</span> <span class="unit">건</span></li>
						</ul>
					</div>





					<div class="otherTab">
						<ul>
							<li><a href="javascript:;" onclick="return false;" id="tab_saving">적립내역</a></li>
							<li class="last"><a href="javascript:;" onclick="return false;" id="tab_usage">사용내역</a></li>
						</ul>						
					</div><script type="text/javascript">$(function(){$(".otherTab ul li a:eq(0)").click();});</script>
				
					<!-- Saving -->
					<div class="tab_saving couponnone">
						<div class="shortTxt">현재 총 누적 포인트는 <span class="orange">${point_sum }</span> Point입니다.</div>
						<div class="orderDivNm">
							<table summary="NO, 종류, 적립포인트, 적립날짜, 상태 순으로 현재 적립된 포인트를 조회 하실수 있습니다." class="orderTable2" border="1" cellspacing="0">
								<caption>적립내역 보기</caption>
								<colgroup>
								<col width="9%" class="tnone" />
								<col width="*" />
								<col width="15%" class="tw20" />
								<col width="15%" class="tnone" />
								
								</colgroup>
								<thead>
									<th scope="col" class="tnone">NO.</th>
									<th scope="col">종류</th>
									<th scope="col">적립 <span>포인트</span></th>
									<th scope="col" class="tnone">적립날짜</th>
								</thead>
								<tbody>
								<c:if test="${not empty point_list }">
								<c:set var="listlength" value="${fn:length(point_list) }"/>
								<c:set var="listnum" value="1"/>
									<c:forEach var="pointlist" items="${point_list }" varStatus="status">
									<tr>
										<td class="tnone">${listlength-status.index }</td>
										<td class="left" style="text-align: center;">${pointlist.po_case }</td>
										<td>${pointlist.po_point }</td>
										<td class="tnone"><fmt:formatDate value="${pointlist.po_date }" pattern="yyyy/MM/dd"/> </td>
									</tr>
									</c:forEach>
								</c:if>
								</tbody>
							</table>
							<c:if test="${empty point_list }">
							<div class="noData">
								적립된 포인트가 없습니다.
							</div>
							</c:if>
						</div>
						

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
					<!-- //Serviceable -->


					<!-- Usage -->
					<div class="tab_usage couponnone">
						<div class="shortTxt">현재까지 사용한 총 사용 포인트는 <span class="orange">${usepoint_sum }</span> Point입니다.</div>
						<div class="orderDivNm">
							<table summary="NO, 종류, 적립포인트, 적립날짜, 상태 순으로 현재 사용된 포인트를 조회 하실수 있습니다." class="orderTable2" border="1" cellspacing="0">
								<caption>사용내역 보기</caption>
								<colgroup>
								<col width="9%" class="tnone" />
								<col width="*" />
								<col width="15%" class="tw20" />
								<col width="15%" class="tnone" />
								</colgroup>
								<thead>
									<th scope="col" class="tnone">NO.</th>
									<th scope="col">종류</th>
									<th scope="col">적립 <span>포인트</span></th>
									<th scope="col" class="tnone">적립날짜</th>
								</thead>
								<tbody>
								<c:if test="${not empty usepoint_list }">
								<c:set var="ulistlength" value="${fn:length(usepoint_list) }"/>
									<c:forEach var="usepointlist" items="${usepoint_list }" varStatus="status">
									<tr>
										<td class="tnone">${ulistlength-status.index }</td>
										<td class="left" style="text-align: center;">${usepointlist.u_case }</td>
										<td>${usepointlist.u_point }</td>
										<td class="tnone"><fmt:formatDate value="${usepointlist.u_date }" pattern="yyyy/MM/dd"/> </td>
									</tr>
									</c:forEach>
									</c:if>
									

								</tbody>
							</table>
							<c:if test="${empty usepoint_list }">
							<div class="noData">
								포인트 사용내역이 없습니다.
							</div>
							</c:if>
						</div>
						

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
					<!-- //Usage -->





					<div class="productTab">
						<ul>
							<li><a href="javascript:;" onclick="return false;" id="tab_today">오늘 본 상품 <span>(4)</span></a></li>
							<li class="last"><a href="javascript:;" onclick="return false;" id="tab_basket">장바구니 <span>(0)</span></a></li>
						</ul>						
					</div><script type="text/javascript">$(function(){$(".productTab ul li a:eq(0)").click();});</script>	

					<!-- Today Product -->
					<div class="tab_today disnone">
						
						<div class="productList">
							<ul>
								<!-- Product Yes -->
								<li>
									<span class="chk"><input type="checkbox" /></span>
									<span class="img"><img src="../images/img/sample_product.jpg" alt="상품" /></span>
									<span class="name"><a href="#">쟈뎅 오리지널 블루마운틴 블렌드 원두커피백 15P</a></span>
									<span class="price">4,330원</span>
								</li>

								<li>
									<span class="chk"><input type="checkbox" /></span>
									<span class="img"><img src="../images/img/sample_product.jpg" alt="상품" /></span>
									<span class="name"><a href="#">쟈뎅 오리지널 블루마운틴 블렌드 원두커피백 15P</a></span>
									<span class="price">4,330원</span>
								</li>

								<li>
									<span class="chk"><input type="checkbox" /></span>
									<span class="img"><img src="../images/img/sample_product.jpg" alt="상품" /></span>
									<span class="name"><a href="#">쟈뎅 오리지널 블루마운틴 블렌드 원두커피백 15P</a></span>
									<span class="price">4,330원</span>
								</li>

								<li>
									<span class="chk"><input type="checkbox" /></span>
									<span class="img"><img src="../images/img/sample_product.jpg" alt="상품" /></span>
									<span class="name"><a href="#">쟈뎅 오리지널 블루마운틴 블렌드 원두커피백 15P</a></span>
									<span class="price">4,330원</span>
								</li>
								<!-- //Product Yes -->

								<!-- Product No 
								<li class="noProduct">
									상품이 없습니다.
								</li>
								 -->
							</ul>
						</div>

						<div class="btnArea">
							<div class="bRight">
								<ul>
									<li><a href="#" class="nbtnbig">선택상품 삭제</a></li>
									<li><a href="#" class="sbtnMini">장바구니 추가</a></li>
								</ul>
							</div>
						</div>

					</div>
					<!-- //Today Product -->


					<!-- Shopping Basket -->
					<div class="tab_basket disnone">
						
						<div class="productList">
							<ul>
								<!-- Product Yes -->
								<li>
									<span class="chk"><input type="checkbox" /></span>
									<span class="img"><img src="../images/img/sample_product.jpg" alt="상품" /></span>
									<span class="name"><a href="#">쟈뎅 장바구니 블루마운틴 블렌드 원두커피백 15P</a></span>
									<span class="price">4,330원</span>
								</li>

								<li>
									<span class="chk"><input type="checkbox" /></span>
									<span class="img"><img src="../images/img/sample_product.jpg" alt="상품" /></span>
									<span class="name"><a href="#">쟈뎅 장바구니 블루마운틴 블렌드 원두커피백 15P</a></span>
									<span class="price">4,330원</span>
								</li>

								<li>
									<span class="chk"><input type="checkbox" /></span>
									<span class="img"><img src="../images/img/sample_product.jpg" alt="상품" /></span>
									<span class="name"><a href="#">쟈뎅 장바구니 블루마운틴 블렌드 원두커피백 15P</a></span>
									<span class="price">4,330원</span>
								</li>

								<li>
									<span class="chk"><input type="checkbox" /></span>
									<span class="img"><img src="../images/img/sample_product.jpg" alt="상품" /></span>
									<span class="name"><a href="#">쟈뎅 장바구니 블루마운틴 블렌드 원두커피백 15P</a></span>
									<span class="price">4,330원</span>
								</li>
								<!-- //Product Yes -->

								<!-- Product No 
								<li class="noProduct">
									상품이 없습니다.
								</li>
								 -->
							</ul>
						</div>

						<div class="btnArea">
							<div class="bRight">
								<ul>
									<li><a href="#" class="nbtnbig">선택상품 삭제</a></li>
									<li><a href="#" class="sbtnMini">선택상품 주문</a></li>
								</ul>
							</div>
						</div>

					</div>
					<!-- //Shopping Basket -->



<script type="text/javascript" src="../js/jquery.fancybox-1.3.4.pack.js"></script>
<link rel="stylesheet" type="text/css" href="../css/jquery.fancybox-1.3.4.css" />
<script type="text/javascript">
$(function(){
	function distance(){
		var winWidth = $(window).width();
		if(winWidth > 767){
			$(".productList ul li:nth-child(4n+4)").css("padding","0 0 0 0");
		}else{
			$(".productList ul li:nth-child(4n+4)").css("padding","0 10px");
		}
	}
	distance();
	$(window).resize(function(){distance();});

	$(".iwc80").fancybox({
		'autoDimensions'    : false,
		'showCloseButton'	: false,
		'width' : 486,
		'padding' : 0,
		'type'			: 'iframe',
		'onComplete' : function() {
			$('#fancybox-frame').load(function() { // wait for frame to load and then gets it's height
			$('#fancybox-content').height($(this).contents().find('body').height());
			});
		}
	});

});
</script>


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