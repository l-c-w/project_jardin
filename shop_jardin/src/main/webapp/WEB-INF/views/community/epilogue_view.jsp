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
							<li><a href="epilogue_list" class="on">포토 구매후기</a></li>
							<li class="last"><a href="comment_list">상품평</a></li>
						</ul>						
					</div>



					<div class="viewDivTab">
					
						<div class="viewHead">
						
							<div class="subject">
							
								<ul>
									<li class="cate">[먹어봤어요]</li>
									<li>&nbsp;${p_view.pr_title}</li>
								</ul>
								
							</div>
							
							
							<div class="day">
								<p class="txt">제품명<span>쟈뎅, 테이크아웃 ‘카페모리’ </span></p>
							</div>
							
							
							
							<div class="data">
							
								<ul>
									
									<li>작성자<span>${p_view.id}</span></li>
									
									<li class="tnone">등록일<span><fmt:formatDate pattern="yyyy-MM-dd" value="${p_view.pr_wdate}"/></span></li>
									
									<li class="tnone">조회수<span>${p_view.pr_hit}</span></li>
									
									
									<li class="last">평점
										
										 <c:forEach begin="1" end="${p_view.pr_score}" step="1">
										     <img src="../images/ico/ico_star.gif" alt="별점">
										 </c:forEach>
									     
									</li>
									
								</ul>
								
							</div>
							
						</div>
						
						
						<div class="img" style="padding: 10px;">
						   <%--   <img src="<c:url value="/img/${p_view.pr_file}"/>" width="300" height="300"/> --%>
						     <img src="/ex/img/${p_view.pr_file}" width="300" height="300"/>
						</div>

						<div class="viewContents" style="padding: 10px;">
							${p_view.pr_content}
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
									<td><a href="epilogue_view?pr_num=${pdto_n.pr_num}">${pdto_n.pr_title}</a></td>
									<td>&nbsp;</td>
								</tr>


								<tr>
									<th class="next">NEXT</th>
									<td><a href="epilogue_view?pr_num=${pdto_p.pr_num}">${pdto_p.pr_title}</a></td>
									<td>&nbsp;</td>
								</tr>
								
								
							</tbody>
							
						</table>
						
						
					</div>
					<!-- //이전다음글 -->


					<!-- Btn Area -->
					<div class="btnArea">
					
					<c:if test="${s_n == p_view.id }">
					
						<div class="bRight">
						
							<ul>
								<li><a href="#" class="nbtnbig mw">수정</a></li>
								<li><a href="javascript:p_delete()" class="nbtnbig mw">삭제</a></li>
								<li><a href="epilogue_list" class="sbtnMini mw">목록</a></li>
							</ul>
							
						</div>
						
					</c:if>
					
					
					<c:if test="${s_n == null or s_n != p_view.id }">
					
						<div class="bRight">
						
							<ul>
								<li><a href="epilogue_list" class="sbtnMini mw">목록</a></li>
							</ul>
							
						</div>
						
					</c:if>
					
					
					
						<script type="text/javascript">
						
						function p_delete() {

							var result = confirm('데이터를 삭제 하시겠습니까?');
							
							var pr_num = ${p_view.pr_num};

							if (result == true) {

								alert("삭제하겠습니다");
								window.location.href = 'epilogue_delete?pr_num=' + pr_num;
								
							} else {
								alert("삭제를 취소합니다");
							}

						}
					
						
						</script>
					
					
					
					
						
						
						
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