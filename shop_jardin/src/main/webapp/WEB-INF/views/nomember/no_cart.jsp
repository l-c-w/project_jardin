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
				<li class="last">장바구니</li>
			</ol>
		</div>
		
		<div id="outbox">		
			
			<!-- maxcontents -->
			<div id="maxcontents">
				<div id="mypage">
					<h2><strong>장바구니</strong></h2>
					
				<!-- 장바구니에 상품이 있을경우 -->
					<!-- 장바구니 상품 -->
					<h3 class="dep">장바구니에 담긴 상품</h3>
					<div class="orderDivNm">
						<table summary="장바구니에 담긴 상품들을 전체선택, 상품명, 가격, 수량, 합계, 주문 순으로 조회 및 주문을 하실수 있습니다." class="orderTable" border="1" cellspacing="0">
							<caption>장바구니 상품목록</caption>
							<colgroup>
							<col width="7%"/>
							<col width="*" />
							<col width="14%" class="tnone" />
							<col width="10%" class="tw14"/>
							<col width="14%" class="tw28"/>
							<col width="14%" class="tnone" />
							</colgroup>
							<thead>
								<th scope="col"><input type="checkbox" /></th>
								<th scope="col">상품명</th>
								<th scope="col" class="tnone">가격</th>
								<th scope="col">수량</th>
								<th scope="col">합계</th>
								<th scope="col" class="tnone">주문</th>
							</thead>
							<tbody>
								<tr>
									<td><input type="checkbox" /></td>
									<td class="left">
										<p class="img"><img src="../images/img/sample_product.jpg" alt="상품" width="66" height="66" /></p>

										<ul class="goods">
											<li>
												<a href="#">쟈뎅 오리지널 콜롬비아 페레이라 원두커피백 15p</a>
											</li>
										</ul>
									</td>
									<td class="tnone">1,123,400 원</td>
									<td><input class="spinner" value="1" maxlength="3" /></td>
									<td>1,123,400 원</td>
									<td class="tnone">
										<ul class="order">	
											<li><a href="#" class="obtnMini iw70">바로구매</a></li>
											<li><a href="#" class="nbtnMini iw70">상품삭제</a></li>
										</ul>
									</td>
								</tr>
								
								<tr>
									<td><input type="checkbox" /></td>
									<td class="left">
										<p class="img"><img src="../images/img/sample_product.jpg" alt="상품" width="66" height="66" /></p>

										<ul class="goods">
											<li>
												<a href="#">가나다라마바사아자차카타파하 가나다라마바사아자차카타파하 가나다라마바사아자차카타파하</a>
											</li>
										</ul>
									</td>
									<td class="tnone">1,123,400 원</td>
									<td><input class="spinner" value="1" maxlength="3" /></td>
									<td>1,123,400 원</td>
									<td class="tnone">
										<ul class="order">	
											<li><a href="#" class="obtnMini iw70">바로구매</a></li>
											<li><a href="#" class="nbtnMini iw70">상품삭제</a></li>
										</ul>
									</td>
								</tr>
							</tbody>
						</table>
					</div>

					<div class="btnArea">
						<div class="bRight">
							<ul>
								<li><a href="#" class="selectbtn">전체선택</a></li>
								<li><a href="#" class="selectbtn2">선택수정</a></li>
								<li><a href="#" class="selectbtn2">선택삭제</a></li>
							</ul>
						</div>
					</div>
					<!-- //장바구니 상품 -->
					

					<!-- 총 주문금액 -->
					<div class="amount">
						<h4>총 주문금액</h4>
						<ul class="info">
							<li>
								<span class="title">상품 합계금액</span>
								<span class="won"><strong>1,132,310</strong> 원</span>
							</li>
							<li>
								<span class="title">배송비</span>
								<span class="won"><strong>2,500</strong> 원</span>
							</li>
						</ul>
						<ul class="total">
							<li class="txt"><strong>결제 예정 금액</strong></li>
							<li class="money"><span>1,134,810</span> 원</li>
						</ul>
					</div>
					<!-- //총 주문금액 -->

					<div class="cartarea">
						<ul>
							<li><a href="#" class="ty1">선택상품 <span>주문하기</span></a></li>
							<li><a href="#" class="ty2">전체상품 <span>주문하기</span></a></li>
							<li class="last"><a href="#" class="ty3">쇼핑 <span>계속하기</span></a></li>
						</ul>
					</div>

				<!-- //장바구니에 상품이 있을경우 -->


				<!-- 장바구니에 상품이 없을경우
					<div class="noting">
						<div class="point"><span class="orange">장바구니</span>에 담긴 상품이 없습니다.</div>

						<a href="#">쇼핑 계속하기</a>
					</div>
				 //장바구니에 상품이 없을경우 -->


<script type="text/javascript" src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
<style type="text/css">
.ui-corner-all{border-bottom-right-radius:0 !important; border-bottom-left-radius:0 !important; border-top-left-radius:0 !important; border-top-right-radius:0 !important;}
.ui-widget-content{border:0;}
.ui-spinner-input{width:44px; margin:0; border:1px #ddd solid; padding:2px 0 2px 5px; font-family:'Nanum Gothic' !important; font-size:12px !important;}
</style>

<script type="text/javascript">
$(function() {
	var spinner = $( ".spinner" ).spinner({ min: 1, max: 999 });
});
</script>


				</div>
			</div>
			<!-- //maxcontents -->


		</div>
	</div>
	<!-- //container -->
	

<!-- footer 붙여넣기 -->
	<jsp:include page="../footer.jsp"/>

</body>
</html>