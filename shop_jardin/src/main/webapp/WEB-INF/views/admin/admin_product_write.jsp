<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%>
	<jsp:useBean id="sysdate" class="java.util.Date"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/admin_main.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
<link rel="stylesheet" href="../css/admin_notice.css">
<link rel="stylesheet" href="../css/admin_account.css">
<script type="text/javascript" src="../js/admin_Leftmenu.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="se2/admin/js/HuskyEZCreator.js" charset="utf-8"></script> 
<script type="text/javascript" src="admin/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<!-- <!-- 페이지 로딩시 초기화 --> 
		<script>
		
		 $(document).ready(function(){ //페이지 로딩시 실행
				
			//넘어온 value 넣어주기		
			//case
			
			//#p_category = select id
			$("#p_category option").each(function(){ //select box의 옵션을 전부 들고와서 for문처럼 돌림
			    if($(this).val()=="${p_category}"){ //이 옵션의 값이 넘어온 값과 같다면
			      $(this).prop("selected","selected"); // attr적용안될경우 prop으로 
			      $(".case").css("display", "none");
					$("#${p_category}").css("display", "block");
			    }
			});
			
			//case2
			$(".case option").each(function(){
			    if($(this).val()=="${p_case}"){
			      $(this).prop("selected","selected"); // attr적용안될경우 prop으로 
			    }
			});
			
				
		}); 
		
		
		function aa(val) {
		//category의 value와 case의 id와 일치한 애들을 class를 빼준다.(일단 전부 넣어주고 나서)
		var case2 = document.getElementsByClassName("case");
		var option = document.getElementById(val);
		

		$(".case").css("display", "none");
		$(".case").removeAttr("name");
		
		$(option).css("display", "inherit");
		$(option).attr("name", "p_case")
		}
		
		function point_change(val) {
			var point = val*0.01;
			$("#point").val(point);
		}
		
		</script> 
		<style type="text/css">
			#input_form{
			margin: 20px;	
			}
			table {
				margin:0 auto;
			    min-width: 1000px;
			}
			
			table tr td:NTH-OF-TYPE(1) {
				width: 200px;
				height: 30px;
			}
			#btn_div{
			 text-align: center;
			}
			.case{
 				display : none;
 				text-align: center;
			}
			.select_img img { margin: 20px 0;}
		</style>
