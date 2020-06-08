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
				<li><a href="../main/main">HOME</a></li>
				<li><a href="expr_list">COMMUNITY</a></li>
				<li class="last">체험단</li>
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


			<script type="text/javascript">initSubmenu(1,0);</script>


			<!-- contents -->
			<div id="contents">
				<div id="mypage">
					<h2><strong>체험단</strong><span>쟈뎅샵에서 진행되는 무료체험 기회를 놓치지 마세요.</span></h2>					
					<div class="viewDivMt">
						<div class="viewHead">
							<div class="subject">
								<ul>
									<li>카페모리 홍차라떼, 드립커피백 체험단 모집 <span class="ingbtn">진행중</span><span class="finishbtn">종료</span></li>
								</ul>
							</div>
							<div class="day">
								<p class="txt">리뷰 등록기간<span>2014-05-06 ~ 2014-06-30</span></p>
								<p class="appraisal">
									체험단 평점
									<span>
										<img src="../images/ico/ico_star.gif" alt="별점" />
										<img src="../images/ico/ico_star.gif" alt="별점" />
										<img src="../images/ico/ico_star.gif" alt="별점" />
										<img src="../images/ico/ico_star.gif" alt="별점" />
										<img src="../images/ico/ico_star_off.gif" alt="별점" />
									</span>
								</p>
							</div>
							<div class="data">
								<ul>
									<li>모집 인원<span>15명</span></li>
									<li class="dep">신청기간<span>2014-04-01 ~ 2014-04-25</span></li>
									<li class="dep">체험단 발표<span>2014-04-30</span></li>
								</ul>
							</div>
						</div>

						<div class="viewContents">
							안녕하세요.<br/>
							쟈뎅샵 회원분들을 대상으로 카페모리 홍차라떼, 드립커피백 체험단 모집합니다.<br/>
							쟈뎅의 대표 상품을 체험할 수 있는 기회를 놓치지 마세요!
						</div>
					</div>


					<!-- Tab -->
					<div class="productTab normaltab">
						<ul>
							<li><a href="#" class="on">체험단 신청</a></li>
							<li class="last"><a href="#">체험 리뷰</a></li>
						</ul>						
					</div>
					<!-- //Tab -->


					<div class="checkDivTab">
						<table summary="분류, 별점, 제목, 상세 내용 순으로 상품평을 작성 하실수 있습니다." class="checkTable" border="1" cellspacing="0">
							<caption>상품평 작성</caption>
							<colgroup>
							<col width="19%" class="tw30" />
							<col width="*" />
							</colgroup>
							<tbody>
								<tr>
									<th scope="row"><span>제목</span></th>
									<td>
										<input type="text" class="wlong" />
									</td>
								</tr>
								<tr>
									<th scope="row"><span>내용</span></th>
									<td>
										<textarea class="tta"></textarea>
									</td>
								</tr>								
							</tbody>
						</table>
					</div>

					<!-- Btn Area -->
					<div class="btnArea">
						<div class="bCenter">
							<ul>	
								<li><a href="#" class="sbtnMini">신청하기</a></li>
								<li><a href="#" class="nbtnbig">취소</a></li>	
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