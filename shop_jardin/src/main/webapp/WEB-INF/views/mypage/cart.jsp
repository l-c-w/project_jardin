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
<meta name="description" content="JARDIN SHOP" />
<meta name="keywords" content="JARDIN SHOP" />
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scaleable=no" />
<link rel="stylesheet" type="text/css" href="../css/reset.css?v=Y" />
<link rel="stylesheet" type="text/css" href="../css/layout.css?v=Y" />
<link rel="stylesheet" type="text/css" href="../css/content.css?v=Y" />
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="../js/common.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.js"></script>
<script type="text/javascript" src="../js/top_navi.js"></script>
<script type="text/javascript" src="../js/left_navi.js"></script>
<script type="text/javascript" src="../js/main.js"></script>
<script type="text/javascript" src="../js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="../js/idangerous.swiper-2.1.min.js"></script>
<script type="text/javascript" src="../js/jquery.anchor.js"></script>
<script>
				
								</script>
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
				<li class="last">장바구니</li>
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
			
			
			
			
			<script type="text/javascript">initSubmenu(3,0);</script>


			<!-- contents -->
			<div id="contents">
				<div id="mypage">
					<h2><strong>장바구니</strong><span>장바구니에 담긴 상품을 확인해보세요.</span></h2>
					
					<div class="myInfo">
						<ul>
							<li class="info"><strong>${sessionScope.session_mem }</strong> 님의 정보를 한눈에 확인하세요.</li>
							<li>보유 쿠폰<br/><span class="num">${usable_coupon }</span> <span class="unit">장</span></li>
							<li class="point">내 포인트<br/><span class="num">${usable_point }</span> <span class="unit">P</span></li>
							<li class="last">진행중인 주문<br/><span class="num">199</span> <span class="unit">건</span></li>
						</ul>
					</div>

				<!-- 장바구니에 상품이 있을경우 -->
					<!-- 장바구니 상품 -->
					<h3>장바구니에 담긴 상품 <span>장바구니에 담긴 상품은 30일간 보관됩니다.</span></h3>
					<div class="orderDivNm">
						<table summary="장바구니에 담긴 상품들을 전체선택, 상품명, 가격/포인트, 수량, 합계, 주문 순으로 조회 및 주문을 하실수 있습니다." class="orderTable" border="1" cellspacing="0">
							<caption>장바구니 상품목록</caption>
							<colgroup>
							<col width="7%"/>
							<col width="*" />
							<col width="14%" class="tnone" />
							<col width="10%" class="tw14"/>
							<col width="14%" class="tw28"/>
							<col width="14%" class="tnone" />
							</colgroup>
							<thead>
								<th scope="col"><input type="checkbox" id="select_all" onclick="select_all()"/></th>
								<th scope="col">상품명</th>
								<th scope="col" class="tnone">가격/포인트</th>
								<th scope="col">수량</th>
								<th scope="col">합계</th>
								<th scope="col" class="tnone">주문</th>
							</thead>
							<tbody>
								
								<form action="../payment/payment?buy_type=cart" name="cart_order" method="post">
								<input type="hidden" name="buy_type" value="buy_selected">
								<c:forEach var="cart_list" items="${list }">
									<c:set var="init_cost" value="0"/>
								<tr id="tr${cart_list.cart_code }">
									
									<td><input type="checkbox" id="cart${cart_list.cart_code }" class="cart_check" name="cart_check" value="${cart_list.cart_code }" onclick="get_total()"/></td>
									<td class="left">
										<p class="img"><img src="../images/img/sample_product.jpg" alt="상품" width="66" height="66" /></p>

										<ul class="goods">
											<li>
												<a href="../product/p_detail?p_code=${cart_list.p_code }&p_category=${cart_list.p_category }">${cart_list.p_name }</a>
											</li>
										</ul>
									</td>
									<td class="tnone"><span id="${cart_list.cart_code }price" name="${cart_list.cart_code }price" ><fmt:formatNumber pattern="#,###,###,###">${cart_list.p_price }</fmt:formatNumber> </span>원<br/>
									<span class="pointscore" id="${cart_list.cart_code }point"><fmt:formatNumber pattern="#,###,###,###">${cart_list.p_point }</fmt:formatNumber></span><span class="pointscore">Point</span></td>
									<td onchange="get_total()"><input type="number" class="spinner" id ="${cart_list.cart_code }" value="${cart_list.amount }" maxlength="3" name="${cart_list.p_code }amount"></td> 
									<td><span id="${cart_list.cart_code }total" name="${cart_list.p_code }total"><fmt:formatNumber pattern="#,###,###,###">${cart_list.p_price*cart_list.amount }</fmt:formatNumber></span>원</td>
									<c:set var="total_cost" value="${total_cost+init_cost+cart_list.p_price*cart_list.amount }"/>
									
									<td class="tnone">
										<ul class="order">	
											<li id="test"><a href="../payment/payment?buy_type=buy_one&cart_check=${cart_list.cart_code }" class="obtnMini iw70">바로구매</a></li>
											<li onclick="sel_del('${cart_list.cart_code }')" style="cursor: pointer;"><a class="nbtnMini iw70">상품삭제</a></li>
										</ul>
									</td>
								</tr>
								
								
								</c:forEach>
								</form>
							</tbody>
						</table>
					</div>

					<div class="btnArea">
						<div class="bRight">
							<ul>
								<li onclick="select_all2()" style="cursor: pointer;"><a class="selectbtn" >전체선택</a></li>
								<li onclick="sel_del()" style="cursor: pointer;"><a class="selectbtn2" >선택삭제</a></li>
							</ul>
						</div>
					</div>
					<!-- //장바구니 상품 -->
					

					<!-- 총 주문금액 -->
					<div class="amount">
						<h4>총 주문금액</h4>
						<ul class="info">
							<li>
								<span class="title" >상품 합계금액</span>
								<span class="won"><strong id="product_cost">0</strong>  원</span>
							</li>
							<li>
								<span class="title" >배송비</span>
								<span class="won" id="del_span"><strong id="del_cost">2,500</strong>원</span>
							</li>
						</ul>
						<ul class="total">
							<li class="mileage">(적립 마일리지 <strong id="point_total">0</strong> Point) </li>
							<li class="txt"><strong>결제 예정 금액</strong></li>
							<li class="money"><span id="total_cost">0</span> 원</li>
						</ul>
					</div>
					<!-- //총 주문금액 -->

					<div class="cartarea">
						<ul>
							<li style="cursor: pointer;" onclick="buy_select()"><a class="ty1"  >선택상품 <span>주문하기</span></a></li>
							<li onclick="buy_all()" style="cursor: pointer;"><a class="ty2">전체상품 <span>주문하기</span></a></li>
							<li class="last"><a class="ty3">쇼핑 <span>계속하기</span></a></li>
						</ul>
					</div>
					
				<!-- //장바구니에 상품이 있을경우 -->


				<!-- 장바구니에 상품이 없을경우
					<div class="noting">
						<div class="point"><span class="orange">장바구니</span>에 담긴 상품이 없습니다.</div>

						<p>장바구니에 담긴 상품은 30일간만 보관됩니다.<br/>더 오래 보관하고 싶은 상품은 <u>위시리스트</u>에 담아주세요.</p>

						<a href="#">쇼핑 계속하기</a>
					</div>
				 //장바구니에 상품이 없을경우 -->

				</div>
			</div>
			<!-- //contents -->


