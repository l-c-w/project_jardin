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
				<li><a href="#">HOME</a></li>
				<li><a href="#">비회원 주문조회</a></li>
				<li class="last">비회원 주문조회</li>
			</ol>
		</div>
		
		<div id="outbox">		
			<div id="left">
				<div id="title">비회원<br/>주문조회</div>
				<ul>	
					<li><a href="#" id="leftNavi1">비회원 주문조회</a></li>
					<li class="last"><a href="#" id="leftNavi2">반품/교환 현황</a></li>
				</ul>			
			</div><script type="text/javascript">initSubmenu(1,0);</script>


			<!-- contents -->
			<div id="contents">
				<div id="mypage">
					<h2><strong>비회원 주문조회</strong><span>비회원 구매하신 주문내역을 확인하실 수 있습니다.</span></h2>
				

					<h3 class="dep">주문내역</h3>
					<div class="orderDivNm">
						<table summary="주문일자/주문번호, 상품명, 가격, 수량, 주문상태 순으로 조회를 하실수 있습니다." class="orderTable" border="1" cellspacing="0">
							<caption>주문게시판</caption>
							<colgroup>
							<col width="25%" class="tw28" />
							<col width="*" />
							<col width="15%" class="tnone" />
							<col width="8%" class="tnone" />
							<col width="18%" class="tw30" />
							</colgroup>
							<thead>
								<th scope="col">주문일자 <span>/ 주문번호</span></th>
								<th scope="col">상품명</th>
								<th scope="col" class="tnone">가격</th>
								<th scope="col" class="tnone">수량</th>
								<th scope="col">주문상태</th>
							</thead>
							<tbody>
								<tr>
									<td>
										<p class="day">2012-05-30</p>
										<p class="orderNum">201205301204-8057</p>
									</td>
									<td class="left">
										쟈뎅 오리지널 콜롬비아 페레이라 원두커피백 15p
									</td>
									<td class="tnone">999,999 원</td>
									<td class="tnone">1000개</td>
									<td>
										<span class="heavygray">배송완료</span>
										<ul class="state">	
											<li class="r5"><a href="../mypage/return.html" class="obtnMini iw40">교환</a></li>
											<li><a href="../mypage/return.html" class="nbtnMini iw40">반품</a></li>
											<li><a href="#" class="reviewbtn">리뷰작성</a></li>
										</ul>										
									</td>
								</tr>

								<tr>
									<td>
										<p class="day">2012-05-30</p>
										<p class="orderNum">201205301204-8057</p>
									</td>
									<td class="left">
										쟈뎅 오리지널 콜롬비아 페레이라 원두커피백 15p
									</td>
									<td class="tnone">999,999 원</td>
									<td class="tnone">1000개</td>
									<td>
										<span class="lightgray">입금대기중</span>
										<ul class="state">
											<li><a href="#" class="nbtnMini iw83">취소</a></li>
										</ul>										
									</td>
								</tr>

								<tr>
									<td>
										<p class="day">2012-05-30</p>
										<p class="orderNum">201205301204-8057</p>
									</td>
									<td class="left">
										쟈뎅 오리지널 콜롬비아 페레이라 원두커피백 15p
									</td>
									<td class="tnone">999,999 원</td>
									<td class="tnone">1000개</td>
									<td>
										<span class="lightgray">입금완료</span>
										<ul class="state">
											<li><a href="#" class="nbtnMini iw83">취소</a></li>
										</ul>										
									</td>
								</tr>

								<tr>
									<td>
										<p class="day">2012-05-30</p>
										<p class="orderNum">201205301204-8057</p>
									</td>
									<td class="left">
										쟈뎅 오리지널 콜롬비아 페레이라 원두커피백 15p
									</td>
									<td class="tnone">999,999 원</td>
									<td class="tnone">1000개</td>
									<td>
										<span class="orange">배송중</span>									
									</td>
								</tr>

								<tr>
									<td>
										<p class="day">2012-05-30</p>
										<p class="orderNum">201205301204-8057</p>
									</td>
									<td class="left">
										쟈뎅 오리지널 콜롬비아 페레이라 원두커피백 15p
									</td>
									<td class="tnone">999,999 원</td>
									<td class="tnone">1000개</td>
									<td>
										<span class="orange">배송준비중</span>									
									</td>
								</tr>
							</tbody>
						</table>

						<div class="noData">
							주문내역이 없습니다.
						</div>
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
			</div>
			<!-- //contents -->


<script type="text/javascript" src="../js/jquery.fancybox-1.3.4.pack.js"></script>
<link rel="stylesheet" type="text/css" href="../css/jquery.fancybox-1.3.4.css" />
<script type="text/javascript">
$(function(){

	// layer popup
	var winWidth = $(window).width();
	if(winWidth > 767){
		var layerCheck = 760;
	}else{
		var layerCheck = 320;
	}

	$(".iw40").fancybox({
		'autoDimensions'    : false,
		'showCloseButton'	: false,
		'width' : layerCheck,
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
	<!-- //container -->
	

<!-- footer 붙여넣기 -->
	<jsp:include page="../footer.jsp"/>

</body>
</html>