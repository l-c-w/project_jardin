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
				<li><a href="#">CUSTOMER</a></li>
				<li class="last">1:1문의</li>
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
			
			
			<script type="text/javascript">initSubmenu(2,0);</script>


			<!-- contents -->
			<div id="contents">
			
				<div id="customer">
				
					<h2><strong>1:1문의</strong><span>쟈뎅에 궁금하신 사항을 남겨주시면 답변해드립니다.</span></h2>
					
					
					<div class="checkMt">
					
					<form action="../mypage/inquiry_ok" name="inquiry" id="inquiry" method="post" enctype="multipart/form-data">
					
						<table summary="분류, 제목, 상세내용, 첨부파일 순으로 궁금하신 점을 문의 하실수 있습니다." class="checkTable" border="1" cellspacing="0">
						
						
							<caption>1:1문의</caption>
							
							<colgroup>
							
							<col width="19%" class="tw30" />
							<col width="*" />
							</colgroup>
							
							<tbody>
							
								<tr>
								
									<th scope="row"><span>분류</span></th>
									
									<td>
										<select>
											<option value="">선택해주세요.</option>
										</select>
									</td>
									
								</tr>
								
								
								<tr>
									<th scope="row"><span>제목</span></th>
									
									<td>
										<input type="text" class="wlong" name="oo_title" />
									</td>
								</tr>
								
								
								<tr>
								
									<th scope="row"><span>상세 내용</span></th>
									
									<td>
										<textarea class="tta" name="oo_content"></textarea>
									</td>
									
								</tr>
								
								
								<tr>
								
									<th scope="row"><span>첨부파일</span></th>
									
									<td>
										<input type="file" class="fileType" name="oo_file"/>
									</td>
									
								</tr>
								
								
							</tbody>
							
						</table>
						
						
                  </form>
						
			</div>
					


					<!-- Btn Area -->
					<div class="btnArea">
						<div class="bCenter">
							<ul>																
								<li><a href="javascript:history.back()" class="nbtnbig">취소</a></li>
								<li><a href="#" onclick="document.getElementById('inquiry').submit();" class="sbtnMini">확인</a></li>
							</ul>
						</div>
					</div>
					<!-- //Btn Area -->
					
				</div>
			</div>
		</div>
	</div>
			<!-- //contents -->

<!-- footer 붙여넣기 -->
	<jsp:include page="../footer.jsp"/>

</body>
</html>