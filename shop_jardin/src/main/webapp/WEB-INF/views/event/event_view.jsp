<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
<script type="text/javascript" src="../js/event_view.js"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="../js/html5.js"></script>
<script type="text/javascript" src="../js/respond.min.js"></script>
<![endif]-->
<script type="text/javascript">
$(document).ready(function() {
	
	
});
</script>
<style type="text/css">
	.show {display:block} /*보여주기*/
	.hide {display:none} /*숨기기*/
	.comment_modifyM {display:block} 
/* 	.comment_modifyV {} */
</style>
</head>
<body>

<!-- header 붙여넣기 -->
	<jsp:include page="../header.jsp"/>
	
	<!-- container -->
	<div id="container">

		<div id="location">
			<ol>
				<li><a href="../main/main">HOME</a></li>
				<li><a href="event_list">EVENT</a></li>
				<li class="last">진행중 이벤트</li>
			</ol>
		</div>
		
		<div id="outbox">		
			<div id="left">
				<div id="title2">EVENT<span>이벤트</span></div>
				<ul>	
					<li><a href="event_list" id="leftNavi1">진행중 이벤트</a></li>
					<li><a href="fin_event_list" id="leftNavi2">종료된 이벤트</a></li>
					<li class="last"><a href="prizewinner_list" id="leftNavi3">당첨자 발표</span></a></li>
				</ul>			
			</div><script type="text/javascript">initSubmenu(1,0);</script>


			<!-- contents -->
			<div id="contents">
				<div id="mypage">
					<h2><strong>진행중 이벤트</strong><span>쟈뎅샵의 특별한 혜택이 가득한 이벤트에 참여해 보세요.</span></h2>
					
					<div class="viewDivMt">
						<div class="viewHead">
							<div class="subject">
								<ul>
									<li>${event_view.e_title }</li>
								</ul>
							</div>
							<div class="day">
								<fmt:formatDate var="e_start" value="${event_view.e_start }" pattern="YYYY/MM/dd" />
								<fmt:formatDate var="e_end" value="${event_view.e_end }" pattern="YYYY/MM/dd" />
								<p class="txt">이벤트 기간<span>${e_start } ~ ${e_end }</span></p>
							</div>
						</div>

						<div class="viewContents">
							<img src="../images/img/sample_event_view.jpg" alt="" />${event_view.e_content }
						</div>
					</div>


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
									<td><a href="event_view?e_code=${event_view.e_code }">${event_view.e_title }</a></td>
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


					<!-- 댓글 -->
					<!-- 댓글 등록 -->
					<div class="replyWrite">
						<form action="event_view?e_code=${event_view.e_code }" method="post">
							<ul>
								<li class="in">
									<p class="txt">총 <span class="orange">${comment_listcount }</span> 개의 댓글이 달려있습니다.</p>
									<p class="password">비밀번호&nbsp;&nbsp;
										<input type="password" class="replynum" />
									</p>
									<textarea class="replyType"></textarea>
								</li>
								<li class="btn">
									<input type="submit" class="replyBtn" value="등록">
								</li>
							</ul>
						</form>
						<p class="ntic">※ 비밀번호를 입력하시면 댓글이 비밀글로 등록 됩니다.</p>
					</div>
					
					
					
					

					<!-- 댓글 수정, 삭제 -->
					<div class="replyBox">
						<!-- 댓글 수정 -->
						<c:forEach var="e_com" items="${event_comment }">
						<form action="event_commentOk">
							<ul id="coModi" class="comment_modifyM">
								<li class="name">${e_com.id } </li>
								<li class="txt">
									<input type="text" class="replyType" value="${e_com.ec_content }" name="ec_content">
									<input type="hidden" value="${e_com.ec_num }" name="ec_num">
									<input type="hidden" value="${e_code }" name="e_code">
								</li>
								<li class="btn">
									<input type="submit" value="등록" class="rebtn">
