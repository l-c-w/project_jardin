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
					<div class="viewDivMt viewLine">
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


					<div class="productTab normaltab">
						<ul>
							<li><a href="#">체험단 신청</a></li>
							<li class="last"><a href="#" class="on">체험 리뷰</a></li>
						</ul>						
					</div>


					<div class="checkDivTab">
						<table summary="분류, 별점, 제목, 상세 내용 순으로 상품평을 작성 하실수 있습니다." class="checkTable" border="1" cellspacing="0">
							<caption>상품평 작성</caption>
							<colgroup>
							<col width="19%" class="tw30" />
							<col width="*" />
							</colgroup>
							<tbody>
								<tr>
									<th scope="row"><span>작은이미지</span></th>
									<td>
										<input type="file" class="fileType" />
									</td>
								</tr>
								<tr>
									<th scope="row"><span>평가</span></th>
									<td>
										<ul class="pta">
											<li>
												<input type="radio" name="appraisal" id="starFive" checked="checked"/>
												<label for="starFive" class="star">
													<img src="../images/ico/ico_star.gif" alt="별점" />
													<img src="../images/ico/ico_star.gif" alt="별점" />
													<img src="../images/ico/ico_star.gif" alt="별점" />
													<img src="../images/ico/ico_star.gif" alt="별점" />
													<img src="../images/ico/ico_star.gif" alt="별점" />
												</label>
											</li>

											<li>
												<input type="radio" name="appraisal" id="starFour" />
												<label for="starFour" class="star">
													<img src="../images/ico/ico_star.gif" alt="별점" />
													<img src="../images/ico/ico_star.gif" alt="별점" />
													<img src="../images/ico/ico_star.gif" alt="별점" />
													<img src="../images/ico/ico_star.gif" alt="별점" />
												</label>
											</li>

											<li>
												<input type="radio" name="appraisal" id="starThree" />
												<label for="starThree" class="star">
													<img src="../images/ico/ico_star.gif" alt="별점" />
													<img src="../images/ico/ico_star.gif" alt="별점" />
													<img src="../images/ico/ico_star.gif" alt="별점" />
												</label>
											</li>

											<li>
												<input type="radio" name="appraisal" id="startwo" />
												<label for="startwo" class="star">
													<img src="../images/ico/ico_star.gif" alt="별점" />
													<img src="../images/ico/ico_star.gif" alt="별점" />
												</label>
											</li>

											<li>
												<input type="radio" name="appraisal" id="starOne" />
												<label for="starOne" class="star">
													<img src="../images/ico/ico_star.gif" alt="별점" />
												</label>
											</li>
										</ul>
									</td>
								</tr>
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
								<li><a href="#" class="sbtnMini">리뷰작성</a></li>
								<li><a href="#" class="nbtnbig">취소</a></li>								
							</ul>
						</div>
					</div>
					<!-- //Btn Area -->


					<!-- 작성된 체험리뷰 -->
					<div class="imgListType exprbd">
						<ul>

							<!-- List / Contnent -->
							<li>
								<div class="img"><img src="../images/img/sample_expr.jpg" width="155" height="160" alt="" /></div>
								<div class="txt">
									<div class="subject expr">
										<a href="javascript:;" class="reviewBtn">카페모리 홍차라떼, 드립커피백 체험단 리뷰 올립니다!!</a>
									</div>
									<div class="conf">
										소문만큼 맛있었습니다.소문만큼 맛있었습니다.소문만큼 맛있었습니다.소문만큼 맛있었습니다.소문만큼 맛있었습니다.소문만큼 맛있었습니다.소문만큼 맛있었습니다.소문만큼 맛있었습니다.....
									</div>
									<div class="data">
										<p>작성자 <span>dlsif***</span></p>
										<p>댓글 <span>2</span></p>
										<p>조회수 <span>325</span></p>
										<p>등록일 <span>2014-03-24</span></p>
										<p>평점 
											<span class="ty">
												<img src="../images/ico/ico_star.gif" alt="별점" />
												<img src="../images/ico/ico_star.gif" alt="별점" />
												<img src="../images/ico/ico_star.gif" alt="별점" />
												<img src="../images/ico/ico_star.gif" alt="별점" />
												<img src="../images/ico/ico_star.gif" alt="별점" />
											</span>
										</p>
									</div>
								</div>
								<div class="confhide">
									<div class="reviewContent">
										<div class="viewContents2">
											카페모리 홍차라떼, 드립커피백 후기<br/>
											처음 체험단에 신청해봤는데 당첨돼서 너무 좋았습니다.<br/>
											너무 맛있었어요. 향도 너무 좋고!!<br/>
											쟈뎅 드립커피백 추천드립니다!!
										</div>

										<!-- 답변 -->
										<div class="answer">
											<div class="inbox">
												<div class="aname">
													<p>담당자 <span>[2014-03-04&nbsp;&nbsp;15:01:59]</span></p>
												</div>

												<div class="atxt">
													쟈뎅 커피를 사랑해주셔서 감사합니다. 앞으로도 노력하는 쟈뎅이 되겠습니다. 감사합니다.
													쟈뎅 커피를 사랑해주셔서 감사합니다. 앞으로도 노력하는 쟈뎅이 되겠습니다. 감사합니다.
												</div>
											</div>
										</div>
										<!-- //답변 -->
									</div>
								</div>
							</li>
							<!-- //List / Contnent-->


							<li>
								<div class="img"><img src="../images/img/sample_expr.jpg" width="155" height="160" alt="" /></div>
								<div class="txt">
									<div class="subject expr">
										<a href="javascript:;" class="reviewBtn">카페모리 홍차라떼, 드립커피백 체험단 리뷰 올립니다!!</a>
									</div>
									<div class="conf">
										소문만큼 맛있었습니다.소문만큼 맛있었습니다.소문만큼 맛있었습니다.소문만큼 맛있었습니다.소문만큼 맛있었습니다.소문만큼 맛있었습니다.소문만큼 맛있었습니다.소문만큼 맛있었습니다.....
									</div>
									<div class="data">
										<p>작성자 <span>dlsif***</span></p>
										<p>댓글 <span>2</span></p>
										<p>조회수 <span>325</span></p>
										<p>등록일 <span>2014-03-24</span></p>
										<p>평점 
											<span class="ty">
												<img src="../images/ico/ico_star.gif" alt="별점" />
												<img src="../images/ico/ico_star.gif" alt="별점" />
												<img src="../images/ico/ico_star.gif" alt="별점" />
												<img src="../images/ico/ico_star.gif" alt="별점" />
												<img src="../images/ico/ico_star.gif" alt="별점" />
											</span>
										</p>
									</div>
								</div>
								<div class="confhide">
									<div class="reviewContent">
										<div class="viewContents2">
											카페모리 홍차라떼, 드립커피백 후기<br/>
											처음 체험단에 신청해봤는데 당첨돼서 너무 좋았습니다.<br/>
											너무 맛있었어요. 향도 너무 좋고!!<br/>
											쟈뎅 드립커페백 추천드립니다!!
										</div>

										<!-- 답변 -->
										<div class="answer">
											<div class="inbox">
												<div class="aname">
													<p>담당자 <span>[2014-03-04&nbsp;&nbsp;15:01:59]</span></p>
												</div>

												<div class="atxt">
													쟈뎅 커피를 사랑해주셔서 감사합니다. 앞으로도 노력하는 쟈뎅이 되겠습니다. 감사합니다.
													쟈뎅 커피를 사랑해주셔서 감사합니다. 앞으로도 노력하는 쟈뎅이 되겠습니다. 감사합니다.
												</div>
											</div>
										</div>
										<!-- //답변 -->
									</div>
								</div>
							</li>

							<li>
								<div class="img"><img src="../images/img/sample_expr.jpg" width="155" height="160" alt="" /></div>
								<div class="txt">
									<div class="subject expr">
										<a href="javascript:;" class="reviewBtn">카페모리 홍차라떼, 드립커피백 체험단 리뷰 올립니다!!</a>
									</div>
									<div class="conf">
										소문만큼 맛있었습니다.소문만큼 맛있었습니다.소문만큼 맛있었습니다.소문만큼 맛있었습니다.소문만큼 맛있었습니다.소문만큼 맛있었습니다.소문만큼 맛있었습니다.소문만큼 맛있었습니다.....
									</div>
									<div class="data">
										<p>작성자 <span>dlsif***</span></p>
										<p>댓글 <span>2</span></p>
										<p>조회수 <span>325</span></p>
										<p>등록일 <span>2014-03-24</span></p>
										<p>평점 
											<span class="ty">
												<img src="../images/ico/ico_star.gif" alt="별점" />
												<img src="../images/ico/ico_star.gif" alt="별점" />
												<img src="../images/ico/ico_star.gif" alt="별점" />
												<img src="../images/ico/ico_star.gif" alt="별점" />
												<img src="../images/ico/ico_star.gif" alt="별점" />
											</span>
										</p>
									</div>
								</div>
								<div class="confhide">
									<div class="reviewContent">
										<div class="viewContents2">
											카페모리 홍차라떼, 드립커피백 후기<br/>
											처음 체험단에 신청해봤는데 당첨돼서 너무 좋았습니다.<br/>
											너무 맛있었어요. 향도 너무 좋고!!<br/>
											쟈뎅 드립커페백 추천드립니다!!
										</div>

										<!-- 답변 -->
										<div class="answer">
											<div class="inbox">
												<div class="aname">
													<p>담당자 <span>[2014-03-04&nbsp;&nbsp;15:01:59]</span></p>
												</div>

												<div class="atxt">
													쟈뎅 커피를 사랑해주셔서 감사합니다. 앞으로도 노력하는 쟈뎅이 되겠습니다. 감사합니다.
													쟈뎅 커피를 사랑해주셔서 감사합니다. 앞으로도 노력하는 쟈뎅이 되겠습니다. 감사합니다.
												</div>
											</div>
										</div>
										<!-- //답변 -->
									</div>
								</div>
							</li>

							<li>
								<div class="img"><img src="../images/img/sample_expr.jpg" width="155" height="160" alt="" /></div>
								<div class="txt">
									<div class="subject expr">
										<a href="javascript:;" class="reviewBtn">카페모리 홍차라떼, 드립커피백 체험단 리뷰 올립니다!!</a>
									</div>
									<div class="conf">
										소문만큼 맛있었습니다.소문만큼 맛있었습니다.소문만큼 맛있었습니다.소문만큼 맛있었습니다.소문만큼 맛있었습니다.소문만큼 맛있었습니다.소문만큼 맛있었습니다.소문만큼 맛있었습니다.....
									</div>
									<div class="data">
										<p>작성자 <span>dlsif***</span></p>
										<p>댓글 <span>2</span></p>
										<p>조회수 <span>325</span></p>
										<p>등록일 <span>2014-03-24</span></p>
										<p>평점 
											<span class="ty">
												<img src="../images/ico/ico_star.gif" alt="별점" />
												<img src="../images/ico/ico_star.gif" alt="별점" />
												<img src="../images/ico/ico_star.gif" alt="별점" />
												<img src="../images/ico/ico_star.gif" alt="별점" />
												<img src="../images/ico/ico_star.gif" alt="별점" />
											</span>
										</p>
									</div>
								</div>
								<div class="confhide">
									<div class="reviewContent">
										<div class="viewContents2">
											카페모리 홍차라떼, 드립커피백 후기<br/>
											처음 체험단에 신청해봤는데 당첨돼서 너무 좋았습니다.<br/>
											너무 맛있었어요. 향도 너무 좋고!!<br/>
											쟈뎅 드립커페백 추천드립니다!!
										</div>

										<!-- 답변 -->
										<div class="answer">
											<div class="inbox">
												<div class="aname">
													<p>담당자 <span>[2014-03-04&nbsp;&nbsp;15:01:59]</span></p>
												</div>

												<div class="atxt">
													쟈뎅 커피를 사랑해주셔서 감사합니다. 앞으로도 노력하는 쟈뎅이 되겠습니다. 감사합니다.
													쟈뎅 커피를 사랑해주셔서 감사합니다. 앞으로도 노력하는 쟈뎅이 되겠습니다. 감사합니다.
												</div>
											</div>
										</div>
										<!-- //답변 -->
									</div>
								</div>
							</li>

						</ul>
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
					<!-- //작성된 체험리뷰 -->

					
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