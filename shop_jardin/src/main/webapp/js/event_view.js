/**
 * 
 */

$(document).ready(function() {

	$('.rebtn').click(function(){
		
		var index = $(".rebtn").index(this); // index 구하기
		
		$(".rebtn").eq(index).val(); // index로 불러오기
		
		$("#test").val('index');
		
	});
	
});

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
