<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    
    
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


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>


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
				<li class="last">회원정보 수정</li>
			</ol>
		</div>
		
		<div id="outbox">		
		
		<jsp:include page="mypage1.jsp"></jsp:include>
		
			
			<!-- <div id="left">
				<div id="title">MY PAGE<span>마이페이지</span></div>
				<ul>	
					<li><a href="#" id="leftNavi1">주문/배송 조회</a></li>
					<li><a href="#" id="leftNavi2">반품/배송 현황</a></li>
					<li><a href="#" id="leftNavi3">장바구니</a></li>
					<li><a href="#" id="leftNavi4">위시리스트</a></li>
					<li><a href="#" id="leftNavi5">나의 쿠폰</a></li>
					<li><a href="#" id="leftNavi6">나의 포인트</a></li>
					<li><a href="#" id="leftNavi7">1:1문의</a></li>
					<li><a href="#" id="leftNavi8">회원정보 수정</a></li>
					<li class="last"><a href="#" id="leftNavi9">회원 탈퇴</a></li>
				</ul>			
			</div>
			 -->
			 
			 
			 <script type="text/javascript">initSubmenu(8,0);</script>


			<!-- contents -->
			<div id="contents">
			
				<div id="mypage">
				
					<h2><strong>회원정보 수정</strong><span>회원님의 개인 정보를 수정하실 수 있습니다.</span></h2>
					
					
					<div class="myInfo">
						<ul>
							<li class="info"><strong>${mdto.name}</strong> 님의 정보를 한눈에 확인하세요.</li>
							<li>보유 쿠폰<br/><span class="num">199</span> <span class="unit">장</span></li>
							<li class="point">내 포인트<br/><span class="num">100,000</span> <span class="unit">P</span></li>
							<li class="last">진행중인 주문<br/><span class="num">199</span> <span class="unit">건</span></li>
						</ul>
					</div>
						

					<div class="attention">
						<ul>
							<li>* 표시된 항목은 필수 항목이므로 반드시 입력하셔야 합니다.</li>
						</ul>
					</div>


			 <form action="change_ok" id="change_ok" name="change" method="post">
			 

					<div class="memberbd">
					
					
						<table summary="이름, 아이디, 비밀번호, 비밀번호 확인, 이메일, 이메일수신여부, 주소, 휴대폰, 유선전화, 생년월일 순으로 회원가입 정보를 수정 할수 있습니다." class="memberWrite" border="1" cellspacing="0">
							
							<caption>회원정보 수정</caption>
							
							<colgroup>
							<col width="22%" class="tw30" />
							<col width="*" />
							</colgroup>
							
							<tbody>
							
								<tr>
									<th scope="row"><span>이름 *</span></th>
									<td><input type="text" name="name" value="${mdto.name}" readonly></td>
								</tr>
								
								
								<tr>
									<th scope="row"><span>추천인코드 *</span></th>
									<td><input type="text" name="m_code" value="${mdto.m_code}" readonly></td>
								</tr>
								
								
								<tr>
									<th scope="row"><span>아이디 *</span></th>
									<td>
										<ul class="pta">
											<li class="r10"><input type="text" class="w134" name="id" value="${mdto.id}" readonly /></li>
										</ul>
									</td>
								</tr>


									<tr>
									<th scope="row"><span>비밀번호 *</span></th>
									<td>
										<ul class="pta">
											<li class="r10">
											<input type="password" class="w134" name="pw" id="pw1"/></li>
											<li><span class="mvalign">※ 영문 / 숫자 혼용으로 4~20자 까지 가능.</span></li>
										</ul>
									</td>
								</tr>
								
								
								<tr>
									<th scope="row"><span>비밀번호 확인 *</span></th>
									
									<td>
										<ul class="pta">
										
											<li class="r10"><input type="password" class="w134" id="pw2"/></li>
											
											<li>
												<span class="black" style="display: none;">* 비밀번호가 일치합니다.</span>
												<span class="orange" style="display: none;">* 비밀번호가 일치하지 않습니다.</span>
											</li>
											
										</ul>
									</td>
									
								</tr>
								
					
