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
					
					

               <form action="register_ok" id="join" name="join" method="post">


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
									<td><input type="text" name="name" id="name" required="required"></td>
								</tr>
								
								
								<tr>
									<th scope="row"><span>추천인코드 *</span></th>
									<td><input type="text" id="m_code" name="m_code" value="jardin"></td>
								</tr>
								
								
								<tr>
									<th scope="row"><span>아이디 *</span></th>
									<td>
										<ul class="pta">
											<li class="r10"><input type="text" class="w134" name="id" id="id" required="required" /></li>
											<!-- <li><a href="#" onclick="idcheck()" class="nbtnMini">중복확인</a></li> -->
											<li class="pt5"><span class="mvalign">첫 글자는 영문으로 4~16자 까지 가능, 영문, 숫자와 특수기호(_)만 사용 가능</span></li>
										    <div class="check_font" id="id_check"></div>
										    <input type="hidden" id="id_checked" value="N">
										</ul>
									</td>
								</tr>
								
					
								
<script type="text/javascript">

// 아이디 유효성 검사(1 = 중복 / 0 != 중복)
	$("#id").blur(function() {
		// id = "id_reg" / name = "userId"
		var user_id = $('#id').val();
		$.ajax({
			url : '${pageContext.request.contextPath}/member/id_check?Id='+user_id,
			type : 'get',
			success : function(data) {
				
				console.log("1 = 중복o / 0 = 중복x : "+ data);		
				
				if (data == 1) {
						// 1 : 아이디가 중복되는 문구
						$("#id_check").text("사용중인 아이디입니다 ");
						$("#id_check").css("color", "red");
						$("#id_checked").val("n");
					} 
				
				else {
					
					if(user_id == ""){
							
							$('#id_check').text('아이디를 입력해주세요 :)');
							$('#id_check').css('color', 'red');
							
						} else {
							
							$('#id_check').text("사용가능한 아이디 입니다");
							$('#id_check').css('color', 'blue');
							$("#id_checked").val("y");
						}
						
					}
				
				}, 
				
				error : function() {
						console.log("실패");
				}
				
				
			});
		});
		
		
