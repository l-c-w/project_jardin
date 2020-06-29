<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/admin_nwrite.css">
<link rel="stylesheet" type="text/css" href="../css/admin_coupon.css" />
<link rel="stylesheet" type="text/css" href="../css/admin_account.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="../js/prefixfree.dynamic-dom.min.js"></script>
<script type="text/javascript" src="../js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="../js/idangerous.swiper-2.1.min.js"></script>
<script type="text/javascript" src="../js/jquery.anchor.js"></script>
<script type="text/javascript" src="../js/admin_coupon.js"></script>
<script type="text/javascript">


var check=0;
$(function() {
    $("#e_file1").on('change', function(){
    	check=1;
        readURL(this);
    });
    
    $("#e_file2").on('change', function(){
    	check=2;
        readURL(this);
    });
});

function readURL(input) {
    if (input.files && input.files[0]) {
    var reader = new FileReader();
	
    reader.onload = function (e) {
    	if(check==1){
            $('#file1_pre').attr('src', e.target.result);
            $("#file1_pre").show();
        }
    	if(check==2){
            $('#file2_pre').attr('src', e.target.result);
            $("#file2_pre").show();
        }
    		
    	}

      reader.readAsDataURL(input.files[0]);
    }
}

$(document).ready(function() {
	$("#file1_pre").hide();
	$("#file2_pre").hide();
	
});


</script>
</head>
<body>
	<%@include file="admin_header.jsp" %>
	
	<!-- --------------------------------------------------------------------------------------------------------------------------- -->
	<section id="ew_section">
		<div id="n_write">
		<p>이벤트 작성</p><hr><br><br>
		<form action="admin_ewriteDo" name="s_event" method="post">
		
<!-- 			<label for="n_writer">작성자<input type="text" name="e_writer" id="n_writer"></label><br> -->
			<label for="n_title" class="sub_title">제목<input type="text" name="e_title" id="n_title"></label><br>
			
			<span class="sub_title">이벤트 타입 : </span>
			<select name="e_type">
				<option value="dis">할인</option>
				<option value="win">당첨</option>
				<option value="coup">쿠폰</option>
			</select>
			<br>
			<span class="sub_title">적용 카테고리 : </span>
			<select name="e_apply">
				<c:forEach var="pdto" items="${pdto }">
					<option value="${pdto.p_category }">${pdto.p_category }</option>
				</c:forEach>
			</select>
			
			<div id="content_wrap">
				<img src="#" id="file1_pre"><br>
				<img src="#" id="file2_pre">
				<label for="n_content"><textarea rows="50" cols="120" name="e_content" id=n_content></textarea></label><br>
			</div>
			<div id="e_calender">
				<label for="e_sdate" id=e_sdatel>시작일<input type="date" name="e_start" id="e_sdate"></label>
				<label for="e_edate" id=e_edatel>&nbsp;~&nbsp;종료일<input type="date" name="e_end" id="e_edate"></label>
			</div>
			<div id="e_files">
				<label for="e_file1">썸네일: <input type="file" name="e_file1" id="e_file1"  ></label><br>
				<label for="e_file2">본문: <input type="file" name="e_file2" id="e_file2"  ></label><br>
				<label for="e_file3">본문2: <input type="file" name="e_file3" id="e_file3"  ></label><br>
			</div>
			<div id="n_write_btn">
				<input type="submit" value="작성" >
				<input type="button" value="취소" onclick="history.back()">
			</div>
		</form>
		</div>
	</section>	
	
</body>
</html>