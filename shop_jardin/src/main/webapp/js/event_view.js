/**
 * 
 */





$(document).ready(function(){
	//댓글수정열기
	$(".modi").click(function(){
		var index = $(".modi").index(this);
		console.log(index);
		$(this).parent().hide();
		$(".comment_modifyM").eq(index).show();
		$(".modi").not(index).parent().show();
	});
	$(".reset_re").click(function(){
		var index2=$(".reset_re").index(this);
		$(".comment_modifyM").eq(index2).hide();
		$(".modi").eq(index2).parent().show();
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

