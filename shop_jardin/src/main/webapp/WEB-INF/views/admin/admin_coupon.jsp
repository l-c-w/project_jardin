<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/admin_coupon.css" />
<link rel="stylesheet" type="text/css" href="../css/admin_main.css" />
<link rel="stylesheet" type="text/css" href="../css/admin_account.css">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="../js/idangerous.swiper-2.1.min.js"></script>
<script type="text/javascript" src="../js/jquery.anchor.js"></script>
<script type="text/javascript" src="../js/admin_coupon.js"></script>
</head>
<body>
	<jsp:include page="admin_header.jsp" />

	<section id="sect">
		<div class="coupon_div">
			<h2>쿠폰등록</h2>
			<hr>
			<form action="admin_couponWriteDo" method="post">
				<table border="1" class="coupon_table">
					<tr>
						<td>쿠폰이름<span> (필수)</span></td>
						<td>
							<input type="text" name="cou_name" class="coupon_name" required>
						</td>
					</tr>
					<tr>
						<td>혜택구분</td>
						<td>
							<select name="benefit" id="reward_sel">
								<option value="dis_per">할인율</option>
								<option value="dis_pri">할인금액</option>
							</select>
							<div id="persent">
								<input type="text" name="persent" class="discount" maxlength="6" value="">
								<span>%</span>
							</div>
							<div id="price">
								<span>할인금액</span>
								<input type="text" name="price" class="dis_price" maxlength="7" value="">
								<span>원</span>
							</div>
							<div id="benefit_max">
								<span>최대금액</span>
								<input type="text" name="cou_limit" class="maxprice" maxlength="7" value="" required>
								<span>원</span>
							</div>
						</td>
					</tr>
					<tr>
						<td>사용 기간</td>
						<td>
							<select name="cou_date" id="cou_exp">
								<option value="period">기간설정</option>
								<option value="issued">쿠폰 발급일 기준</option>
							</select>
							
							<div id="cou_exp_div">
								<!-- 실제 발급된 일시에 관계없이 지정된 기간 및 시간 내에만 이용할 수 있습니다 -->
								<input type="date" name="cou_start1">
								<select name="cou_start2">
									<c:forEach var="time" begin="0" end="23" step="1">
										<c:if test="0${time <= 9 }">
											<option value="${time }">0${time }:00</option>
										</c:if>
										<c:if test="${time >= 10 }">
											<option value="${time }">${time }:00</option>
										</c:if>
									</c:forEach>
								</select>
								<span> ~ </span>
								<input type="date" name="cou_end1">
								<select name="cou_end2">
									<c:forEach var="time" begin="0" end="23" step="1">
										<c:if test="${time <= 9 }">
											<option value="0${time }">0${time }:00</option>
										</c:if>
										<c:if test="${time >= 10 }">
											<option value="${time }">${time }:00</option>
										</c:if>
									</c:forEach>
								</select>
								<span>발급일로부터 사용 가능한 일 수 </span><input type="text" name="cou_exp" style="width: 50px;">
							</div>
							<div id="cou_exp_div2">
								<!-- 실제 발급된 일시를 기준으로 입력한 일수의 기간까지 이용할 수 있습니다 -->
								<input type="date" name="cou_end2_1">
								<select name="cou_end2_2">
									<c:forEach var="time" begin="0" end="23" step="1">
										<c:if test="${time <= 9 }">
											<option value="0${time }">0${time }:00</option>
										</c:if>
										<c:if test="${time >= 10 }">
											<option value="${time }">${time }:00</option>
										</c:if>
									</c:forEach>
								</select>
							</div>
							<p class="notice">기간설정 : 실제 발급된 일시에 관계없이 지정된 기간 및 시간 내에만 이용할 수 있습니다.</p>
							<p class="notice">쿠폰 발급일 기준 : 실제 발급된 일시를 기준으로 입력한 일수의 기간까지 이용할 수 있습니다.</p>
						</td>
					</tr>
					<tr>
						<td>쿠폰적용 상품 선택</td>
						<td>
							<select name="p_category">
								<c:forEach var="pdto" items="${pdto }">
									<option value="${pdto.p_category }">${pdto.p_category }</option>
								</c:forEach>
							</select>
						</td>
					</tr>
					<tr>
						<td>쿠폰적용 상품 선택</td>
						<td>
							<select name="e_code">
								<c:forEach var="edto" items="${edto }">
									<option value="${edto.e_code }">${edto.e_title }</option>
								</c:forEach>
							</select>
						</td>
					</tr>
				</table>
				<div class="submit_tr">
					<input type="submit" value="등록">
				</div>
			</form>
	
	
	
		</div>
	</section>
	
</body>
</html>

<!-- 

					<tr>
						<td>쿠폰사용<span></span></td>
						<td>
							<input type="radio" value="cou_y" name="">사용함
							<input type="radio" value="cou_n" name="">사용안함
						</td>
					</tr>
					<tr>
						<td>할인 동시사용</td>
						<td>
							<select name="">
								<option value="test1">쿠폰+회원등급 할인 동시 사용</option>
								<option value="test1">쿠폰+회원등급 할인 동시 사용</option>
							</select>
						</td>
					</tr>
					
 -->