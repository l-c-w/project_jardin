<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
				<li class="last">나의 쿠폰</li>
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
			 --><script type="text/javascript">initSubmenu(5,0);</script>


			<!-- contents -->
			<div id="contents">
				<div id="mypage">
					<h2><strong>나의 쿠폰</strong><span>회원님께서 보유하신 쿠폰을 확인해보세요.</span></h2>
					
					<div class="myInfo">
						<ul>
							<li class="info"><strong>가나다</strong> 님의 정보를 한눈에 확인하세요.</li>
							<li>보유 쿠폰<br/><span class="num"><!--  -->${usable_coupon }</span> <span class="unit">장</span></li>
							<li class="point">내 포인트<br/><span class="num">${usable_point }</span> <span class="unit">P</span></li>
							<li class="last">진행중인 주문<br/><span class="num">199</span> <span class="unit">건</span></li>
						</ul>
					</div>





					<div class="otherTab">
						<ul>
							<li><a href="javascript:;" onclick="return false;" id="tab_serviceable">사용 가능 쿠폰</a></li>
							<li class="last"><a href="javascript:;" onclick="return false;" id="tab_usage">쿠폰 사용내역</a></li>
						</ul>						
					</div><script type="text/javascript">$(function(){$(".otherTab ul li a:eq(0)").click();});</script>
				
					<!-- Serviceable -->
					<div class="tab_serviceable couponnone">
						<div class="shortTxt">현재 사용 가능한 쿠폰은 <span class="orange">${usable_coupon }</span>장입니다.</div>
						<div class="orderDivNm">
							<table summary="사용가능 한 쿠폰으로 No, 종류, 쿠폰명, 사용기한, 상태를 조회 하실수 있습니다." class="orderTable2" border="1" cellspacing="0">
								<caption>사용 가능 쿠폰 보기</caption>
								<colgroup>
								<col width="9%" class="tnone" />
								<col width="20%" class="tw28" />
								<col width="30%" class="tnone"/>
								<col width="*" />
								<col width="14%" class="tw20" />
								</colgroup>
								<thead>
									<th scope="col" class="tnone">NO.</th>
									<th scope="col">종류</th>
									<th scope="col" class="tnone">쿠폰명</th>
									<th scope="col">사용기한</th>
									<th scope="col">상태</th>
								</thead>
								<tbody>
									<c:set var="list_count" value="${fn:length(ucoupon_list) }"/>
									<c:if test="${not empty ucoupon_list }">
									<c:forEach var="ucouponlist" items="${ucoupon_list }" varStatus="status">
									<tr>
										<td class="tnone">${list_count-status.index }</td>
										<c:if test="${ucouponlist.cou_reward<1 }"><td><fmt:parseNumber value="${ucouponlist.cou_reward*100 }" integerOnly="true"/>% 할인</td></c:if>
										<c:if test="${ucouponlist.cou_reward>1 }"><td><fmt:parseNumber value="${ucouponlist.cou_reward }" integerOnly="true"/>원 할인</td></c:if>
										<td class="tnone">${ucouponlist.cou_name }</td>
										<td><fmt:formatDate value="${ucouponlist.issue_date }" pattern="yyyy/MM/dd"/>  ~ <fmt:formatDate value="${ucouponlist.exp_date }" pattern="yyyy/MM/dd"/> </td>
										<td><span class="heavygray">사용가능</span></td>
									</tr>
									</c:forEach>
										</c:if>
									
								</tbody>

							</table>
							<c:if test="${empty ucoupon_list }">
							<div class="noData">
								사용가능한 쿠폰이 없습니다.
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
						<div class="shortTxt">쿠폰 사용 내역입니다.</div>
						<div class="orderDivNm">
							<table summary="사용한 쿠폰내역으로 No, 종류, 쿠폰명, 사용기한, 상태를 조회 하실수 있습니다." class="orderTable2" border="1" cellspacing="0">
								<caption>쿠폰 사용내역</caption>
								<colgroup>
								<col width="9%" class="tnone" />
								<col width="20%" class="tw28" />
								<col width="30%" class="tnone"/>
								<col width="*" />
								<col width="14%" class="tw20" />
								</colgroup>
								<thead>
									<th scope="col" class="tnone">NO.</th>
									<th scope="col">종류</th>
									<th scope="col" class="tnone">쿠폰명</th>
									<th scope="col">사용일자</th>
									<th scope="col">상태</th>
								</thead>
								<tbody>
									<c:set var="nlist_count" value="${fn:length(ncoupon_list) }"/>
									<c:if test="${not empty ncoupon_list }">
									<c:forEach var="ncouponlist" items="${ncoupon_list }" varStatus="status">
									<tr>
										<td class="tnone">${nlist_count-status.index }</td>
										<c:if test="${ncouponlist.cou_reward<1 }"><td><fmt:parseNumber value="${ncouponlist.cou_reward*100 }" integerOnly="true"/>% 할인</td></c:if>
										<c:if test="${ncouponlist.cou_reward>1 }"><td><fmt:parseNumber value="${ncouponlist.cou_reward }" integerOnly="true"/>원 할인</td></c:if>
										<td class="tnone">${ncouponlist.cou_name }</td>
										<c:if test="${empty ncouponlist.cou_state }"><td><fmt:formatDate value="${ncouponlist.issue_date }" pattern="yyyy/MM/dd"/>  ~ <fmt:formatDate value="${ncouponlist.exp_date }" pattern="yyyy/MM/dd"/> </td>
																					<td><span class="heavygray">기간만료</span></td></c:if>
										<c:if test="${not empty ncouponlist.cou_state }"><td><fmt:formatDate value="${ncouponlist.cou_state }" pattern="yyyy/MM/dd"/></td>
																						<td><span class="heavygray">사용완료</span></td></c:if>
									</tr>
									</c:forEach>
									</c:if>
									</tbody>
							</table>
							<c:if test="${empty ncoupon_list }">
							<div class="noData">
								등록된 상품이 없습니다.
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