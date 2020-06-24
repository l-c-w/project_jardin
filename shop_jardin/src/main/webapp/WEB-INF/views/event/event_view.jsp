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
<script type="text/javascript" src="../js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="../js/idangerous.swiper-2.1.min.js"></script>
<script type="text/javascript" src="../js/jquery.anchor.js"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="../js/html5.js"></script>
<script type="text/javascript" src="../js/respond.min.js"></script>
<![endif]-->
<script type="text/javascript">

var page = ${page};
var e_code = ${e_code};

// html 페이지 모두 호출 후에 jquery실행
$(function(){		
	getComment_list();
	getCommentCount();
});

function getCommentCount(){	//	총 n개의 댓글이 있습니다. 나타내는 스크립트
	
	$.ajax({
		type:'get',
		url:'./getCommentCount',
		dataType:'json',
		data : { "e_code":e_code },
		contentType:'application/json; charset=UTF-8;',
		success:function(data){	// data에 값이 담김
			alert('성공');
			
			var html='';
		
			console.log(data.ec_date);
			
			if(data >= 1){
				for(var i=0; i<data.length; i++){
					html += '<li class="in">';
					html += '<p class="txt">총 <span class="orange">' + data.ec_date + '</span> 개의 댓글이 달려있습니다.</p>';
					html += '</li>';
				}
			}else{
				html += '<li class="in">';
				html += '<p class="txt">총 0개의 댓글이 달려있습니다.</p></li></ul>';
				html += '</li>';
			}
			
			console.log(html);
			$('#cConut').html(html)
			
		},
		error:function(request, status, error){
			alert('카운팅 실패' + error);
		}	
		
	});
	
}
	
// 댓글 리스트 출력
function getComment_list(){	//	이 스크립트는 댓글 리스트만 불러옵니다. 페이징은 따로 처리
	
	$.ajax({
		type:'get',
		url:'./event_comment',
		dataType:'json',
		data : { "page":page, "e_code":e_code },
		contentType:'application/json; charset=UTF-8;',
		success:function(data){	// data에 값이 담김
			var html="";

			if(data.length>0){
				for(var i=0; i<data.length; i++){
					
					html += "<ul id='coSub' class='comment_modifyV'>";
					html += "<li class='name'>" + data[i].id + "<span> [" + data[i].ec_date + "]</span></li>";
					html += "<li class='txt'>test" + data[i].ec_content + "</li>";
					html += "</ul>";
				}
			}else{
				html += "<li class='name'></li>";
				html += "<li class='txt'>등록된 댓글이 없습니다.</li>";
			}
			
			$('#commentViewForm').html(html)			
		},
		error:function(request, status, error){
			alert('실패' + error);
		}			
	});

}
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
					<li class="last"><a href="prizewinner_list" id="leftNavi3">당첨자 발표</a></li>
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
								<fmt:formatDate var="e_start" value="${event_view.e_start }" pattern="yyyy/MM/dd" />
								<fmt:formatDate var="e_end" value="${event_view.e_end }" pattern="yyyy/MM/dd" />
								<p class="txt">이벤트 기간<span>${e_start } ~ ${e_end }</span></p>
							</div>
						</div>

						<div class="viewContents">
							<img src="../images/img/sample_event_view.jpg" alt="" />${event_view.e_content }
							<br><br>
							<a href="myCouponOk?userId${userId }&cou_code=${cdto.cou_code }">${cdto.cou_name } 쿠폰발급</a>
						</div>
						<p>page : ${page }, e_code : ${event_view.e_code }</p>
						<input type="hidden" name="page" id="page" value="${page }">
						<input type="hidden" name="e_code" id="e_code" value="${event_view.e_code }">
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
								<c:if test="${not empty edtoNext }">
									<tr>
										<th class="next">NEXT</th>
										<td><a href="event_view?e_code=${edtoNext.e_code }">${edtoNext.e_title }</a></td>
										<td>&nbsp;</td>
									</tr>
								</c:if>
								<c:if test="${empty edtoNext }">
									<tr>
										<th class="next">NEXT</th>
										<td>다음 글이 없습니다.</td>
										<td>&nbsp;</td>
									</tr>
								</c:if>

								<c:if test="${not empty edtoPrev }">
									<tr>
										<th class="pre">PREV</th>
										<td><a href="event_view?e_code=${edtoPrev.e_code }">${edtoPrev.e_title }</a></td>
										<td>&nbsp;</td>
									</tr>
								</c:if>
								<c:if test="${empty edtoPrev }">
									<tr>
										<th class="pre">PREV</th>
										<td>이전 글이 없습니다.</td>
										<td>&nbsp;</td>
									</tr>
								</c:if>
							</tbody>
						</table>
					</div>
					<!-- //이전다음글 -->


					<!-- 댓글 -->
					<!-- 댓글 등록 - 로그인 되어있지 않을 때-->
					<div class="replyWrite">
						<form action="" method="post" id="e_param">
							<input type="hidden" value="${event_view.e_code }" name="e_code">
							<input type="hidden" value="${page }" name="page">
							<ul id="cConut">
								<li class="in">
									<p class="txt">총 <span class="orange">${cCount }</span> 개의 댓글이 달려있습니다.</p>
									<p class="password">비밀번호&nbsp;&nbsp;
										<input type="password" class="replynum" />
									</p>
									<input type="text" class="replyType emptySe" placeholder=" 댓글을 작성하려면 로그인을 해주세요." readonly>
								</li>
								<li class="btn">
									<input type="button" class="replyBtn emptySe" value="등록">
								</li>
							</ul>
						</form>
						<p class="ntic">※ 비밀번호를 입력하시면 댓글이 비밀글로 등록 됩니다.</p>
					</div>
					
					
					
					
					<!-- 댓글 수정, 삭제 -->
					<div class="replyBox">
						<!-- 댓글 수정 -->
							<form action="event_commentOk" method="post" class="comm_modi">
								<input type="hidden" value="${sessionScope.session_mem }" name="requestUser">
								<input type="hidden" value="${e_com.id }" name="authUser">
								<input type="hidden" value="${event_view.e_code }" name="e_code">
								<input type="hidden" value="${e_com.ec_num }" name="ec_num">
								<input type="hidden" value="${page }" name="page">
								
