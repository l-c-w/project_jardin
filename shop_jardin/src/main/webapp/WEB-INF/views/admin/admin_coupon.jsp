<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section>
		<div>
			<h2>쿠폰등록</h2>
			<hr>
			<form action="" method="post">
				<table border="1">
					<tr>
						<td>쿠폰이름<span>필수(이미지)</span></td>
						<td>
							<input type="text" name="cou_name">
						</td>
					</tr>
					<tr>
						<td>쿠폰설명</td>
						<td>
							<input type="text" name="cou_info">
						</td>
					</tr>
					<tr>
						<td>혜택구분</td>
						<td>
							<select name="">
								<option value="">할인율</option>
								<option value="">할인율</option>
							</select>
							<input type="text" name="">%
							최대금액<input type="text" name="">원
						</td>
					</tr>
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
					<tr>
						<td>사용 기간</td>
						<td>
							<select name="">
								<option value="">기간설정</option>
								<option value="">기간설정</option>
							</select>
							
							<input type="date" name="cou_start1">
							<select name="cou_start2">
								<option value="0">00:00</option>
								<option value="1">01:00</option>
							</select>
							
							<span> ~ </span>
							
							<input type="date" name="cou_end1">
							<select name="cou_end2">
								<option value="0">00:00</option>
								<option value="1">01:00</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>쿠폰적용 상품 선택</td>
						<td>
							<select name="">
								<option value="">모두적용</option>
								<option value="">원두</option>
								<option value="">커피믹스</option>
								<option value="">드립커피</option>
							</select>
						</td>
					</tr>
				</table>
			</form>
	
	
	
		</div>
	</section>
	
</body>
</html>