$("#search").focus(function() {
	var temp = $(this).val();
	if("搜活动 搜投票 搜任务 搜话题"==temp){
		$(this).val("");
	}
});
$("#search").blur(function() {
	var temp = $(this).val();
	if(""==temp){
		$(this).val("搜活动 搜投票 搜任务 搜话题");
	}
});
$('.title-name').click(function(){
	$(this).siblings().removeClass('cur');
	$(this).addClass('cur');
});
$('.htt').click(function(){
	$(this).siblings('.htt').removeClass('cur');
	$(this).addClass('cur');
});

$(".dc-content a").click(function(){
	$(".dc-content").removeClass("cur");
	$(".dc-content a").removeClass("dc-click-a");
	$(".dc-content a").addClass("dc-content-a hove");
	$(this).removeClass("dc-content-a hove");
	$(".dc-content").addClass("cur");
	$(this).addClass("dc-click-a");
});
			
//默认状态
$(".reply-btn").each(function(i){
	$(this).click(function(){
		$('.ask-for-box').hide();
		$('.ask-for-box').eq(i).show();
	});
});