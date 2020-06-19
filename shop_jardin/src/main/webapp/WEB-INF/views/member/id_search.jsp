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
	            <li><a href="#">MEMBERSHIP</a></li>
				<li class="last">아이디/비밀번호 찾기</li>
			</ol>
		</div>
		
		<div id="outbox">	
			
			<jsp:include page="member2.jsp"/>
			
			
			<!-- <div id="left">
				<div id="title2">MEMBERSHIP<span>멤버쉽</span></div>
				<ul>	
					<li><a href="#" id="leftNavi1">로그인</a></li>
					<li><a href="#" id="leftNavi2">회원가입</a></li>
					<li><a href="#" id="leftNavi3">아이디/<span>비밀번호 찾기</span></a></li>
					<li><a href="#" id="leftNavi4">회원약관</a></li>
					<li><a href="#" id="leftNavi5">개인정보<span>취급방침</span></a></li>
					<li class="last"><a href="#" id="leftNavi6">이메일무단<span>수집거부</span></a></li>
				</ul>			
			</div> -->
			
			
			<script type="text/javascript">initSubmenu(3,0);</script>


			<!-- contents -->
			<div id="contents">
				<div id="member">
					<h2><strong>아이디/비밀번호 찾기</strong><span>회원님께서 가입하신 아이디와 비밀번호를 찾아드립니다.</span></h2>
					<h3>아이디 찾기</h3>
					
					<form action="../member/id_search_go" id="id_search" name="id_search" method="post">
					
					<div class="informbox">
						<div class="inform">
							<ul>
								<li><input type="text" name="name_s" id="name_s" class="nameType" onfocus="this.className='mfocus'" onblur="if (this.value.length==0) {this.className='nameType'}else {this.className='mfocusnot'}" style="ime-mode:inactive;" /></li>
								<li><input type="text" name="email_s" id="email_s" class="emailType" onfocus="this.className='mfocus'" onblur="if (this.value.length==0) {this.className='emailType'}else {this.className='mfocusnot'}" style="ime-mode:inactive;" /></li>
							</ul>

							<div class="btn"><a href="#" onclick="id_checkForm()" class="gbtn">아이디 찾기</a></div>
							
						</div>
					</div>
					
					</form>
					
					
					<script type="text/javascript">
					
					function id_checkForm() {
						
					    if(id_search.name_s.value == '') {
					        alert("아이디를 입력해주세오");
					        id_search.name_s.focus();
					        id_search.name_s.select();
					        return false; //
					    }
					    
					    if(id_search.email_s.value == ''){
					        alert('이메일을 입력하세요.');
					        id_search.email_s.focus();
					        return false;
					    }
					    
					    
					    id_search.submit();
					    
					    
					}
					
					</script>
					
					
					


                   <form action="../member/pw_search_go" id="pw_search" name="pw_search" method="post">
                   
					<h3>비밀번호 찾기</h3>
					<div class="informbox">
						<div class="inform">
							<ul>
								<li><input type="text" name="id_s" id="id_s" class="loginType" onfocus="this.className='mfocus'" onblur="if (this.value.length==0) {this.className='loginType'}else {this.className='mfocusnot'}" /></li>
								<li><input type="text" name="email_s" id="email_s" class="emailType" onfocus="this.className='mfocus'" onblur="if (this.value.length==0) {this.className='emailType'}else {this.className='mfocusnot'}" /></li>
							</ul>

							<div class="btn"><a href="#" onclick="pw_checkForm()" class="gbtn">비밀번호 찾기</a></div>
						</div>
					</div>
					
					</form>
					
					
					
				   <script type="text/javascript">
				   
				   function pw_checkForm() {
						
					    if(pw_search.id_s.value == '') {
					        alert("아이디를 입력해주세오");
					        pw_search.id_s.focus();
					        pw_search.id_s.select();
					        return false; //
					    }
					    
					    if(pw_search.email_s.value == ''){
					        alert('이메일을 입력해주세요.');
					        pw_search.email_s.focus();
					        return false;
					    }
					    
					    pw_search.submit();
					    
					}
					
					</script>
					


					<p class="alert">쟈뎅 온라인 쇼핑몰에서는 2012년 8월 18일로 시행되는 정보통신망 이용 촉진 및 정보 보호 등에 관한 법률 “주민등록번호의 <span>사용 제한”과 관련하여 주민등록번호를 수집하지 않습니다.</span></p>

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