<script type="text/javascript" src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
<style type="text/css">
.ui-corner-all{border-bottom-right-radius:0 !important; border-bottom-left-radius:0 !important; border-top-left-radius:0 !important; border-top-right-radius:0 !important;}
.ui-widget-content{border:0;}
.ui-spinner-input{width:44px; margin:0; border:1px #ddd solid; padding:2px 0 2px 5px; font-family:'Nanum Gothic' !important; font-size:12px !important;}
</style>

<script type="text/javascript">
//스피너 생성
$(function() {var spinner = $( ".spinner" ).spinner({ min: 1, max: 999});});

//수량변화 총액변화+DB 수량 수정
$(function() {
	$('.spinner').on("spinstop", function(){
		
		var spinid= $(this).attr("id");
		var amountid="#"+spinid;
		var priceid="#"+spinid+"price";
		var totalid="#"+spinid+"total";
		
		var price=uncomma($(priceid).text());
		var amount=$(this).spinner('value');
		$(totalid).text(comma(Number(price)*Number(amount)));
		get_total();
		
		var data =JSON.stringify({cart_code:spinid,amount:amount});
		console.log(data);
		$.ajax({
			method:"POST",
			url:"cart_change",
			data:data,
			contentType:"application/json;charset=UTF-8",
			error: function(data) {
			}
		});  
	});
	
	
	
});
//계산용변수
var total=0;
var point_total=0;
var del= $("#del_cost").text();
var del_cost = 2500;

//총액계산
function get_total() {
		var chbArr = new Array;
	if($("input[name='cart_check']:checked").length==0){
		$("#product_cost").text("0");
		$("#point_total").text("0")
		$("#total_cost").text("0");
		$("#del_span").text("2,500원");
	}else{
	$("input[name='cart_check']:checked").each(function(){
		chbArr.push($(this).attr("id"));

			for (var i = 0; i < chbArr.length; i++) {
				
				var amountid="#"+chbArr[i].substring(4);
				var productid="#"+chbArr[i].substring(4)+"price";
				var pointid="#"+chbArr[i].substring(4)+"point";
				var amount= $(amountid).spinner('value');
				var product= uncomma($(productid).text());
				var point= uncomma($(pointid).text());
				total+=Number(amount)*Number(product);
				point_total+=Number(amount)*Number(point);
				
			}
				$("#product_cost").text(comma(total));
				if (total>=30000) {
					$("#del_span").text("30,000원 이상 배송비 면제");
					$("#total_cost").text(comma(total));
				}else{
				$("#total_cost").text(comma(total+del_cost));
				$("#del_span").text("2,500원");
				}
				$("#point_total").text(comma(point_total));
				total=0;
				point_total=0;
		});
	}
}

//전체선택 체크박스 총액계산
function select_all() {
	if($("#select_all").prop("checked")){
		$("input[name='cart_check']").prop("checked",true);
		get_total();
	}else{
		$("input[name='cart_check']").prop("checked",false);
		get_total();
	}
}

//전체선택 버튼 총액계산
function select_all2() {
	if($("#select_all").prop("checked")){
	$("#select_all").prop("checked",false);
	$("input[name='cart_check']").prop("checked",false);
	get_total();
	}else{
		$("#select_all").prop("checked",true);
		$("input[name='cart_check']").prop("checked",true);
		get_total();
	}
}

//선택삭제
function sel_del(code) {
	var chbArr = new Array;
	
	if (code!=null) {
		var get_id= "#cart"+code;
		$(get_id).prop("checked",true);
	}
	
	if($("input[name='cart_check']:checked").length==0){
		alert("선택된 상품이 없습니다.");
		return;
	}else{
	$("input[name='cart_check']:checked").each(function(){
		var trim = $(this).attr("id");
		var off_select="#"+trim;
		$(off_select).prop("checked",false);
		get_total();
		chbArr.push(trim.substring(4));
	});
	var cart_code=JSON.stringify({cart_code:chbArr});
	$.ajax({
		type:"POST",
		url:"cart_del",
		data:cart_code,
		contentType:"application/json;charset=UTF-8",
		success: function() {
			for (var i = 0; i < chbArr.length; i++) {
				var go_text="#cart"+chbArr[i];
				var go_hide="#tr"+chbArr[i];
				$(go_text).prop("type","text");
				$(go_hide).hide();
				
				
			}
		},error: function(request,status,error) {
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
	}
	alert("삭제되었습니다.");
}

//선택상품 구매
function buy_select() {
	if($("input[name='cart_check']:checked").length==0){
		alert("선택된 상품이 없습니다.");
		return;		
	}
	var check=confirm("선택 상품을 구매하시겠습니까?");
	if(check){
	cart_order.submit();		
	}else{
		return;
	}
}

//전체구매

function buy_all() {
	$("input[name='cart_check']").prop("checked",true);
	cart_order.submit();
}
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


</script>





		</div>
	</div>
	<!-- //container -->

<!-- footer 붙여넣기 -->
	<jsp:include page="../footer.jsp"/>

</body>
</html>