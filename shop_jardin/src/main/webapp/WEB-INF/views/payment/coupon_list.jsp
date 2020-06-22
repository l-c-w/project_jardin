<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> JARDIN SHOP </title>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="description" content="JARDIN" />
<meta name="keywords" content="JARDIN" />
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scaleable=no" />
<link rel="stylesheet" type="text/css" href="../css/reset.css" />
<link rel="stylesheet" type="text/css" href="../css/content.css" />
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/common.js"></script>
<script type="text/javascript">
$(function() {
	$('input:radio[name=select_coupon]').eq(0).attr("checked", true);

});
</script>
</head>
<body>

<div id="layerWrap">

<div class="inputWrap">
		
	<div class="inputBody">
		<div class="title">쿠폰 조회</div>
		<p class="close" style="cursor: pointer;" onclick="parent.window.close();"><img src="../images/btn/btn_input_close.gif" alt="닫기" /></p>

		<div id="member">
			<h3 class="dep">쿠폰 적용</h3>
			<div class="orderDivNm">
				<table summary="상품 게시판으로 주문하신 상품명, 수량, 판매가, 배송순으로 조회 하시고 쿠폰을 적용하실 수 있습니다." class="orderTable" border="1" cellspacing="0">
					<caption>상품 게시판</caption>
					<colgroup>
					<col width="*" />
					<col width="16%" />
					<col width="14%" class="tw30" />
					<col width="16%" class="pnone" />
					</colgroup>
					<thead>
						<th scope="col">상품명</th>
						<th scope="col">수량</th>
						<th scope="col">판매가</th>
						<th scope="col" class="pnone">합계</th>
					</thead>
					<tbody>
					<c:set var="total" value="0"/>
					<c:forEach var="cartcode" items="${cart_code }">
						<tr>
							<td class="left">
								<p class="img"><img src="../images/img/sample_product.jpg" alt="상품" width="66" height="66" /></p>

								<ul class="goods">
									<li>
										<a href="#"> ${cartcode.p_name }</a>
									</li>
								</ul>
							</td>
							<td><fmt:formatNumber pattern="#,###,###,###">${cartcode.amount }</fmt:formatNumber> 개</td>
							<td><fmt:formatNumber pattern="#,###,###,###">${cartcode.p_price }</fmt:formatNumber> 원</td>
							<td class="pnone"><fmt:formatNumber pattern="#,###,###,###">${cartcode.p_price*cartcode.amount }</fmt:formatNumber> 원</td>
							<c:set var="total" value="${total+cartcode.p_price*cartcode.amount }"/>
						</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
				<div class="popGraybox">
				<div class="result">
					<div class="discount">
						총액 : <span><fmt:formatNumber pattern="#,###,###,###">${total }</fmt:formatNumber></span> 원
					</div>
				</div>
				<div class="result">
					<div class="point">* 옵션가와 배송비는 제외</div>
					<div class="discount">
						쿠폰 할인 금액 : <span id="discount">
						0</span> 원
					</div>
				</div>
			</div>

			<!-- 쿠폰할인 금액 합계 -->
			<div class="amount popamount">
				<ul class="coupon">
					<li>쿠폰 할인 금액 합계 : <span class="orange" id="total">0</span> 원</li>
				</ul>
			</div>
			<!-- //쿠폰할인 금액 합계 -->

			
			<!-- 나의 쿠폰 내역 -->
			<h3 class="dep">나의 쿠폰 내역</h3>
			<div class="couponrDiv">
				<table summary="No, 쿠폰번호/쿠폰내용, 등록날짜/사용기간, 할인금액, 상태, 적용순으로 쿠폰내역을 조회하실 수 있습니다." class="orderTable3" border="1" cellspacing="0">
					<caption>적용가능 쿠폰</caption>
					<colgroup>
					<col width="8%" class="tnone" />
					<col width="*" class="tw40" />
					<col width="26%" class="tw40" />
					<col width="12%" class="tnone" />
					</colgroup>
					<thead>
						<th scope="col" class="tnone">선택</th>
						<th scope="col">쿠폰번호 / <span>쿠폰내용</span></th>
						<th scope="col">등록날짜 / <span>사용기간</span></th>
						<th scope="col" class="tnone">할인금액</th>
					</thead>
					<tbody>
						<c:forEach var="coupon_list" items="${ucoupon_list }">
						<c:if test="${cartcode.p_price*amount < coupon_list.cou_limit}"></c:if>
						<tr>
							<td class="tnone"><input type="radio" name="select_coupon" id="${coupon_list.cou_reward }" value="${coupon_list.cou_code }"> </td>
							<td class="tnone">${coupon_list.cou_num }<br/><span>${coupon_list.cou_name }</span></td>
							<td>${coupon_list.issue_date }<br/><span>(<fmt:formatDate value="${coupon_list.issue_date }" pattern="yyyy/MM/dd"/>  ~
								<fmt:formatDate value="${coupon_list.exp_date }" pattern="yyyy/MM/dd"/>  )</span></td>
							<td class="tnone" name="${coupon_list.cou_code }reward" id="${coupon_list.cou_reward }">
							<c:if test="${coupon_list.cou_reward<1 }"><fmt:parseNumber value="${coupon_list.cou_reward*100 }" integerOnly="true"/>% 할인</c:if>
										<c:if test="${coupon_list.cou_reward>1 }"><fmt:parseNumber value="${coupon_list.cou_reward }" integerOnly="true"/>원 할인</c:if>
							
							</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<!-- //나의 쿠폰 내역 -->
			
			<!-- Btn Area -->
			<div class="btnArea">
				<div class="bCenter">
					<ul>								
						<li onclick="send_coupon()" style="cursor: pointer;"><a class="sbtnMini">확인</a></li>
						<li onclick="parent.window.close();" style="cursor: pointer;"><a class="nbtnbig">취소</a></li>
					</ul>
				</div>
			</div>
			<!-- //Btn Area -->

		</div>

	</div>

</div>


</div>
<script>

$("input:radio[name='select_coupon']").change(function() {
	var reward = $(this).attr("id");
	var total= ${total};
	
	if (reward<1) {
		$("#discount").text(comma(total*reward));
		$("#total").text(comma(total-total*reward));
	}else{
		$("#discount").text(comma(Math.floor(reward)));
		$("#total").text(comma(total-reward));
	}
});

//콤마찍기
function comma(str) {
    str = String(str);
    return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
}
//콤마풀기
function uncomma(str) {
    str = String(str);
    return str.replace(/[^\d]+/g, '');
}

//할인값 쿠폰코드 보내기
function send_coupon() {
	var checked_coupon =$("input:radio[name='select_coupon']:checked").val();
	var discount = $("#discount").text();
	 opener.document.getElementById("cou_input").value= comma(discount);
	 opener.document.getElementById("cou_code").value= checked_coupon;
	 
	opener.get_total();
	window.close();
	
}
</script>
</body>
</html>