<!-- 								if(data.length>0){ -->
			<!-- 					for(var i=0; i<data.length; i++){ -->
			<%-- 						html += '<tr><td colspan="2"><h5 id="">작성자 : ' + data[i].cName + '</h5></td></tr>'; --%>
			<!-- 						html += "<tr id='updateForm" + data[i].cId + "'><td>내용 : " + data[i].cContent + "</td>"; -->
			<!-- 						// 				 updateForm0, updateForm1, updateForm2...... -->
			<!-- 						html += "<td><a href='#' onclick='comment_updateForm(" + data[i].cId + ",\""  + data[i].cContent + "\")'>수정 </a>"; -->
			<!-- 						//								  comment_updateForm(1, '댓글을 입력') -->
			<!-- 						html += "<a href='#' onclick='comment_delete(" + data[i].cId + ")'> 삭제</a></td></tr>"; -->
			<!-- 					}					 -->
			<!-- 				} -->
			
								<ul id="${e_com.ec_num }" class="comment_modifyM" style="display: none;">
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
							<form action="event_eDeleteComment" method="post" class="comm_modi2" id="commentViewForm">
								<input type="hidden" value="${sessionScope.session_mem }" name="requestUser">
								<input type="hidden" value="${e_com.id }" name="authUser">
								<input type="hidden" value="${event_view.e_code }" name="e_code">
								<input type="hidden" value="${e_com.ec_num }" name="ec_num">
								<input type="hidden" value="${page }" name="page">
								<ul id="coSub" class="comment_modifyV">
									<fmt:formatDate var="ec_wdate1" value="${e_com.ec_wdate }" pattern="yyyy/MM/dd" />
									<fmt:formatDate var="ec_wdate2" value="${e_com.ec_wdate }" pattern="HH:mm:ss" />
									<li class="name">${e_com.id } <span>[${ec_wdate1 }&nbsp;&nbsp;${ec_wdate2 }]</span></li>
									<li class="txt">${e_com.ec_content }</li>
									<li class="btn">
										<c:if test="${sessionScope.session_mem eq e_com.id }">
											<a class="rebtn ${e_com.ec_num }" style="cursor: pointer;" id="modi_btn">수정</a>
											<a class="rebtn delComm" style="cursor: pointer;">삭제</a>
										</c:if>
									</li>
								</ul>
							</form>
						
						
						
						<!-- 비밀글, 없애기로 한 기능-->
<!-- 						<ul> -->
<!-- 							<li class="name">jjabcde <span>[2014-03-04&nbsp;&nbsp;15:01:59]</span></li> -->
<!-- 							<li class="txt"> -->
<!-- 								<a href="password.html" class="passwordBtn"><span class="orange">※ 비밀글입니다.</span></a> -->
<!-- 							</li> -->
<!-- 						</ul> -->
					</div>
					<!-- //댓글 -->
					
					<!-- 페이징이동 -->
					<div class="btnAreaList">
						<div class="allPageMoving1">
							<!-- 첫 페이지 이동 -->
							<a href="event_view?page=${startpage }&e_code=${event_view.e_code }" class="n">
								<img src="../images/btn/btn_pre2.gif" alt="처음으로"/>
							</a>
							<!-- 이전 페이지 이동버튼 -->
							<c:if test="${page <= 1 }">
								<img src="../images/btn/btn_pre1.gif" alt="앞페이지로"/>
							</c:if>
							<c:if test="${page > 1 }">
								<a href="event_view?page=${page - 1 }&e_code=${event_view.e_code }" class="pre">
									<img src="../images/btn/btn_pre1.gif" alt="앞페이지로"/>
								</a>
							</c:if>
							<!-- 순차적으로 페이지 출력 -->
					   	 	<c:forEach var="a" begin="${startpage }" end="${endpage }" step="1">
						   	 	<span class="page_num">
							   	 	<c:choose>
								   	 	<c:when test="${a == page }">
									   	 	<strong id="page_num2">${a}</strong>
								   	 	</c:when>	
								   	 	<c:when test="${a != page }">
									   	 	<a href="event_view?page=${a}&e_code=${event_view.e_code }">${a}</a>
								   	 	</c:when>	
							   	 	</c:choose>			   	 		   	 	
						   	 	</span>
					   	 	</c:forEach>
							<!-- 다음 페이지 이동버튼 -->
							<c:if test="${page >= maxpage }">
								<img src="../images/btn/btn_next1.gif" alt="뒤페이지로"/>
							</c:if>
							<c:if test="${page < maxpage }">
								<a href="event_view?page=${page + 1 }&e_code=${event_view.e_code }" class="next">
									<img src="../images/btn/btn_next1.gif" alt="뒤페이지로"/>
								</a>
							</c:if>
							<!-- 마지막 페이지 이동 -->
							<a href="event_view?page=${maxpage }&e_code=${event_view.e_code }" class="n">
								<img src="../images/btn/btn_next2.gif" alt="마지막페이지로"/>
							</a>
						</div>
					</div>
					<!-- //페이징이동 -->

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