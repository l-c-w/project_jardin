<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
				<li><a href="event_list">EVENT</a></li>
				<li class="last">당첨자 발표</li>
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
				
			</div> --><script type="text/javascript">initSubmenu(3,0);</script>


			<!-- contents -->
			<div id="contents">
				<div id="mypage">
					<h2><strong>당첨자 발표</strong><span>쟈뎅샵의 특별한 혜택이 가득한 이벤트의 당첨자를 발표합니다. </span></h2>

					<div class="viewDivMt">
						<div class="viewHead">
							<div class="subject">
								<ul>
									<li>${winner_view.w_title }</li>
								</ul>
							</div>
							<div class="data">
								<ul>
									<fmt:formatDate var="w_wdate" value="${winner_view.w_wdate }" pattern="YYYY-MM-dd" />
									<li>등록일<span>${w_wdate }</span></li>
									<li>조회수<span>${winner_view.w_hit }</span></li>
								</ul>
							</div>
						</div>
						<div class="viewContents">${winner_view.w_content }</div>
					</div>


					<!-- 이전다음글 -->
					<div class="pnDiv web">
						<table summary="이전다음글을 선택하여 보실 수 있습니다." class="preNext" border="1" cellspacing="0">
							<caption>이전다음글</caption>
							<colgroup>
							<col width="100px" />
							<col width="*" />
							</colgroup>
							<tbody>
								<c:if test="${not empty ewdtoNext }">
									<tr>
										<th class="next">NEXT</th>
										<td><a href="prizewinner_view?w_code=${ewdtoNext.w_code }">${ewdtoNext.w_title }</a></td>
										<td>&nbsp;</td>
									</tr>
								</c:if>
								<c:if test="${empty ewdtoNext }">
									<tr>
										<th class="next">NEXT</th>
										<td>다음 글이 없습니다.</td>
										<td>&nbsp;</td>
									</tr>
								</c:if>

								<c:if test="${not empty ewdtoPrev }">
									<tr>
										<th class="pre">PREV</th>
										<td><a href="prizewinner_view?w_code=${ewdtoPrev.w_code }">${ewdtoPrev.w_title }</a></td>
										<td>&nbsp;</td>
									</tr>
								</c:if>
								<c:if test="${empty ewdtoPrev }">
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


					<!-- Btn Area -->
					<div class="btnArea btline">
						<div class="bRight">
							<ul>
								<li><a href="prizewinner_list" class="sbtnMini mw">목록</a></li>
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