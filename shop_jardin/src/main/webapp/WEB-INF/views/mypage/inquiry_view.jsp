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
				<li><a href="#">MY PAGE</a></li>
				<li class="last">1:1문의</li>
			</ol>
		</div>
		
		<div id="outbox">		
		
		<jsp:include page="mypage1.jsp"></jsp:include>
			 
			 <script type="text/javascript">initSubmenu(7,0);</script>



			<!-- contents -->
			<div id="contents">
			
				<div id="mypage">
				
					<h2><strong>1:1문의</strong><span>쟈뎅에 궁금하신 사항을 남겨주시면 답변해드립니다.</span></h2>
					
					<div class="myInfo">
					
						<ul>
							<li class="info"><strong>가나다</strong> 님의 정보를 한눈에 확인하세요.</li>
							<li>보유 쿠폰<br/><span class="num">199</span> <span class="unit">장</span></li>
							<li class="point">내 포인트<br/><span class="num">100,000</span> <span class="unit">P</span></li>
							<li class="last">진행중인 주문<br/><span class="num">199</span> <span class="unit">건</span></li>
						</ul>
						
					</div>

					<div class="viewDiv">
					
						<div class="viewHead">
						
							<div class="subject">
							
							
							
								<ul>
									<li class="cate">${oo_view.oo_type}</li>
									<li>${oo_view.oo_title}</li>
								</ul>
								
								
							</div>
							
							
							<div class="day">
								<p class="txt">등록일<span>
                                <fmt:formatDate pattern="yyyy-MM-dd" value="${oo_view.oo_wdate}"/></span></p>
								
								
								<c:if test="${oo_view.oo_answer == null }">
								
								<p class="btn"><span class="nbtnMini">답변대기</span></p>
								
								</c:if>
								
								
						        <c:if test="${oo_view.oo_answer != null }">
								
								<p class="btn"><span class="obtnMini">답변완료</span></p>
								
								</c:if>
								
								
							</div>
							
							
						</div>

						<div class="viewContents">
							${oo_view.oo_content}
						</div>
						
						
					</div>



					<!-- 답변 -->
					
					<c:if test="${oo_view.oo_answer != null }">
								
					<div class="answer">
					
						<div class="inbox">
						
							<div class="aname">
								
								<p>담당자 <span>  <fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${oo_view.oo_udate}"/></span>
								
								<!-- [2014-03-04&nbsp;&nbsp;15:01:59]</span> -->
								
								</p>
								
							</div>

							<div class="atxt">
								${oo_view.oo_answer}
							</div>
							
						</div>
						
					</div>
					
                    </c:if>
                    
                    <!-- //답변 -->
                    
                    
                    
                    

                    <!-- 

					이전다음글
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
									
									<td>
									
										<div class="parea">
											<div class="nbtnMini">답변대기</div>
											
										</div>
										
									</td>
								</tr>
								

								<tr>
									<th class="next">NEXT</th>
									<td>다음 글이 없습니다.</td>
									<td>&nbsp;</td>
								</tr>
								
							</tbody>
							
						</table>
						
					</div>
					//이전다음글

                    -->
                    

					<!-- Btn Area -->
					<div class="btnArea">
						
						<div class="bRight">
						
							<ul>
								<li><a href="inquiry_update?oo_num=${oo_view.oo_num}" class="nbtnbig mw">수정</a></li>
								<li><a href="javascript:oo_delete()" class="nbtnbig mw">삭제</a></li>
								<li><a href="../mypage/inquiry_list" class="sbtnMini mw">목록</a></li>
							</ul>
							
						</div>
						
						
					</div>
					<!-- //Btn Area -->
					
					
					
					<script type="text/javascript">
						
						function oo_delete() {

							var result = confirm('데이터를 삭제 하시겠습니까?');
							
							var oo_num = ${oo_view.oo_num};

							if (result == true) {

								alert("삭제하겠습니다");
								window.location.href = 'inquiry_delete?oo_num=' + oo_num;
								
								
							} else {
								
								alert("삭제를 취소합니다");
							}
							

						}
						
						</script>
					
					
					
					
					
					
					
					
					
					
					
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