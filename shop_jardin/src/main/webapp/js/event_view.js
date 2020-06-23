/**
 * 
 */
// html 페이지 모두 호출 후에 jquery실행
$(function(){		
	getComment_list();		
});

// 댓글 수정
function comment_update(){
	$.ajax({
		type:'post',
		url:'./comment_update',
		data:$('#commentListForm').serialize(),	//	form에 있는 input값 controller로 전송
		success:function(data){
			
			if(data == 'success'){
				alert('update 성공');
				getCommnet_list();
			}
		},
		error:function(request, status, error){
			alert('실패 : ' + error);
		}

	});
}


// 댓글 수정 취소
function comment_cancel(cId){
	getComment_list();	
}


// 댓글 폼 생성
function comment_updateForm(cId, cContent){
	alert('폼 확인');
	var html = "<td>";		
	html += "<input type='text' id='cContent' name='cContent' value=\'" + cContent + "\' />";
	html += "<input type='hidden' id='cId' name='cId' value=\'" + cId + "\' />";
	html += "</td>";
	
	html += "<td><a href='#' onclick=\'comment_update(" + cId + ")\'>완료 </a>";
	html += "<a href='#' onclick=\'comment_cancel(" + cId + ")\'> 취소</a>";
	html += "</td></tr>";
	
	$('#updateForm' + cId).html(html);
}



// 댓글 등록
function comment_insert(){
	$.ajax({
		type:'post',
		url:'./comment_insert',
		data:$('#formTable').serialize(),	//	form에 있는 input값 controller로 전송
		success:function(data){
			
			if(data == 'success'){
				alert('insert 성공');
				getCommnet_list();
			}
		},
		error:function(request, status, error){
			alert('실패 : ' + error);
		}

	});
}


// 댓글 삭제
function comment_delete(cId){
	$.ajax({
		type:'post',
		url:'./comment_delete',
		data:{cId:cId },
		success:function(data){
			alert('댓글번호 : ' + cId);
			
			if(data == 'success'){
				alert('delete 성공');
				getComment_list();
			}
		},
		error:function(request, status, error){
			alert('실패 : ' + error);
		}
		
		
	});
}

var page = document.getElementById('page');
var e_code = document.getElementById('e_code');

// 댓글 리스트 출력
function getComment_list(page, e_code){	//	이 스크립트는 댓글 리스트를 불러옵니다
	console.log(page);
	console.log(e_code);
	$.ajax({
		type:'get',
		url:'./event_comment',
		dataType:'json',
// 			data: {bId:25}, 특정 값을 넘겨줄때
// 			data: $(#topTable).serialize() // 폼에 있는 모든 데이터를 넘겨줄때
//		<input type="hidden" value="${event_view.e_code }" name="e_code">
//		<input type="hidden" value="${page }" name="page">
		data : { page : page, e_code: e_code  },
		contentType:'application/json; charset=UTF-8;',
		success:function(data){	// data에 값이 담김
			alert('list 성공');
			var html="";
			var cCnt = data.length;	// list개수를 확인할 수 있음
		
// 				html = html + data.length;
			$('.orange').html(cCnt);
			
			if(data.length>0){
				for(var i=0; i<data.length; i++){
					html += "<ul>";
					html += "<fmt:formatDate var='ec_wdate1' value=\'" + data[i].ec_wdate + "\' pattern='yyyy/MM/dd' />";
					html += "<fmt:formatDate var='ec_wdate2' value=\'" + data[i].ec_wdate + "\' pattern='HH:mm:ss' />";
					html += "<li class='name'>\'" + data[i].id + "\'<span>[${ec_wdate1 }  ${ec_wdate2 }]</span></li>";
					html += "<li class='txt'>" + data[i].ec_content + "</li>";
					html += "</ul>";
				}
			}else{
				html += "<li class='name'></li>";
				html += "<li class='txt'>등록된 댓글이 없습니다.</li>";
			}
			// ECommentService
//			list = dao.event_comment(e_code, startrow, endrow);
			
			console.log(html);
			$('#commentViewForm').html(html)
			
		},
		error:function(request, status, error){
			alert('실패' + error);
		}			
	});

}


//
$(document).ready(function(){
	//댓글수정열기
	$("${e_com.ec_num }").click(function(){
		var index = $(".modi").index(this);
		$(this).parents('ul');
		$(this).parents('ul').hide();
		$("${e_com.ec_num }").eq(index).show(); // 0
//		$(".comment_modifyM").not(index).hide(); // 1, 2
//		$(".modi").not(index).parent().show();

	});
	$(".reset_re").click(function(){	
		var index2 = $(".reset_re").index(this);
		$(".comment_modifyM").eq(index2).hide();
		var test2 = $(".modi").eq(index2).parents('ul');
		$(".modi").eq(index2).parents('ul').show();
	});	

	// 수정 submit
	$('.s_modi').click(function() {
		var index = $(".s_modi").index(this);
		var form = $(this).parents('form');
		$(form).submit();
	});
	
	// 삭제 submit
	$('.delComm').click(function() {
		var result = confirm('댓글을 삭제 하시겠습니까?');
		if(result){
			var index = $(".delComm").index(this);
			var form = $(this).parents('form');
			$(form).submit();			
		}else{
			
		}	
	});
	
	// 로그인하지 않고 댓글을 작성하려고 할 때
	$('.emptySe').click(function(){
		var result = confirm('댓글을 작성하시려면 로그인 하셔야 합니다. 로그인 하시겠습니까?');
		if(result){
//			window.location.replace('/ex/member/login');
			location.href='../member/login?returnUrl=' + encodeURIComponent(location);
		}else{
			
		}				
	});
	
//	<a href="#none" onclick="location.href='/member/login.html?returnUrl=' + encodeURIComponent(location) ">로그인</a>	
	
	
	
});