</script>


								<!-- 	
								<script type="text/javascript">
										function idcheck() {

											window.open("idcheck", "idc",
													"width=400, height=350");
										}
										
									</script> 
									-->



									<tr>
									<th scope="row"><span>비밀번호 *</span></th>
									<td>
										<ul class="pta">
											<li class="r10"><input type="password" class="w134" name="pw" id="pw1" required="required"/></li>
											<li><span class="mvalign">※ 영문 / 숫자 혼용으로 4~20자 까지 가능.</span></li>
										</ul>
									</td>
								</tr>
								
								
								<tr>
								
									<th scope="row"><span>비밀번호 확인 *</span></th>
									
									<td>
										<ul class="pta">
										
											<li class="r10">
											
											<input type="password" class="w134" id="pw2" required="required"/></li>
											
											<li>
												<span class="black" style="display: none;">* 비밀번호가 일치합니다.</span>
												<span class="orange" style="display: none;">* 비밀번호가 일치하지 않습니다.</span>
											</li>
											
										</ul>
									</td>
								</tr>
								
								
  <script type="text/javascript">
  
    $('.w134').focusout(function () {
    	
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
											
											<li><input type="text" class="w134" name="email1" id="email1" required="required"/></li>
											
											<li><span class="valign">&nbsp;@&nbsp;</span></li>
											
											<li class="r10"><input type="text" class="w134_2" name="email3" id="email3" required="required"/></li>
											
											<li>
											
												<select id="emailList" class="w134_2" name="email2" onchange="mailcheck()">
												
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
											
											 <div class="check_font" id="email_check"></div>
                                             <input type="hidden" id="email_checked" value="N">

												<script type="text/javascript">
												
													function mailcheck() {
														i = document.join.email2.selectedIndex // 선택항목의 인덱스 번호
														var mail = document.join.email2.options[i].value // 선택항목 value
														document.join.email3.value = mail
													}
													
												</script>
												
												
												
							
												<script type="text/javascript">

// 이메일 유효성 검사(1 = 중복 / 0 != 중복)
	$('.w134_2').focusout(function () {
		var email = $('#email1').val() + "@" + $('#email3').val();
		$.ajax({
			url : '${pageContext.request.contextPath}/member/email_check?email='+email,
			type : 'get',
			success : function(data) {
				
				console.log("1 = 중복o / 0 = 중복x : "+ data);		
				
				if (data == 1) {
						// 1 : 아이디가 중복되는 문구
						$("#email_check").text("사용중인 이메일입니다 ");
						$("#email_check").css("color", "red");
						$("#email_checked").val("n");
					} 
				
				else {
					
					if(email == ""){
							
							$('#email_check').text('이메일을 입력해주세요 :)');
							$('#email_check').css('color', 'red');
							
						} else {
							
							$('#email_check').text("사용가능한 이메일 입니다");
							$('#email_check').css('color', 'blue');
							$("#email_checked").val("y");
						}
						
					}
				
				}, 
				
				error : function() {
						console.log("실패");
				}
				
				
			});
		});
		
		
</script>
												
												
												
												
												
												
												
												
												
												
												
												


											</ul>
									</td>
									
								</tr>
								
								
								
								
								<tr>
									<th scope="row"><span>이메일 수신여부 *</span></th>
									<td>
										<p>쟈뎅에서 진행되는 이벤트와 쇼핑에 대한 정보를 이메일로 받아보시겠습니까?</p>
										<ul class="question">
											<li>
												<input type="radio" name="email_agree" value="email_yes" id="receive_yes" class="radio_t" checked="checked"/><label for="receive_yes">예</label>
											</li>
											<li>
												<input type="radio" name="email_agree" value="email_no" id="receive_no" class="radio_t"/><label for="receive_no">아니오</label>
											</li>
										</ul>
										<p class="gray">* 거래관련 정보는 고객님의 거래안전을 위하여 이메일 수신거부와 관계없이 발송됩니다.</p>
									</td>
								</tr>
								
								
								
								
								<tr>
									<th scope="row"><span>주소 *</span></th>
									<td>
										<ul class="pta">
										
											<li><input type="text" class="w134" name="post" id="post" required="required"/>&nbsp;</li>

												<li><input type="button" onclick="execDaumPostCode()" value="우편번호 찾기" class="addressBtn"
													style="width: 100px; text-align: center; border: 0; font-weight: 600">
													
													<!-- <a href="" onclick="openDaumZipAddress()" class="addressBtn"> -->

													<!-- <span>우편번호 찾기</span> --> <!-- </a> --></li>
													
													
										<div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
                                         <img src="//i1.daumcdn.net/localimg/localimages/07/postcode/320/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" 
                                         onclick="closeDaumPostcode()" alt="닫기 버튼"></div>
													
													

												<li class="pt5"><input type="text" class="addressType" name="address1" id="address1" required="required"/></li>
											
											<li class="pt5"><input type="text" class="addressType" name="address2" id="address2" placeholder="상세주소를 입력해주세요" required="required"/></li>
											
											
											
											<li class="cb">
												<span class="mvalign">※ 상품 배송 시 받으실 주소입니다. 주소를 정확히 적어 주세요.</span>
											</li>
											
										</ul>
									</td>
								</tr>
								
							
							
							
								
								<!-- 주소검색은 그냥 daum api 사용 //레이어 팝업...하긴 했는데 어렵다 -->
								
								
<script type="text/javascript">

    // 우편번호 찾기 화면을 넣을 element
    var element_layer = document.getElementById('layer');
    

    function closeDaumPostcode() {
        // iframe을 넣은 element를 안보이게 한다.
        element_layer.style.display = 'none';
    }
    
    
    
    function execDaumPostCode() {
    	
        new daum.Postcode({
            oncomplete: function(data) { // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                
                var fullAddr = data.address; // 최종 주소 변수
                
                var extraAddr = ''; // 조합형 주소 변수

                
                // 기본 주소가 도로명 타입일때 조합한다.
                if(data.addressType === 'R'){
                	
                	
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    
                    
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    
                    
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                    
                }
                
                
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('post').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('address1').value = fullAddr;
                document.getElementById('address2').focus();
                
                // iframe을 넣은 element를 안보이게 한다.
                
                // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
                element_layer.style.display = 'none';
            },
            
            
            width : '100%',
            height : '100%'
            
        }).embed(element_layer);

        // iframe을 넣은 element를 보이게 한다.
        element_layer.style.display = 'block';

        // iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
        initLayerPosition();
    }

    // 브라우저의 크기 변경에 따라 레이어를 가운데로 이동시키고자 하실때에는
    // resize이벤트나, orientationchange이벤트를 이용하여 값이 변경될때마다 아래 함수를 실행 시켜 주시거나,
    // 직접 element_layer의 top,left값을 수정해 주시면 됩니다.
    
    function initLayerPosition(){
    	
        var width = 300; //우편번호 서비스가 들어갈 element의 width
        var height = 460; //우편번호 서비스가 들어갈 element의 height
        var borderWidth = 5; //샘플에서 사용하는 border의 두께

        // 위에서 선언한 값들을 실제 element에 넣는다.
        element_layer.style.width = width + 'px';
        element_layer.style.height = height + 'px';
        element_layer.style.border = borderWidth + 'px solid';
        
        // 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
        element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth) + 'px';
        element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth) + 'px';
    }
    
    
