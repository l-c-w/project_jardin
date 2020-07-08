<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title> JARDIN SHOP </title>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="description" content="JARDIN" />
<meta name="keywords" content="JARDIN" />
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scaleable=no" />

<link rel="stylesheet" type="text/css" href="../css/reset.css?v=Y" />
<link rel="stylesheet" type="text/css" href="../css/layout.css?v=Y" />
<link rel="stylesheet" type="text/css" href="../css/content.css?v=Y" />


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/top_navi.js"></script>
<script type="text/javascript" src="../js/left_navi.js"></script>

<script type="text/javascript" src="../js/main.js"></script>
<script type="text/javascript" src="../js/common.js"></script>
<script type="text/javascript" src="../js/jquery.easing.1.3.js"></script>

<script type="text/javascript" src="../js/idangerous.swiper-2.1.min.js"></script>
<script type="text/javascript" src="../js/jquery.anchor.js"></script>


</head>
<body>
<div id="layerWrap">

<!-- header 붙여넣기 -->
	<jsp:include page="../header.jsp"/>


<!-- container -->
	<div id="container">

		<div id="location">
			<ol>
			<li><a href="../main/main">HOME</a></li>
				<li><a href="#">MY PAGE</a></li>
				<li class="last">비밀번호 변경</li>
			</ol>
		</div>
		
		<div id="outbox">		
		<jsp:include page="mypage1.jsp"></jsp:include>
			
			
			<script type="text/javascript">initSubmenu(10,0);</script>


			<!-- contents -->
			<div id="contents">
			
				<div id="mypage">
				
					<h2><strong>비밀번호변경</strong></h2>
					
					<div class="myInfo">
					
						<ul>
							<li class="info"><strong>${s_n}</strong> 님의 정보를 한눈에 확인하세요.</li>
							<li>보유 쿠폰<br/><span class="num">199</span> <span class="unit">장</span></li>
							<li class="point">내 포인트<br/><span class="num">100,000</span> <span class="unit">P</span></li>
							<li class="last">진행중인 주문<br/><span class="num">199</span> <span class="unit">건</span></li>
						</ul>
						
					</div>
					
					
		
	<div class="inputBody">
	
		<div class="title">비밀번호 변경</div>

		<div class="checkDiv">
			
			<form action="password_change_ok" id="change_pw" name="change_pw" method="post">
			
			<table summary="새로운 비밀번호로 변경 하실수 있습니다." class="checkTable" border="1" cellspacing="0">
				
				<caption>비밀번호 변경</caption>
				
				<colgroup>
				
				<col width="48%" />
				<col width="*" />
				
				</colgroup>
				
				<tbody>
				
					<tr>
						<th scope="row"><span>현재 비밀번호</span></th>
						<td><input type="password" id="pw" class="w215" /></td>
						<td><input type="hidden" name="id" value="${member.id}" class="w215" /></td>
					</tr>
					
					<tr>
						<th scope="row"><span>새로운 비밀번호</span></th>
						<td><input type="password" name="pw1" id="pw1" class="w215" /></td>
					</tr>
					
					<tr>
						<th scope="row"><span>새로운 비밀번호 <u>재입력</u></span></th>
						<td><input type="password" id="pw2" class="w215" /></td>
					</tr>
					
				</tbody>
				
			</table>
			
			</form>
			
		</div>


		<div class="centerbrn pd10">
			<a href="#" onclick="valid()">확인</a>
		</div>

	</div>
	
	
	
	<script type="text/javascript">
	
	
	function valid(){
		
		var current_pw = "${member.pw}";
		 
		   if(change_pw.pw.value == "") {
	           alert("기존 비밀번호를 입력해주세요");
	           change_pw.pw.value = "";
	           change_pw.pw.focus();
	           return false;
	       }
		   
		   
		   if(change_pw.pw1.value == "" || change_pw.pw2.value == "") {
	           alert("비밀번호를 입력해주세요");
	           change_pw.pw1.value = "";
	           change_pw.pw1.focus();
	           return false;
	       }
		 
		
	       if(change_pw.pw1.value != change_pw.pw2.value) {
	           alert("비밀번호가 다릅니다. 다시 확인해 주세요.");
	           change_pw.pw2.value = "";
	           change_pw.pw2.focus();
	           return false;
	       }
	       
	       
	       var pwRegExp = /^[a-zA-z0-9]{4,20}$/; 
	       
	        if (!pwRegExp.test(change_pw.pw1.value)) {
	            alert("비밀번호는  영문 / 숫자 혼용으로 4~20자 까지 가능.");
	            change_pw.pw1.value = "";
	            change_pw.pw.focus();
	            return false;
	        }
	       
	       
	       
	       if(change_pw.pw.value != current_pw) {
	           alert("기존 비밀번호가 아닙니다");
	           change_pw.pw.value = "";
	           change_pw.pw.focus();
	           return false;
	       }
	       
		
		change_pw.submit();
		
	}
	
	
	</script>
	
	

						
					</div>

				</div>
				
			</div>
			<!-- //contents -->


		</div>
		
	</div>
	<!-- //container -->
	

</body>
</html>