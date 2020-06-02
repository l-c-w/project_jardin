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


<script type="text/javascript">

	function idcheck() {

		window.open("idcheck.jsp", "idc", "width=400, height=350");
	}
	
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
				<li><a href="#">MEMBERSHIP</a></li>
				<li class="last">회원가입</li>
			</ol>
		</div>
		
		<div id="outbox">		
		
			<jsp:include page="member2.jsp"/>
			
			<script type="text/javascript">initSubmenu(2,0);</script>


			<!-- contents -->
			<div id="contents">
				<div id="member">
					<h2><strong>회원가입</strong><span>회원으로 가입하시면 보다 더 다양한 혜택을 누리실 수 있습니다.</span></h2>
					
					<!-- STEP -->
					<div class="stepWrap">
						<div class="step">
							<p class="web">STEP 01</p>
							<p class="txt">실명확인</p>
							
						</div>

						<div class="step">
							<p class="web">STEP 02</p>
							<p class="txt">약관 동의</p>
						</div>

						<div class="step stepon">
							<p class="web">STEP 03</p>
							<p class="txt"><span>회원정보</span> <span>입력</span></p>
							<p class="ck"><img src="../images/bg/bg_step.png" alt="현재위치" /></p>
						</div>

						<div class="step">
							<p class="web">STEP 04</p>
							<p class="txt"><span>회원가입</span> <span>완료</span></p>
						</div>
					</div>
					<!-- //STEP -->
						
						
						

					<div class="attention">
						<ul>
							<li>* 표시된 항목은 필수 항목이므로 반드시 입력하셔야 회원가입이 진행됩니다.</li>
						</ul>
					</div>
					
					


               <form action="register_ok" id="register_ok">



					<div class="memberbd">
					
					
						<table summary="이름, 아이디, 비밀번호, 비밀번호 확인, 이메일, 이메일수신여부, 주소, 휴대폰, 유선전화, 생년월일 순으로 회원가입 정보를 등록할수 있습니다." class="memberWrite" border="1" cellspacing="0">
							
							<caption>회원가입 입력</caption>
							<colgroup>
							<col width="22%" class="tw30" />
							<col width="*" />
							</colgroup>
							
							<tbody>
							
								<tr>
									<th scope="row"><span>이름 *</span></th>
									<td><input type="text" name="name"></td>
								</tr>
								
								
								<tr>
									<th scope="row"><span>추천인코드 *</span></th>
									<td><input type="text" name="m_code"></td>
								</tr>
								
								
								<tr>
									<th scope="row"><span>아이디 *</span></th>
									<td>
										<ul class="pta">
											<li class="r10"><input type="text" class="w134" name="id" /></li>
											<li><a href="#" onclick="idcheck()" class="nbtnMini">중복확인</a></li>
											<li class="pt5"><span class="mvalign">첫 글자는 영문으로 4~16자 까지 가능, 영문, 숫자와 특수기호(_)만 사용 가능</span></li>
										</ul>
									</td>
								</tr>
								
								
								<tr>
									<th scope="row"><span>비밀번호 *</span></th>
									<td>
										<ul class="pta">
											<li class="r10"><input type="password" class="w134" name="pw"/></li>
											<li><span class="mvalign">※ 영문 / 숫자 혼용으로 4~20자 까지 가능.</span></li>
										</ul>
									</td>
								</tr>
								
								
								<tr>
									<th scope="row"><span>비밀번호 확인 *</span></th>
									<td>
										<ul class="pta">
											<li class="r10"><input type="password" class="w134" /></li>
											
											<li>
												<span class="mvalign black">* 비밀번호가 일치입니다.</span>
												<span class="mvalign orange">* 비밀번호가 일치하지 않습니다.</span>
											</li>
											
										</ul>
									</td>
								</tr>
								
								
								<tr>
									<th scope="row"><span>이메일</span></th>
									<td>
										<ul class="pta">
											<li><input type="text" class="w134" name="email1"/></li>
											<li><span class="valign">&nbsp;@&nbsp;</span></li>
											<li class="r10"><input type="text" class="w134" /></li>
											<li>
												<select id="emailList" name="email2">
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
										</ul>
									</td>
								</tr>
								
								
								<tr>
									<th scope="row"><span>이메일 수신여부 *</span></th>
									<td>
										<p>쟈뎅에서 진행되는 이벤트와 쇼핑에 대한 정보를 이메일로 받아보시겠습니까?</p>
										<ul class="question">
											<li>
												<input type="radio" name="email_agree" value="receive_yes" id="receive_yes" class="radio_t" checked="checked"/><label for="receive_yes">예</label>
											</li>
											<li>
												<input type="radio" name="email_agree" value="receive_no" id="receive_no" class="radio_t"/><label for="receive_no">아니오</label>
											</li>
										</ul>
										<p class="gray">* 거래관련 정보는 고객님의 거래안전을 위하여 이메일 수신거부와 관계없이 발송됩니다.</p>
									</td>
								</tr>
								
								
								
								<tr>
									<th scope="row"><span>주소 *</span></th>
									<td>
										<ul class="pta">
											<li>
												<input type="text" class="w134" name="address1" />&nbsp;
											</li>
											
											<li><a href="address_search" class="addressBtn"><span>우편번호 찾기</span></a></li>
											
											<li class="pt5"><input type="text" class="addressType" name="address2"/></li>
											
											<li class="cb">
												<span class="mvalign">※ 상품 배송 시 받으실 주소입니다. 주소를 정확히 적어 주세요.</span>
											</li>
										</ul>
									</td>
								</tr>
								
								
								<tr>
									<th scope="row"><span>휴대폰 *</span></th>
									<td>
										<ul class="pta">
											<li>
												<select name="phone1">
													<option value="010" selected="selected" >010</option>
													<option value="011">011</option>
													<option value="016">016</option>
													<option value="017">017</option>
													<option value="018">018</option>    
													<option value="019">019</option>    
												</select>
											</li>
											
											
											<li>&nbsp;<span class="valign">-</span>&nbsp;</li>
										
											<li><input type="text" class="w74" maxlength="4" name="phone2"/> <span class="valign">-</span>&nbsp;</li>
											
											<li class="r10"><input type="text" class="w74" maxlength="4" name="phone3"/></li>
											
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
												
													<option value='' selected="selected">선택하세요</option>
													
													<script type="text/javascript">
													//<![CDATA[
														for(var i=1930; i<=2020; i++){
															document.write("<option value=''>" + i+ "</option>");	
														};
													//]]>
													</script>
												</select>
											</li>
											
											<li>&nbsp;<span class="valign">년</span>&nbsp;&nbsp;&nbsp;</li>
											
											<li>
												<select name="birth2">
													<option value='' selected="selected">선택하세요</option>
													<script type="text/javascript">
													//<![CDATA[
														for(var i=1; i<=12; i++){
															if(i<10){
																document.write("<option value=''>0" + i+"</option>");
															}else{
																document.write("<option value=''>" + i+ "</option>");
															};
														};
													//]]>
													</script>
												</select>
											</li>
											
										
											<li>&nbsp;<span class="valign">월</span>&nbsp;&nbsp;&nbsp;</li>
											
											<li>
											
											
												<select name="birth3">
													<option value='' selected="selected">선택하세요</option>
													
													<script type="text/javascript">
													//<![CDATA[
														for(var i=1; i<=31; i++){
															if(i<10){
																document.write("<option value=''>0" + i +"</option>");
															}else{
																document.write("<option value=''>" + i + "</option>");
															};
														};
													//]]>
													</script>
												</select>
											</li>
											
											
											<li class="r20">&nbsp;<span class="valign">일</span></li>
											
											
											<li class="pt5">
												<ul class="baseQues">
													<li>
														<input type="radio" name="sol_lun" value="solar" id="solar" class="radio_t" checked="checked"/><label for="solar">양력</label>
													</li>
													<li>
														<input type="radio" name="sol_lun" value="lunar" id="lunar" class="radio_t"/><label for="lunar">음력</label>
													</li>
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
													<li>
														<input type="radio" name="coffee_favor" value="americano" id="partner" class="radio_t"><label for="partner">아메리카노</label>
													</li>
													<li>
														<input type="radio" name="coffee_favor" value="latte" id="partner" class="radio_t" checked="checked"><label for="partner">라떼</label>
													</li>
												</ul>
											</li>
										</ul>
									</td>
									
								</tr>
								
								
								<tr>
									<th scope="row"><span>자기소개 *</span></th>
									<td><textarea rows="3" cols="30" name="introduce"></textarea></td>
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
								<li><a href="#" class="nbtnbig">취소하기</a></li>
								<li><a href="#" onclick="document.getElementById('register_ok').submit()" class="sbtnMini">가입하기</a></li>
							</ul>
						</div>
					</div>
					<!-- //Btn Area -->


<script type="text/javascript" src="../js/jquery.fancybox-1.3.4.pack.js"></script>

<link rel="stylesheet" type="text/css" href="../css/jquery.fancybox-1.3.4.css" />


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