</script>

								
								
                                  <!-- 
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
										
									</script> -->
									
									
									

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
												<select name="phone1" required="required" id="phone1">
													<option value="010" selected="selected">010</option>
													<option value="011">011</option>
													<option value="016">016</option>
													<option value="017">017</option>
													<option value="018">018</option>    
													<option value="019">019</option>    
												</select>
											</li>
											
											
											<li>&nbsp;<span class="valign">-</span>&nbsp;</li>
										
											<li><input type="text" class="w74" maxlength="4" name="phone2" id="phone2" required="required"/> <span class="valign">-</span>&nbsp;</li>
											
											<li class="r10"><input type="text" class="w74" maxlength="4" name="phone3" id="phone3" required="required"/></li>
											
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
												<select name="birth1" id="birth1" required="required">
												
													<option value='' selected="selected">선택하세요</option>
													
													<script type="text/javascript">
													
													//<![CDATA[
														
														for(var i=1930; i<=2020; i++){
															document.write("<option value='" + i+ "'>"+i+"</option>");	
														};
														
													//]]>
													
													</script>
													
												</select>
												
											</li>
											
											<li>&nbsp;<span class="valign">년</span>&nbsp;&nbsp;&nbsp;</li>
											
											<li>
												<select name="birth2" id="birth2" required="required">
													<option value='' selected="selected">선택하세요</option>
													
													<script type="text/javascript">
													
													//<![CDATA[
														for(var i=1; i<=12; i++){
															if(i<10){
																document.write("<option value='0" + i +"'>"+"0"+i+"</option>");
															}else{
																document.write("<option value='" + i+ "'>"+i+"</option>");
															};
														};
													//]]>
													
													</script>
													
												</select>
											</li>
										
										
											<li>&nbsp;<span class="valign">월</span>&nbsp;&nbsp;&nbsp;</li>
											
											
											<li>
											
												<select name="birth3" id="birth3" required="required">
												
													<option value='' selected="selected">선택하세요</option>
													
													
													<script type="text/javascript">
													
													//<![CDATA[
														for(var i=1; i<=31; i++){
															if(i<10){
																document.write("<option value='0" + i +"'>"+"0"+i+"</option>");
															}else{
																document.write("<option value='" + i + "'>"+i+"</option>");
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
									<td><textarea rows="3" cols="30" name="introduce" required="required" id="introduce"></textarea></td>
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
								<li><a href="javascript:history.back()" class="nbtnbig">취소하기</a></li>
								<li><a href="#" onclick="validate()" class="sbtnMini">가입하기</a></li>
							</ul>
						</div>
					</div>
					
					
					
					<script type="text/javascript">
					
					 function validate() {
						 
						
					       
					       if(join.name.value=="") {
					           alert("이름을 입력해 주세요");
					           join.name.focus();
					           return false;
					       }
					       
					       
					       var nameRegExp = /^[가-힣]{2,}$/; //아이디 유효성 검사
					        if (!nameRegExp.test(join.name.value)) {
					            alert("이름은 한글만 입력 가능합니다");
					            join.name.value = "";
					            join.name.focus();
					            return false;
					        }
					       
					       
					       
					       if(join.id.value=="") {
					           alert("아이디를 입력해 주세요");
					           join.id.focus();
					           return false;
					       }
					       
					       
					        var idRegExp = /^[a-zA-z0-9]{4,12}$/; //아이디 유효성 검사
					        if (!idRegExp.test( join.id.value)) {
					            alert("아이디는 영문 대소문자와 숫자 4~12자리로 입력해야합니다!");
					            join.id.value = "";
					            join.id.focus();
					            return false;
					        }
					        
					        
					        if(join.id_checked.value == "n"){
								 alert('아이디 중복체크를 해주세요');
								 join.id.focus();
								 return false;
							 }
					       
					        
					       
					       if(join.pw1.value != join.pw2.value) {
					           alert("비밀번호가 다릅니다. 다시 확인해 주세요.");
					           join.pw2.value = "";
					           join.pw2.focus();
					           return false;
					       }
					       
					       
					       var pwRegExp = /^[a-zA-z0-9]{4,20}$/; 
					        if (!pwRegExp.test(join.pw1.value)) {
					            alert("비밀번호는  영문 / 숫자 혼용으로 4~20자 까지 가능.");
					            join.pw1.value = "";
					            join.pw.focus();
					            return false;
					        }
					       
					       
					       
					       if(join.email1.value=="" || join.email3.value=="") {
					           alert("이메일을 입력해 주세요");
					           join.email1.focus();
					           return false;
					       }
					       
					       
					        var emailRegExp = /^[a-zA-z]{1,}$/; 
					        if (!emailRegExp.test(join.email1.value)) {
					            alert("이메일은 영어만 입력가능합니다.");
					            join.email1.value = "";
					            join.email1.focus();
					            return false;
					        }
					        
					        
					        
					        if(join.email_checked.value == "n"){
								 alert('이메일 중복체크를 해주세요');
								 join.email1.focus();
								 return false;
							 }
					        
					        
					        
					        
					       
					       
					       if(join.post.value=="" || join.address1.value=="" || join.address2.value=="") {
					           alert("주소를 입력해 주세요");
					           join.address2.focus();
					           return false;
					       }
					       
					       
					       
					       if(join.phone1.value=="" || join.phone2.value=="" || join.phone3.value=="") {
					           alert("휴대폰번호를 입력해 주세요");
					           join.phone2.focus();
					           return false;
					       }
					       
					       
					       
					       var  phoneRegExp = /^[0-9]{1,}$/; 
					        if (!phoneRegExp.test(join.phone2.value)  ||  !phoneRegExp.test(join.phone3.value)  ) {
					            alert("휴대폰번호는 숫자만 입력가능합니다.");
					            join.phone2.value = "";
					            join.phone2.focus();
					            return false;
					        }
					       
					       
					       
					       if(join.introduce.value=="") {
					           alert("자기소개를 적어주세요");
					           join.introduce.focus();
					           return false;
					       }
					       
					      
					       join.submit();
					       
					   }
					 
					
					
					</script>
					
					
					
					
					
					
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