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


<script type="text/javascript">

	var msg = "${msg}";

	if (msg == 'ok') {
		alert('회원가입이 완료되었습니다');
	}
	
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
				<li><a href="#">MEMBERSHIP</a></li>
				<li class="last">회원가입</li>
			</ol>
		</div>
		
		<div id="outbox">		
			
			<jsp:include page="member2.jsp"/>
			
			<script type="text/javascript">initSubmenu(2,0);</script>


			<!-- contents -->
			<div id="contents">
				<div id="member">
					<h2><strong>회원가입</strong><span>회원으로 가입하시면 보다 더 다양한 혜택을 누리실 수 있습니다.</span></h2>
					
					<!-- STEP -->
					<div class="stepWrap">
						<div class="step">
							<p class="web">STEP 01</p>
							<p class="txt">실명확인</p>							
						</div>

						<div class="step">
							<p class="web">STEP 02</p>
							<p class="txt">약관 동의</p>
						</div>

						<div class="step">
							<p class="web">STEP 03</p>
							<p class="txt"><span>회원정보</span> <span>입력</span></p>
						</div>

						<div class="step stepon">
							<p class="web">STEP 04</p>
							<p class="txt"><span>회원가입</span> <span>완료</span></p>
							<p class="ck"><img src="../images/bg/bg_step.png" alt="현재위치" /></p>
						</div>
					</div>
					<!-- //STEP -->
					
					<div class="celebrate">	
						<div class="img"><img src="../images/txt/txt_celebrate01.png" alt="JARDIN THECOFFEE CERATOR, SINCE 1984" /></div>
						<p class="thx">감사합니다. ${join_mem} 님 <span>회원가입이 완료되었습니다.</span></p>
						<p class="txt">
							저희 가족이 되어주셔서 감사합니다.<br/>
							가입 시 입력하신 이메일로 가입 완료 메일이 전송되었습니다.<br/>
							언제나 고객님께 즐겁고 소중한 시간이 되도록 최선을 다 하겠습니다.<br/><br/>
							가입 시 입력하신 정보는 마이페이지에서 수정하실 수 있습니다.
						</p>
					</div>

					<!-- Btn Area -->
					<div class="btnArea">
						<div class="bCenter">
							<ul>
								<li><a href="../main/main" class="nbtnbig">메인으로</a></li>
								<li><a href="login" class="sbtnMini">로그인</a></li>
							</ul>
						</div>
					</div>
					<!-- //Btn Area -->


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