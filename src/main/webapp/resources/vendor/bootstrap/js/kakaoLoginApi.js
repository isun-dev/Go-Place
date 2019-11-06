$(function(){
	$(".kakao").click(function(){
		$('#myModalKakaoLogin').modal();
	});
});

$(function(){
	$("#userSearchKeyword").click(function(){
		var userSearchKeyword = $("#search").val();
		location.href="naversearch/"+ userSearchKeyword;
	});
	});
		
				
				
				
				