<script type="text/javascript">
  
    $('.w134').focusout(function() {
    	
        var pwd1 = $("#pw1").val();
        var pwd2 = $("#pw2").val();
 
        if ( pwd1 != '' && pwd2 == '' ) {
        	 $(".black").css('display', 'none');
             $(".orange").css('display', 'none');
            
        } else if (pwd1 != "" || pwd2 != "") {
        	
            if (pwd1 == pwd2) {
                $(".black").css('display', 'inline-block');
                $(".orange").css('display', 'none');
            } 
            
            else {
                $(".black").css('display', 'none');
                $(".orange").css('display', 'inline-block');
            }
        }
    });
    
   </script>
								
								
								<tr>
								
									<th scope="row"><span>이메일</span></th>
									
									<td>
										<ul class="pta">
											
											<li><input type="text" class="w134" name="email1" value="${mail1 }"/></li>
											
											<li><span class="valign">&nbsp;@&nbsp;</span></li>
											
											<li class="r10"><input type="text" class="w134" value="${mail2}" name="email3"/></li>
											
											<li>
											
												<select id="emailList" name="email2" onchange="mailcheck()">
												
													<option value="#" selected="selected">직접입력</option>
													<option value="naver.com">naver.com</option>
													<option value="daum.net">daum.net</option>
													<option value="hanmail.net">hanmail.net</option>
													<option value="nate.com">nate.com</option>    
													<option value="yahoo.co.kr">yahoo.co.kr</option>    
													<option value="paran.com">paran.com</option>    
													<option value="empal.com">empal.com</option>    
													<option value="hotmail.com">hotmail.com</option>    
													<option value="korea.com">korea.com</option>    
													<option value="lycos.co.kr">lycos.co.kr</option>    
													<option value="dreamwiz.com">dreamwiz.com</option>    
													<option value="hanafos.com">hanafos.com</option>    
													<option value="chol.com">chol.com</option>    
													<option value="gmail.com">gmail.com</option>    
													<option value="empas.com">empas.com</option>
													
												</select>&nbsp;&nbsp;&nbsp;
												
											</li>


												<script type="text/javascript">
												
													function mailcheck() {
														
														i = document.change.email2.selectedIndex // 선택항목의 인덱스 번호
														var mail = document.change.email2.options[i].value // 선택항목 value
														document.change.email3.value = mail
														
													}
													
												</script>


											</ul>
									</td>
									
								</tr>
								
								
								
								<tr>
									<th scope="row"><span>이메일 수신여부 *</span></th>
									<td>
										<p>쟈뎅에서 진행되는 이벤트와 쇼핑에 대한 정보를 이메일로 받아보시겠습니까?</
										p>
										
										<ul class="question">
										
										
										
										<c:if test="${mdto.email_agree == 'email_yes'}">
										
											<li>
												<input type="radio" name="email_agree" value="email_yes" id="receive_yes" class="radio_t" checked="checked"/><label for="receive_yes">예</label>
											</li>
											<li>
												<input type="radio" name="email_agree" value="email_no" id="receive_no" class="radio_t"/><label for="receive_no">아니오</label>
											</li>
											
										
										</c:if>
										
										
										<c:if test="${mdto.email_agree == 'email_no'}">
										
											<li>
												<input type="radio" name="email_agree" value="email_yes" id="receive_yes" class="radio_t" /><label for="receive_yes">예</label>
											</li>
											<li>
												<input type="radio" name="email_agree" value="email_no" id="receive_no" class="radio_t" checked="checked"/><label for="receive_no">아니오</label>
											</li>
										
										</c:if>
											
											
										</ul>
										
										
										
										<p class="gray">* 거래관련 정보는 고객님의 거래안전을 위하여 이메일 수신거부와 관계없이 발송됩니다.</p>
									</td>
								</tr>
								

								
								
								<tr>
									<th scope="row"><span>주소 *</span></th>
									<td>
										<ul class="pta">
										
											<li><input type="text" class="w134" name="post" id="post" value="${mdto.post}">&nbsp;</li>

												<li><input type="button" onclick="openDaumZipAddress()"
													value="우편번호 찾기" class="addressBtn"
													style="width: 100px; text-align: center; border: 0; font-weight: 600">

													<!-- <a href="" onclick="openDaumZipAddress()" class="addressBtn"> -->

													<!-- <span>우편번호 찾기</span> --> <!-- </a> --></li>

												<li class="pt5"><input type="text" class="addressType" name="address1" id="address1" value="${mdto.address1}"></li>
											
											<li class="pt5"><input type="text" class="addressType" name="address2" id="address2" value="${mdto.address2}"></li>
											
											<li class="cb">
												<span class="mvalign">※ 상품 배송 시 받으실 주소입니다. 주소를 정확히 적어 주세요.</span>
											</li>
											
										</ul>
									</td>
								</tr>
								
								
								
								<!-- 주소검색은 그냥 daum api 사용 -->

									<script type="text/javascript">
									
										function openDaumZipAddress() {

											new daum.Postcode({
												
												oncomplete : function(data) {

													jQuery("#post").val(data.zonecode);
													jQuery("#address1").val(data.address);
													jQuery("#address2").focus;
													
												}
											
											}).open();

										}
										
									</script>
									

                                   <!-- 

									<script type="text/javascript">
										function addcheck() {
											
											window.open("address_search", "idc", "width=700, height=450");
										}
									</script>
								
								 -->
								
								
								<tr>
									<th scope="row"><span>휴대폰 *</span></th>
									<td>
									
										<ul class="pta">
										
										
											<li>
												<select name="phone1">
													<option value="010" selected="selected">${phone1}</option>
													<option value="011">011</option>
													<option value="016">016</option>
													<option value="017">017</option>
													<option value="018">018</option>    
													<option value="019">019</option>    
												</select>
											</li>
											
											
											<li>&nbsp;<span class="valign">-</span>&nbsp;</li>
										
											<li><input type="text" class="w74" maxlength="4" name="phone2" value="${mdto.phone2}"/> <span class="valign">-</span>&nbsp;</li>
											
											<li class="r10"><input type="text" class="w74" maxlength="4" name="phone3" value="${mdto.phone3}"/></li>
											
											<li class="cb pt5"><span class="mvalign">※ SMS 서비스를 받아보시겠습니까?</span></li>
											
											
											
											<li class="pt5">
											
											
												<ul class="baseQues">
												
													<li>
														<input type="radio" name="sms_agree" value="sms_yes" id="sms_yes" class="radio_t" checked="checked"/><label for="sms_yes">예</label>
													</li>
													
													<li>
														<input type="radio" name="sms_agree" value="sms_no" id="sms_no" class="radio_t"/><label for="sms_no">아니오</label>
													</li>
													
												</ul>
											</li>
											
											
											
										</ul>
									</td>
								</tr>
								
								
								
								<tr>
									<th scope="row"><span>생년월일</span></th>
									
									<td>
										<ul class="pta">
										
											<li>
												<select name="birth1">
												
													<option value="${year}" selected="selected">${year}</option>
												
												</select>
												
											</li>
											
											<li>&nbsp;<span class="valign">년</span>&nbsp;&nbsp;&nbsp;</li>
											
											<li>
												<select name="birth2">
													<option value="${month}" selected="selected">${month}</option>
													
													
													
												</select>
											</li>
										
										
											<li>&nbsp;<span class="valign">월</span>&nbsp;&nbsp;&nbsp;</li>
											
											
											<li>
											
												<select name="birth3">
												
													<option value="${day}" selected="selected">${day}</option>
													
													
													
												</select>
												
											</li>
											
											
											
											<li class="r20">&nbsp;<span class="valign">일</span></li>
											
											
											
											
											
											
											
											<li class="pt5">
											
												<ul class="baseQues">
												
												
												<c:if test="${mdto.sol_lun == 'solar'}">
												
												    <li>
														<input type="radio" name="sol_lun" value="solar" id="solar" class="radio_t" checked="checked"/><label for="solar">양력</label>
													</li>
													
													<li>
														<input type="radio" name="sol_lun" value="lunar" id="lunar" class="radio_t"/><label for="lunar">음력</label>
													</li>
												
												</c:if>
												
												
												
												<c:if test="${mdto.sol_lun == 'lunar'}">
												
												<li>
														<input type="radio" name="sol_lun" value="solar" id="solar" class="radio_t" /><label for="solar">양력</label>
													</li>
													
													<li>
														<input type="radio" name="sol_lun" value="lunar" id="lunar" checked="checked" class="radio_t"/><label for="lunar">음력</label>
													</li>
												
												</c:if>
												
												
													
													
												</ul>
												
											</li>
											
											
										</ul>
									</td>
								</tr>
								
								
								
								
								
								
								<tr>
									<th scope="row"><span>커피취향</span></th>
									
									
									<td>
									
										<ul class="pta">
										
										
											<li>
											
											
												<ul class="baseQues">


								 	    <c:if test="${mdto.coffee_favor == 'americano'}">
														
                                                <li>
											       <input type="radio" name="coffee_favor" value="americano" id="partner" class="radio_t" checked="checked"><label for="partner">아메리카노</label>
												 </li>
													
													
													
													<li>
													<input type="radio" name="coffee_favor" value="latte" id="partner" class="radio_t"><label for="partner">라떼</label>
													</li>

								         </c:if>
														
														
																											
							        	<c:if test="${mdto.coffee_favor == 'latte'}">
															
										<li>
										 <input type="radio" name="coffee_favor" value="americano" id="partner" class="radio_t"><label for="partner">아메리카노</label>
										</li>
													
													
										<li>
										<input type="radio" name="coffee_favor" value="latte" id="partner" class="radio_t" checked="checked"><label for="partner">라떼</label>
										</li>

								        </c:if>
								
														

								    </ul>
												
												
								</li>
											
											
										</ul>
										
									</td>
									
								</tr>
								
								
								
								<tr>
									<th scope="row"><span>자기소개 *</span></th>
									<td><textarea rows="3" cols="30" name="introduce">${mdto.introduce}</textarea></td>
								</tr>
								
								
								
							</tbody>
							
							
							</table>
							
						</div><!--  //memberbd -->
						
						</form>
						
					</div>

					
					<!-- Btn Area -->
					<div class="btnArea">
						<div class="bCenter">
							<ul>
								<li><a href="../main/main" class="nbtnbig">취소하기</a></li>
								<li><a href="#" onclick="document.getElementById('change_ok').submit()" class="sbtnMini">수정하기</a></li>
							</ul>
						</div>
					</div>
					<!-- //Btn Area -->



<script type="text/javascript" src="../js/jquery.fancybox-1.3.4.pack.js"></script>

<link rel="stylesheet" type="text/css" href="../css/jquery.fancybox-1.3.4.css" />



<!-- <script type="text/javascript">
$(function(){
	
	var winWidth = $(window).width();
	if(winWidth > 767){
		var layerCheck = 540;
	}else{
		var layerCheck = 320;
	}

	$(".addressBtn, .nbtnMini").fancybox({
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
 -->


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