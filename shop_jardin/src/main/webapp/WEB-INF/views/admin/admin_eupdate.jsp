<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/admin_nwrite.css">
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
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
	$("#e_file1").change(function() {
		$('#e_oldfile1').val($('#e_file1').val());
	});
	
	$("#e_file2").change(function() {
		$('#e_oldfile2').val($('#e_file2').val());
	});
	
});
</script>
<style type="text/css">
#e_file1,#e_file2{display: none;}
.eoldfile_label{display:block; float: left;}
.efile_label{display:inline-block; width: 100px; height: 25px; background: #efefef; margin-left: 10px;}
.fileadd{font-size: 16px; font-weight: normal; padding-left: 18px; line-height: 25px;}

</style>
</head>
<body>
	<jsp:include page="admin_header.jsp"/>
	<!-- --------------------------------------------------------------------------------------------------------------------------- -->
	<div id="n_write">
	<p>이벤트 수정</p><hr><br><br>
	<form action="" name="" method="post" enctype="multipart/form-data">
		<input type="hidden" name="" value="">
		<label for="">작성자<input type="" name="" id="" value="" readonly></label><br>
		<label for="">제목<input type="" name="" id="" value=""></label><br>
		<div id="content_wrap">
		<img src="" id=""><br>
		<img src="" id="">
		<label for=""><textarea rows="50" cols="120" name="e_content" id=n_content>
		${eview.se_content }</textarea></label><br>
		</div>
		<div id="e_calender">
		<label for="e_sdate" id=e_sdatel>시작일<input type="date" name="e_sdate" id="e_sdate" value="${eview.se_sdate }"></label>
		<label for="e_edate" id=e_edatel> ~ 종료일<input type="date" name="e_edate" id="e_edate" value="${eview.se_edate }"></label>
		</div>
		<div id="e_files">
		<label for="e_oldfile1" class="eoldfile_label">썸네일: <input type="text" value="${eview.se_file1 }" id="e_oldfile1" readonly></label>
		<label for="e_file1" class="efile_label"><span class="fileadd">파일첨부</span><input type="file" name="e_file1" id="e_file1" multiple ></label><br>
		 
		<label for="e_oldfile2" class="eoldfile_label">본문: <input type="text" value="${eview.se_file2 }" id="e_oldfile2" readonly></label>
		<label for="e_file2" class="efile_label"><span class="fileadd">파일첨부</span><input type="file" name="e_file2" id="e_file2" multiple ></label>
		</div>
		<div id="n_write_btn">
		<input type="submit" value="수정" >
		<input type="button" value="취소" onclick="history.back()">
		</div>
	</form>
	</div>
</body>
</html>