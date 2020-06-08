<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JARDIN SHOP</title>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="description" content="JARDIN SHOP" />
<meta name="keywords" content="JARDIN SHOP" />
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scaleable=no" />
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
	<jsp:include page="../header.jsp" />

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

			<div class="sContents">
				<p>
					<strong><span class="orange">‘원두커피백’</span>에 대한 검색 결과입니다.</strong>
				</p>
				<p>다른 상품을 검색하시려면 다시 한번 검색어를 입력하신 후 검색 버튼을 클릭하세요.</p>

				<div class="searchForm">
					<input type="text" class="reSearchType"
						onfocus="this.className='reSearchfocus'"
						onblur="if (this.value.length==0) {this.className='reSearchType'}else {this.className='reSearchfocusnot'}" />
					<div class="btn">
						<a href="#"><img src="../images/btn/btn_result_search.gif"
							alt="검색" /></a>
					</div>
					<p class="rechk">
						<input type="checkbox" /><label for="">결과 내 재검색</label>
					</p>
				</div>
			</div>

			<div class="tabCategory">
				<div class="cateLeft">
					<span class="orange">‘원두커피백’</span> 검색 결과 <span class="orange">15</span>건
				</div>
				<div class="cateRight">
					<ul>
						<li class="first"><a href="#" class="on">인기도순</a></li>
						<li><a href="#">신상품순</a></li>
						<li><a href="#">높은 가격순</a></li>
						<li class="last"><a href="#">낮은 가격순</a></li>
					</ul>
				</div>
			</div>

			<div class="brandList">
				<ul>
					<!-- 반복 -->
					<c:forEach var="dto2" items="${list2}">
						<li><a href="#">
								<div class="img">
									<img src="../images/img/mcoffee1.png" alt="제품이미지" />
								</div>
								<div class="name">${dto2.p_name}</div>
								<div class="price">${dto2.price }</div>
						</a></li>
					</c:forEach>
					<!-- //반복 -->
				</ul>
			</div>

		</div>
		<!-- //maxcontents -->

	</div>
	<!-- //container -->


	<!-- footer 붙여넣기 -->
	<jsp:include page="../footer.jsp" />

</body>
</html>