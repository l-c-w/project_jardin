<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<div id="left">
		<div id="title">MY PAGE<span>마이페이지</span>
		</div>
		<ul>
			<li><a href="ordercheck" id="leftNavi1">주문/배송 조회</a></li>
			<li><a href="takeback_state" id="leftNavi2">반품/배송 현황</a></li>
			<li><a href="cart" id="leftNavi3">장바구니</a></li>
			<li><a href="wishlist" id="leftNavi4">위시리스트</a></li>
			<li><a href="coupon" id="leftNavi5">나의 쿠폰</a></li>
			<li><a href="point" id="leftNavi6">나의 포인트</a></li>
			<li><a href="inquiry_list" id="leftNavi7">1:1문의</a></li>
			<li><a href="password_change" id="leftNavi10">비밀번호변경</a></li>
			<li><a href="../mypage/change_info?=${s_n}" id="leftNavi8">회원정보 수정</a></li>
			<li class="last"><a href="get_leave" id="leftNavi9">회원 탈퇴</a></li>
		</ul>
	</div>



</body>
</html>