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
				<li class="last">종료된 이벤트</li>
			</ol>
		</div>
		
		<div id="outbox">		
			<jsp:include page="event2.jsp"/>
			
			<!-- 
			<div id="left">
				<div id="title2">EVENT<span>이벤트</span></div>
				
				<ul>	
					<li><a href="event_list" id="leftNavi1">진행중 이벤트</a></li>
					<li><a href="#" id="leftNavi2">종료된 이벤트</a></li>
					<li class="last"><a href="#" id="leftNavi3">당첨자 발표</a></li>
				</ul>			
				
			</div> --><script type="text/javascript">initSubmenu(2,0);</script>


			<!-- contents -->
			<div id="contents">
				<div id="mypage">
					<h2><strong>종료된 이벤트</strong><span>쟈뎅샵의 특별한 혜택이 가득했던 이벤트 목록을 확인하실 수 있습니다.</span></h2>
					
					<div class="viewDivMt">
						<div class="viewHead">
							<div class="subject">
								<ul>
									<li><span class="finishbtn">종료</span>&nbsp;${event_view.e_title }</li>
								</ul>
							</div>
							<div class="day">
								<fmt:formatDate var="e_start" value="${event_view.e_start }" pattern="yyyy/MM/dd" />
								<fmt:formatDate var="e_end" value="${event_view.e_end }" pattern="yyyy/MM/dd" />
								<p class="txt">이벤트 기간<span>${e_start } ~ ${e_end }</span></p>
							</div>
						</div>

						<div class="viewContents">
							<img src="../images/img/sample_event_view.jpg" alt="" />${event_view.e_content}
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


					<!-- 댓글 -->
					<!-- 댓글 등록 - 로그인 되어있을 때-->
					<c:if test="${not empty sessionScope.session_mem }">
					<div class="replyWrite">
						<form action="fin_event_eWite" method="post">
							<input type="hidden" value="${sessionScope.session_mem }" name="requestUser">
							<input type="hidden" value="${event_view.e_code }" name="e_code">
							<ul>
								<li class="in">
									<p class="txt">총 <span class="orange">${comment_listcount }</span> 개의 댓글이 달려있습니다.</p>
									<p class="password">비밀번호&nbsp;&nbsp;
										<input type="password" class="replynum" name="pw" />
									</p>
									<input type="text" class="replyType" name="comment_content" required>
								</li>
								<li class="btn">
									<input type="submit" class="replyBtn" value="등록">
								</li>
							</ul>
						</form>
						<p class="ntic">※ 비밀번호를 입력하시면 댓글이 비밀글로 등록 됩니다.</p>
					</div>
					</c:if>
					<!-- 댓글 등록 - 로그인 되어있지 않을 때-->
					<c:if test="${empty sessionScope.session_mem }">
					<div class="replyWrite">
						<form action="" method="post">
							<ul>
								<li class="in">
									<p class="txt">총 <span class="orange">${comment_listcount }</span> 개의 댓글이 달려있습니다.</p>
									<p class="password">비밀번호&nbsp;&nbsp;
										<input type="password" class="replynum" />
									</p>
									<input type="text" class="replyType emptySe" placeholder=" 댓글을 작성하려면 로그인을 해주세요." readonly>
								</li>
								<li class="btn">
									<input type="button" class="replyBtn" value="등록">
								</li>
							</ul>
						</form>
						<p class="ntic">※ 비밀번호를 입력하시면 댓글이 비밀글로 등록 됩니다.</p>
					</div>
					</c:if>
					
					
					
					
					<!-- 댓글 수정, 삭제 -->
					<div class="replyBox">
						<!-- 댓글 수정 -->
						<c:forEach var="e_com" items="${event_comment }">
							<form action="fin_event_commentOk" method="post" class="comm_modi">
								<input type="hidden" value="${sessionScope.session_mem }" name="requestUser">
								<input type="hidden" value="${e_com.id }" name="authUser">
								<input type="hidden" value="${event_view.e_code }" name="e_code">
								<input type="hidden" value="${e_com.ec_num }" name="ec_num">														
								<ul id="coModi" class="comment_modifyM" style="display: none;">
									<li class="name">${e_com.id }</li>
									<li class="txt">
										<input type="text" name="content" value="${e_com.ec_content }" class="replyType">
									</li>
									<li class="btn">
										<a class="rebtn s_modi" id="sub_btn" style="cursor: pointer;">수정</a>
										<a class="rebtn reset_re" style="cursor: pointer;">취소</a>
									</li>
								</ul>
							</form>
						
							<!-- 댓글 표시 -->
							<form action="fin_event_eDeleteComment" method="post" class="comm_modi2">
								<input type="hidden" value="${sessionScope.session_mem }" name="requestUser">
								<input type="hidden" value="${e_com.id }" name="authUser">
								<input type="hidden" value="${event_view.e_code }" name="e_code">
								<input type="hidden" value="${e_com.ec_num }" name="ec_num">
								<ul id="coSub" class="comment_modifyV">
									<fmt:formatDate var="ec_wdate1" value="${e_com.ec_wdate }" pattern="yyyy/MM/dd" />
									<fmt:formatDate var="ec_wdate2" value="${e_com.ec_wdate }" pattern="HH:mm:ss" />
									<li class="name">${e_com.id } <span>[${ec_wdate1 }&nbsp;&nbsp;${ec_wdate2 }]</span></li>
									<li class="txt">${e_com.ec_content }</li>
									<li class="btn">
										<c:if test="${sessionScope.session_mem eq e_com.id }">
											<a class="rebtn modi" style="cursor: pointer;" id="modi_btn">수정</a>
											<a class="rebtn delComm" style="cursor: pointer;">삭제</a>
										</c:if>
									</li>
								</ul>
							</form>
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


					<!-- Btn Area -->
					<div class="btnArea">
						<div class="bRight">
							<ul>
								<li><a href="fin_event_list" class="sbtnMini mw">목록</a></li>
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