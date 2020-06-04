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
				<li><a href="#">HOME</a></li>
				<li>원두커피</li>
				<li class="last">원두</li>
			</ol>
		</div>
					
		<!-- maxcontents -->
		<div id="maxcontents">
			<div class="banner"><img src="../images/img/product_banner01.jpg" alt="원두커피, 원두커피 전문 기업 쟈뎅의 Coffee Master의 심혈을 기울인 엄선된 원두 선별, 일반 원두커피부터 간편하게 즐기는 원두커피백, POD까지 다양하게 구성되어 있습니다." class="web" /><img src="../images/img/product_banner01_m.jpg" alt="원두커피, 원두커피 전문 기업 쟈뎅의 Coffee Master의 심혈을 기울인 엄선된 원두 선별, 일반 원두커피부터 간편하게 즐기는 원두커피백, POD까지 다양하게 구성되어 있습니다." class="mobile" /></div>
			
			<h2 class="brand">쟈뎅원두<span>더 신선한 커피, 더 맛있는 커피</span></h2>

			<div class="brandTab">
				<ul>
					<li><a href="#" class="hover">드립커피백</a></li>
					<li><a href="#">오리지널 커피백</a></li>
					<li><a href="#">마일드 커피백</a></li>
					<li><a href="#">카페모리</a></li>
					<li><a href="#">카페포드</a></li>
					<li><a href="#">카페리얼</a></li>
					<li><a href="#">워터커피</a></li>
					<li><a href="#">클래스</a></li>
				</ul>
			</div>

			<div class="brandList">
				<ul>
					<!-- 반복 -->
					<c:forEach var="dto" items="${list }">
					<li>
						<a href="#">
							<div class="img"><img src="../images/img/sample_brand.jpg" alt="제품이미지" /></div>
							<div class="name">${dto.p_name}</div>
							<div class="price">${dto.price }</div>
						</a>
					</li>
					<!-- //반복 -->
					</c:forEach>
				</ul>

					
			</div>

			<!-- quickmenu -->
			<div id="quick">
				<div class="cart"><a href="#">장바구니</a></div>
				<div class="wish">
					<p class="title">위시 리스트</p>
					
					<div class="list">
						<ul>	
							<li><a href="#"><img src="../images/img/sample_wish.gif" alt="" /></a>
							<li><a href="#"><img src="../images/img/sample_wish.gif" alt="" /></a>
							<li><a href="#"><img src="../images/img/sample_wish.gif" alt="" /></a>
							<li><a href="#"><img src="../images/img/sample_wish.gif" alt="" /></a>
							<li><a href="#"><img src="../images/img/sample_wish.gif" alt="" /></a>
							<li><a href="#"><img src="../images/img/sample_wish.gif" alt="" /></a>
							<li><a href="#"><img src="../images/img/sample_wish.gif" alt="" /></a>
							<li><a href="#"><img src="../images/img/sample_wish.gif" alt="" /></a>
							<li><a href="#"><img src="../images/img/sample_wish.gif" alt="" /></a>
							<li><a href="#"><img src="../images/img/sample_wish.gif" alt="" /></a>
							<li><a href="#"><img src="../images/img/sample_wish.gif" alt="" /></a>
							<li><a href="#"><img src="../images/img/sample_wish.gif" alt="" /></a>
							<li><a href="#"><img src="../images/img/sample_wish.gif" alt="" /></a>
							<li><a href="#"><img src="../images/img/sample_wish.gif" alt="" /></a>
							<li><a href="#"><img src="../images/img/sample_wish.gif" alt="" /></a>
						</ul>
					</div>

					<div class="total">
						<a href="#none" class="wishLeft"><img src="../images/btn/wish_left.gif" alt="" /></a>
						 <span class="page">1</span> / <span class="sum">3</span>
						<a href="#none" class="wishRight"><img src="../images/btn/wish_right.gif" alt="" /></a>
					</div>

				</div>

				<div class="top"><a href="#">TOP&nbsp;&nbsp;<img src="../images/ico/ico_top.gif" alt="" /></a></div>
			</div>
			<script type="text/javascript">
			$(function(){
				
				$(window).scroll(function(){
					var tg = $("div#quick");
					var xg = $("div#maxcontents");
					var limit = xg.height()- 165;
					var tmp = $(window).scrollTop();

					if (tmp > limit) {
						tg.css({"position" : "absolute","right" : "-150px","bottom" : "208px","top" : "auto"});
					}
					else {
						tg.css({"position" : "fixed","top" : "208px" , "margin-left" : "940px","right" : "auto"});
					}
				});

			});
			</script>
			<!-- //quickmenu -->

		</div>
		<!-- //maxcontents -->

	</div>
	<!-- //container -->
	

<!-- footer 붙여넣기 -->
	<jsp:include page="../footer.jsp"/>

</body>
</html>