<!-- 									<a href="event_commentOk" class="rebtn" id="sub_btn">등록</a> -->
									<a href="#" class="rebtn">삭제</a>
								</li>
							</ul> 
						</form>
						
						<!-- 댓글 표시 -->
						<ul id="coSub" class="comment_modifyV">
							<fmt:formatDate var="ec_wdate1" value="${e_com.ec_wdate }" pattern="YYYY/MM/dd" />
							<fmt:formatDate var="ec_wdate2" value="${e_com.ec_wdate }" pattern="hh:mm:ss" />
							<li class="name">${e_com.id } <span>[${ec_wdate1 }&nbsp;&nbsp;${ec_wdate2 }]</span></li>
							<li class="txt">${e_com.ec_content }</li>
							<li class="btn">
								<a class="rebtn" style="cursor: pointer;" id="modi_btn">수정</a>
								<a href="#" class="rebtn">삭제</a>
							</li>
						</ul>
						</c:forEach>
						
						<!-- 비밀글, 없애기로 한 기능-->
<!-- 						<ul> -->
<!-- 							<li class="name">jjabcde <span>[2014-03-04&nbsp;&nbsp;15:01:59]</span></li> -->
<!-- 							<li class="txt"> -->
<!-- 								<a href="password.html" class="passwordBtn"><span class="orange">※ 비밀글입니다.</span></a> -->
<!-- 							</li> -->
<!-- 						</ul> -->
					</div>
					<!-- //댓글 -->

					<!-- 페이징이동1(searchFlag가 없을때) -->
						<div class="allPageMoving1" style="margin-left: 250px;">

						<a href="event_view?e_code=${e_code}&page=${startpage }" class="n"><img src="../images/btn/btn_pre2.gif" alt="처음으로"/></a>
						<c:if test="${page <= 1 }">
							<img src="../images/btn/btn_pre1.gif" alt="앞페이지로"/>
						</c:if>
						<c:if test="${page > 1 }">
							<a href="event_view?e_code=${e_code}&page=${page - 1 }" class="pre">
							<img src="../images/btn/btn_pre1.gif" alt="앞페이지로"/></a>
						</c:if>
						
						<c:forEach var="a" begin="${startpage }" end="${endpage }" step="1">
						<c:choose>
							<c:when test="${a == page }">
								<strong>${a }</strong>
							</c:when>
							<c:when test="${a != page }">
								<a href="event_view?e_code=${e_code}&page=${a }">${a }</a>
							</c:when>
						</c:choose>						
						</c:forEach>
						
						<c:if test="${page >= maxpage}">
						<img src="../images/btn/btn_next1.gif" alt="뒤페이지로"/>
						</c:if>
						<c:if test="${page < maxpage}">
						<a href="event_view?e_code=${e_code}&page=${page + 1 }" class="next">
						<img src="../images/btn/btn_next1.gif" alt="뒤페이지로"/></a>
						</c:if>						
						<a href="event_view?e_code=${e_code}&page=${maxpage }" class="n"><img src="../images/btn/btn_next2.gif" alt="마지막페이지로"/></a>

						</div>
						<!-- //페이징이동1(searchFlag가 없을때) -->


					<!-- Btn Area -->
					<div class="btnArea">
						<div class="bRight">
							<ul>
								<li><a href="event_list" class="sbtnMini mw">목록</a></li>
							</ul>
						</div>
					</div>
					<!-- //Btn Area -->
					
				</div>
			</div>
			<!-- //contents -->


<script type="text/javascript" src="../js/jquery.fancybox-1.3.4.pack.js"></script>
<link rel="stylesheet" type="text/css" href="../css/jquery.fancybox-1.3.4.css" />
<script type="text/javascript">
$(function(){
	
	var winWidth = $(window).width();
	if(winWidth > 767){
		var layerCheck = 540;
	}else{
		var layerCheck = 320;
	}

	$(".passwordBtn").fancybox({
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