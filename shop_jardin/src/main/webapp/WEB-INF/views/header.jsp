<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
</head>
<body>



<!--익스레이어팝업-->
<div id="ieUser" style="display:none">
	<div class="iewrap">	
		<p class="img"><img src="../images/ico/ico_alert.gif" alt="알림" /></p>
		<p class="txt">IE버전이 낮아 홈페이지 이용에 불편함이 있으므로 <strong>IE9이상이나 다른 브라우저</strong>를 이용해 주세요. </p>
		<ul>
			<li><a href="http://windows.microsoft.com/ko-kr/internet-explorer/download-ie" target="_blank"><img src="../images/ico/ico_ie.gif" alt="IE 최신브라우저 다운" ></a></li>
			<li><a href="https://www.google.com/intl/ko/chrome/browser" target="_blank"><img src="../images/ico/ico_chrome.gif" alt="IE 최신브라우저 다운" ></a></li>
			<li><a href="http://www.mozilla.org/ko/firefox/new" target="_blank"><img src="../images/ico/ico_mozila.gif" alt="MOZILA 최신브라우저 다운" ></a></li>
			<li><a href="http://www.apple.com/safari" target="_blank"><img src="../images/ico/ico_safari.gif" alt="SAFARI 최신브라우저 다운" ></a></li>
			<li><a href="http://www.opera.com/ko/o/ie-simple" target="_blank"><img src="../images/ico/ico_opera.gif" alt="OPERA 최신브라우저 다운" ></a></li>		
		</ul>
		<p class="btn" onclick="msiehide();"><img src="../images/ico/ico_close.gif" alt="닫기" /></p>
	</div>
</div>
<!--//익스레이어팝업-->
<!--IE 6,7,8 사용자에게 브라우저 업데이터 설명 Div 관련 스크립트-->
 <script type="text/javascript">

     var settimediv = 200000; //지속시간(1000= 1초)
     var msietimer;

     $(document).ready(function () {
         msiecheck();
     });

     var msiecheck = function () {
         var browser = navigator.userAgent.toLowerCase();
         if (browser.indexOf('msie 6') != -1 ||
                browser.indexOf('msie 7') != -1 ||
				 browser.indexOf('msie 8') != -1) {
             msieshow();			 
         }
         else {
             msiehide();
         }
     }

     var msieshow = function () {
        $("#ieUser").show();
        msietimer = setTimeout("msiehide()", settimediv);
     }

     var msiehide = function () {
		$("#ieUser").hide();
        clearTimeout(msietimer);
     }
</script>

<div id="allwrap">
<div id="wrap">

	<div id="header">
		
		<div id="snbBox">
			<h1><img src="../images/txt/logo.gif" alt="JARDIN SHOP" /></h1>
			<div id="quickmenu">
				<div id="mnaviOpen"><img src="../images/btn/btn_mnavi.gif" width="33" height="31" alt="메뉴열기" /></div>
				<div id="mnaviClose"><img src="../images/btn/btn_mnavi_close.gif" width="44" height="43" alt="메뉴닫기" /></div>
				<ul>
					<li><a href="event">이벤트</a></li>
					<li><a href="../customer/notice_list">CUSTOMER</a></li>
					<li><a href="../community/expr_list">커뮤니티</a></li>
				</ul>
			</div>
			<div id="snb">
			
				<ul>
				
				<c:if test="${session_mem !=null}">
				
				    <li><a href="../mypage/change_info?id=${session_mem}">${session_mem}님</a></li>
					<li><a href="logout">로그아웃</a></li>
					<li><a href="../mypage/ordercheck">MY PAGE</a></li>
					<li><a href="../mypage/cart">CART</a></li>
				
				</c:if>
				
				<c:if test="${session_mem == null}">
				
				    <li><a href="../member/login">LOGIN</a></li>
					<li><a href="../member/step01">JOIN</a></li>
					<li><a href="../mypage/ordercheck">MY PAGE</a></li>
					<li><a href="../mypage/cart">CART</a></li>
				
				</c:if>
				
					<!-- <li><a href="../member/login">LOGIN</a></li>
					<li><a href="../member/step01">JOIN</a></li>
					<li><a href="../mypage/ordercheck">MY PAGE</a></li>
					<li><a href="../mypage/cart">CART</a></li> -->
					
					
				</ul>

				<div id="search">
					<input type="text" class="searchType" />
					<input type="image" src="../images/btn/btn_main_search.gif" width="23" height="20" alt="검색하기" onclick="" />
				</div>
			</div>
		</div>
	</div>


	<!-- GNB -->
	<div id="gnb">
		
		<div id="top">
			<ul>
				<li class="brand t1"><a href="#" id="topNavi1">JARDIN’s BRAND</a>
					<ul id="topSubm1">
						<li><a href="#">클래스</a></li>
						<li><a href="#">바리스타</a></li>
						<li><a href="#">마스터즈</a></li>
						<li><a href="#">데일리 로스팅</a></li>
						<li><a href="#">핸드 드립</a></li>
						<li><a href="#">커피 백</a></li>
						<li><a href="#">마일드 커피 백</a></li>
						<li><a href="#">시그니처</a></li>
						<li><a href="#">카페리얼</a></li>
						<li><a href="#">카페 모리</a></li>
						<li><a href="#">에스프레소 스틱</a></li>
						<li><a href="#">카페리얼 티 라떼</a></li>
						<li><a href="#">아워 티 pet</a></li>
						<li><a href="#">아워 티</a></li>
					</ul>
				</li>
				<li class="t2"><a href="p_list" id="topNavi2">원두</a>
					<ul id="topSubm2">
						<li><a href="#">클래스</a></li>
						<li><a href="#">바리스타</a></li>
						<li><a href="#">마스터즈</a></li>
						<li><a href="#">데일리 로스팅</a></li>
					</ul>
				</li>
				<li class="t1"><a href="p_list" id="topNavi3">커피백</a>
					<ul id="topSubm3">
						<li><a href="#">핸드 드립</a></li>
						<li><a href="#">커피 백</a></li>
						<li><a href="#">마일드 커피 백</a></li>
					</ul>
				</li>
				<li class="t2"><a href="p_list" id="topNavi4">아이스 음료</a>
					<ul id="topSubm4">
						<li><a href="#">시그니처</a></li>
						<li><a href="#">카페리얼</a></li>
					</ul>
				</li>
				<li class="t1"><a href="p_list" id="topNavi5">인스턴트 커피</a>
					<ul id="topSubm5">
						<li><a href="#">카페 모리</a></li>
						<li><a href="#">에스프레소 스틱</a></li>
						<li><a href="#">에스프레소 스틱라떼</a></li>
					</ul>
				</li>
				<li class="t2"><a href="p_list" id="topNavi6">티 음료</a>
					<ul id="topSubm6">
						<li><a href="#">아워 티</a></li>
						<li><a href="#">아워 티 pet</a></li>
						<li><a href="#">카페리얼 티 라떼</a></li>
					</ul>
				</li>
			</ul>
		</div>

		<script type="text/javascript">initTopMenu();</script>
	</div>
	<!-- //GNB -->
	
</body>
</html>