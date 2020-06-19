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
				<li class="last">회원 탈퇴</li>
			</ol>
		</div>
		
		<div id="outbox">		
		<jsp:include page="mypage1.jsp"></jsp:include>
		
		<script type="text/javascript">initSubmenu(9,0);</script>


			<!-- contents -->
			<div id="contents">
				<div id="mypage">
					<h2><strong>회원 탈퇴</strong><span>회원 탈퇴 전 다음의 안내 사항을 꼭 숙지하시기 바랍니다.</span></h2>
					
					<div class="myInfo">
						<ul>
							<li class="info"><strong>${s_n}</strong> 님의 정보를 한눈에 확인하세요.</li>
							<li>보유 쿠폰<br/><span class="num">199</span> <span class="unit">장</span></li>
							<li class="point">내 포인트<br/><span class="num">100,000</span> <span class="unit">P</span></li>
							<li class="last">진행중인 주문<br/><span class="num">199</span> <span class="unit">건</span></li>
						</ul>
					</div>
					

					<div class="alertBox">
						<p class="chk">탈퇴 전 숙지사항</p>
						<ul>
							<li>그동안 쟈뎅샵을 이용해 주신 고객님께 진심으로 감사드립니다.</li>
							<li>회원 탈퇴 시 포인트와 쿠폰은 즉시 삭제 처리되어 환급되지 않으며, 재가입 하셔도 복구되지 않습니다.</li>
							<li>진행중인 거래(판매 또는 구매)내역이 존재하는 경우 회원 탈퇴가 불가능하며, 거래 종료 후 회원탈퇴 하실 수 있습니다.</li>
						</ul>
					</div>




					<h3 class="dep">회원정보 입력</h3>
					
					<form action="../mypage/withdrawal" id="withdrawal" name="withdrawal" method="post">
					
					<div class="checkDiv">
					
						<table summary="반품/교환 분류선택, 기간별, 단어검색별로 주문/배송 조회를 하실수 있습니다." class="checkTable" border="1" cellspacing="0">
						
							<caption>주문/배송 조회</caption>
							
							<colgroup>
							<col width="22%" class="tw30" />
							<col width="*" />
							</colgroup>
							
							<tbody>
							
								<tr>
									<th scope="row"><span>아이디</span></th>
									<td><input type="text" class="w186" id="w_id" name="w_id"/></td>
								</tr>
								
								<tr>
									<th scope="row"><span>비밀번호</span></th>
									<td><input type="password" class="w186" id="w_pw" name="w_pw" /></td>
								</tr>
								
								
								<!-- <tr>
									<th scope="row"><span>탈퇴사유</span></th>
									<td><input type="text" class="w186" id="w_con" name="w_con"/></td>
										<select>
											<option value="">선택해주세요.</option>
										</select>
								</tr> -->
								
								
							</tbody>
							
						</table>
						
					</div>
					
					</form>
					
					
						<!-- Btn Area -->
					<div class="btnArea">
					
						<div class="bCenter">
							<ul>																
								<li><a href="javascript:history.back()" class="nbtnbig">취소</a></li>
								<!-- <li><a href="#" onclick="document.getElementById('notice').submit();" class="sbtnMini">확인</a></li> -->
								<li><a href="#" id="w_click" class="sbtnMini">확인</a></li>
							</ul>
						</div>
						
					</div>
					<!-- //Btn Area -->
					
					
					
<script type="text/javascript">
	$(document).ready(function(e){
		$('#w_click').click(function(){
			
			
			//아이디, 비밀번호 입력확인
			if($('#w_id').val() == ''){
				alert("아이디를 입력해 주세요.");
				$('#w_id').focus();
				return;
			}
			
			else if($('#w_pw').val() == ''){
				alert("패스워드를 입력해 주세요.");
				$('#w_pw').focus();
				return;
			}
			
			
			$.ajax({
				url: "${pageContext.request.contextPath}/mypage/withdrawal_check",
				type: "POST",
				data: $('#withdrawal').serializeArray(),
				success: function(data){
					
					
					if(data == 0){
						alert("아이디 또는 패스워드가 틀렸습니다.");
						return;
					}
					
					
					else{
						           //탈퇴
						var result = confirm('정말 탈퇴 하시겠습니까?');
						if(result){
							$('#withdrawal').submit();
						}
					}
				},
				error: function(){
					alert("서버 에러.");
				}
			});
		});
	});
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