<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>   

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>     
    
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
				<li class="last">사용 후기</li>
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
							<li><a href="epilogue_list">포토 구매후기</a></li>
							<li class="last"><a href="#" class="on">상품평</a></li>
						</ul>		
										
					</div>
					
					<!-- 상품평 본문 -->

					<div class="viewDivTab">
						
						<div class="viewHead">
							
							<div class="subject">
								<ul>
									<li class="cate">[먹어봤어요]</li>
									<li>&nbsp;${c_view.cr_title}</li>
								</ul>
							</div>
							
							
							
							<div class="day">
								<p class="txt">제품명<span>쟈뎅, 테이크아웃 ‘카페모리’ </span></p>
							</div>
						
						
						
							<div class="data">
								<ul>
									<li>작성자<span>${c_view.id}</span></li>
									<li class="tnone">등록일<span><fmt:formatDate pattern="yyyy-MM-dd" value="${c_view.cr_wdate}"/></span></li>
									<li class="tnone">조회수<span>${c_view.cr_hit}</span></li>
								
								
									<li class="last">평점
										
										<span>
										
										<c:forEach begin="1" end="${c_view.cr_score}" step="1">
										
										<img src="../images/ico/ico_star.gif" alt="별점" />
										
										</c:forEach>
										
										</span>
										
									</li>
									
									
								</ul>
							</div>
						</div>
						
						

						<div class="viewContents">
							${c_view.cr_content}
						</div>
					</div>


					<!-- 답변 -->
					<div class="answer">
						<div class="inbox">
							<div class="aname">
								<p>담당자 <span>[2014-03-04&nbsp;&nbsp;15:01:59]</span></p>
							</div>

							<div class="atxt">
								쟈뎅 커피를 사랑해주셔서 감사합니다. 앞으로도 노력하는 쟈뎅이 되겠습니다. 감사합니다.
							</div>
						</div>
					</div>
					<!-- //답변 -->


					<!-- 이전다음글 -->
					<div class="pnDiv web">
						<table summary="이전다음글을 선택하여 보실 수 있습니다." class="preNext" border="1" cellspacing="0">
							<caption>이전다음글</caption>
							<colgroup>
							<col width="100px" />
							<col width="*" />
							<col width="100px" />
							</colgroup>
							<tbody>
								<tr>
									<th class="pre">PREV</th>
									<td><a href="#">상품 재입고는 언제 되나요?</a></td>
									<td>&nbsp;</td>
								</tr>

								<tr>
									<th class="next">NEXT</th>
									<td>다음 글이 없습니다.</td>
									<td>&nbsp;</td>
								</tr>
							</tbody>
						</table>
					</div>
					<!-- //이전다음글 -->






					<!-- Btn Area -->
					<div class="btnArea">
						<div class="bRight">
							<ul>
								<li><a href="#" class="nbtnbig mw">수정</a></li>
								<li><a href="#" class="nbtnbig mw">삭제</a></li>
								<li><a href="comment_list" class="sbtnMini mw">목록</a></li>
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