/**
 * 
 */
function commentOk(){	
	var form = document.getElementById('comm_modi');
	form.submit();
}

$(document).ready(function(){
	//댓글수정열기
	$(".modi").click(function(){
		var index = $(".modi").index(this);
		var test = $(this).parents('ul');
		$(this).parents('ul').hide();
		$(".comment_modifyM").eq(index).show();
		$(".modi").not(index).parent('ul').show();
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
		var test = $(this).parents('ul');
		$(this).parents('ul').hide();
		
		$('#target').submit();
	});
	
});


//$(document).ready(function() {
//
//	$('a#modi_btn').click(function(){
//		
//		alert('testtest');
//		$('p#test').val('hello');
		
//		var index = $('.rebtn').index(this); 
		
		
//		$('.rebtn:eq(' + index + ')').attr('test','hello');
		
//		$(".rebtn").eq(index).val(); // index로 불러오기
//		
//		$("#test").val('index');
		
//	});
//	
//});

// $('#coModi').hide();
//	
// $('#modi_btn').click(function(){
// $('#coModi').show();
// $('#coSub').hide();
// });

// $('#sub_btn').click(function(){
// $('#coModi').hide();
// $('#coSub').show();
// });

