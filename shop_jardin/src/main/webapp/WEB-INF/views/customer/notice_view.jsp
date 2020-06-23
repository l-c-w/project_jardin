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
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scaleable=no" /

>
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
				<li><a href="#">CUSTOMER</a></li>
				<li class="last">NOTICE</li>
			</ol>
		</div>
		
		<div id="outbox">
				
			<jsp:include page="custom1.jsp"/>
			
			
			<!-- <div id="left">
				<div id="title2">CUSTOMER<span>고객센터</span></div>
				<ul>	
					<li><a href="#" id="leftNavi1">NOTICE</a></li>
					<li><a href="#" id="leftNavi2">1:1문의</a></li>
					<li><a href="#" id="leftNavi3">FAQ</span></a></li>
					<li class="last"><a href="#" id="leftNavi4">이용안내</a></li>
				</ul>			
			</div> -->
			
			
			
			<script type="text/javascript">initSubmenu(1,0);</script>


			<!-- contents -->
			<div id="contents">
				<div id="customer">
				
					<h2><strong>NOTICE</strong><span>쟈뎅샵 소식을 전해드립니다.</span></h2>

					<div class="viewDivMt">
					
						<div class="viewHead">
						
							<div class="subject">
							
								<ul>
									<li>${ndto.n_title}</li>
								</ul>
							</div>
							
							<div class="day">
								<p class="txt">작성일<span><fmt:formatDate pattern="yyyy-MM-dd" value="${ndto.n_wdate}" /></span></p>
							</div>
						</div>

						<div class="viewContents">
							${ndto.n_content}<br/><br/>
						</div>
						
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
							
								<tr>
									<th class="pre">PREV</th>
									<td><a href="notice_view?n_num=${ndto_p.n_num}">${ndto_p.n_title}</a></td>
								</tr>

								<tr>
									<th class="next">NEXT</th>
									<td><a href="notice_view?n_num=${ndto_n.n_num}">${ndto_n.n_title}</a></td>
									
								</tr>
								
							</tbody>
							
						</table>
					</div>
					<!-- //이전다음글 -->



					<!-- Btn Area -->
					<div class="btnArea btline">
						<div class="bRight">
							<ul>
							    <li><a href="notice_update?n_num=${ndto.n_num}" class="nbtnbig mw">수정</a></li>
								<li><a href="javascript:n_delete()" class="nbtnbig mw">삭제</a></li>
								<li><a href="notice_list" class="sbtnMini mw">목록</a></li>
							</ul>
						</div>
					</div>
					<!-- //Btn Area -->
					
					
					
					<script type="text/javascript">
						
						function n_delete() {

							var result = confirm('데이터를 삭제 하시겠습니까?');
							
							var n_num = ${ndto.n_num};

							if (result == true) {

								alert("삭제하겠습니다");
								window.location.href = 'notice_delete?n_num=' + n_num;
								
								
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