</head>
<body>
	<jsp:include page="admin_header.jsp" />
	<section>
		<h1>상품 등록</h1>
		<form action="admin_product_write" name="inputform" method="post" enctype="multipart/form-data">
			<div id="input_form">
				<table border="1">
					<tr>
						<td>카테고리</td>
						<td>
						<select name="p_category" id="p_category" onchange="aa(this.value)">
								<option value="원두">원두</option>
								<option value="커피 백">커피 백</option>
								<option value="아이스 음료">아이스 음료</option>
								<option value="인스턴트 커피">인스턴트 커피</option>
								<option value="티 음료">티 음료</option>
						</select>
						</td>
					</tr>
					<tr>
						<td>분류</td>
						<td>
						<select id="원두" class="case" name="p_case" style="display: inline;">
								<option value="클래스">클래스</option>
								<option value="바리스타">바리스타</option>
								<option value="마스터즈">마스터즈</option>
								<option value="데일리 로스팅">데일리 로스팅</option>
						</select> 
						<select id="인스턴트 커피" class="case">
								<option value="카페모리">카페모리</option>
								<option value="에스프레소 스틱라떼">에스프레소 스틱라떼</option>
								<option value="에스프레소 스틱">에스프레소 스틱</option>
						</select> 
						<select id="커피 백" class="case">
								<option value="커피 백">커피 백</option>
								<option value="핸드 드립">핸드 드립</option>
								<option value="마일드 커피 백">마일드 커피 백</option>
						</select> 
						<select id="아이스 음료" class="case">
								<option value="시그니처">시그니처</option>
								<option value="카페리얼">카페리얼</option>
						</select> 
						<select id="티 음료" class="case">
								<option value="아워 티">아워 티</option>
								<option value="아워 티 pet">아워 티 pet</option>
								<option value="카페리얼 티 라떼">카페리얼 티 라떼</option>
						</select>
						</td>
					</tr>
					<tr>
					<td>분류2</td>
						<td>
						<select id="유형" class="case2" name="p_case2" style="display: inline;">
								<option value="인기상품">인기상품</option>
								<option value="신상품">신상품</option>
								<option value="테스트">미스터즈</option>
								<option value="테스트">데일리 로스팅</option>
						</select> 
						</td>
					</tr>
					<tr>
						<td>제품명</td>
						<td><input type="text" name="p_name" maxlength="40"></td>
					</tr>
					<tr>
						<td>가격</td>
						<td><input type="text" name="p_price"
							onchange="point_change(this.value)" max="9999999"></td>
					</tr>
					<tr>
						<td>포인트</td>
						<td><input type="text" name="p_point" id="point" readonly></td>
					</tr>
					<tr>
						<td>제조원</td>
						<td><input type="text" name="p_producer" maxlength="10"></td>
					</tr>
					<tr>
						<td>유통기한</td>
						<td><input type="text" name="p_expiry" maxlength="10"></td>
					</tr>
					<tr>
						<td>식품유형</td>
						<td><input type="text" name="p_type" maxlength="10"></td>
					</tr>
					<tr>
						<td>용량</td>
						<td><input type="text" name="p_capacity" maxlength="10"></td>
					</tr>
					<tr>
						<td>원재료명 및 함량</td>
						<td><input type="text" name="p_detail" maxlength="350"></td>
					</tr>
					<tr>
						<td>업소명 및 소재지</td>
						<td><input type="text" name="p_location" maxlength="50"></td>
					</tr>
					<tr>
						<td>유전자 재조합 유무</td>
						<td>예<input type="radio" name="p_gene" value="유전자 재조합 상품">&nbsp;&nbsp;&nbsp;
							아니오<input type="radio" name="p_gene" value="해당사항없음">
						</td>
					</tr>
					<tr>
						<td>수입식품 여부</td>
						<td>예<input type="radio" name="p_import" value="수입식품">&nbsp;&nbsp;&nbsp;
							아니오<input type="radio" name="p_import" value="해당사항없음">
						</td>
					</tr>
					<tr>
						<td>재고</td>
						<td><input type="text" name="p_stock" max="99999"></td>
					</tr>
					<tr>
						<td>제품 대표이미지</td>
						<td><input type="file" id="p_img1" name="p_img1"><div class="select_img" ><img src=""></div></td>
					</tr>
					<tr>
						<td>제품 이미지1</td>
						<td><input type="file" id="p_img2" name="p_img2"><div class="select_img2" ><img src=""></div></td>
					</tr>
					<tr>
						<td>제품 이미지2</td>
						<td><input type="file" id="p_img3" name="p_img3"><div class="select_img3" ><img src=""></div></td>
					</tr>
					<tr>
						<td>상세내용 이미지</td>
						<td><input type="file" id="p_content_img" name="p_content_img"><div class="select_img4" ><img src=""></div></td>
					</tr>
					<tr>
						<td>판매 여부</td>
						<td>예<input type="radio" name="p_delflag" value="Y">&nbsp;&nbsp;&nbsp;
							아니오<input type="radio" name="p_delflag" value="N">
						</td>
					</tr>
				</table>
			 <script>
			  $("#p_img1").change(function(){
			   if(this.files && this.files[0]) {
			    var reader = new FileReader;
			    reader.onload = function(data) {
			     $(".select_img img").attr("src", data.target.result).width(100);        
			    }
			    reader.readAsDataURL(this.files[0]);
			   }
			  });
			  $("#p_img2").change(function(){
				   if(this.files && this.files[0]) {
				    var reader = new FileReader;
				    reader.onload = function(data) {
				     $(".select_img2 img").attr("src", data.target.result).width(100);        
				    }
				    reader.readAsDataURL(this.files[0]);
				   }
				  });
			  $("#p_img3").change(function(){
				   if(this.files && this.files[0]) {
				    var reader = new FileReader;
				    reader.onload = function(data) {
				     $(".select_img3 img").attr("src", data.target.result).width(100);        
				    }
				    reader.readAsDataURL(this.files[0]);
				   }
				  });
			  $("#p_content_img").change(function(){
				   if(this.files && this.files[0]) {
				    var reader = new FileReader;
				    reader.onload = function(data) {
				     $(".select_img4 img").attr("src", data.target.result).width(100);        
				    }
				    reader.readAsDataURL(this.files[0]);
				   }
				  });
			 </script>
			 <%=request.getSession().getServletContext().getRealPath("/resources/imgUpload") %>
			</div>
				<div id="btn_div">
					<button type="reset" onclick="history.back(-1)">취소</button>
					<button type="submit" value="등록">등록</button>
				</div>
		</form>
	</section>
</body>
</html>