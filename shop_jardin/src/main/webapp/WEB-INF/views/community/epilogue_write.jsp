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
				<li class="last">사용 후기(포토)</li>
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


			<script type="text/javascript">initSubmenu(2,0);</script>

			<!-- contents -->
			<div id="contents">
				<div id="mypage">
					<h2><strong>사용 후기</strong><span>쟈뎅 제품을 구매하신 회원님들의 소중한 후기입니다.</span></h2>
					
					<div class="productTab normaltab">
						<ul>
							<li><a href="#" class="on">포토 구매후기</a></li>
							<li class="last"><a href="#">상품평</a></li>
						</ul>						
					</div>

					<div class="checkDivTab">
						<table summary="분류, 구매여부, 작은이미지, 평가, 제목, 상세 내용 순으로 포토 구매후기를 작성 하실수 있습니다." class="checkTable" border="1" cellspacing="0">
							<caption>포토 구매후기 작성</caption>
							<colgroup>
							<col width="19%" class="tw30" />
							<col width="*" />
							</colgroup>
							<tbody>
								<tr>
									<th scope="row"><span>분류</span></th>
									<td>
										<ul class="pta">
											<li>
												<select>
													<option value="">카테고리</option>
												</select>
											</li>
											<li class="pt5">
												<select>
													<option value="">카테고리</option>
												</select>
											</li>
											<li class="pt5">
												<select>
													<option value="">카테고리</option>
												</select>
											</li>
										</ul>
									</td>
								</tr>
								<tr>
									<th scope="row"><span>구매여부</span></th>
									<td>
										<select>
											<option value="">구매했어요.</option>
										</select>
									</td>
								</tr>
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
									<th scope="row"><span>상세 내용</span></th>
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
								<li><a href="#" class="nbtnbig">취소</a></li>
								<li><a href="#" class="sbtnMini">확인</a></li>
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