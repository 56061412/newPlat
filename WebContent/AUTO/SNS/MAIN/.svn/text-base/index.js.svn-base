//发起选择
$('.to-speak').find('.menu-down').live('click',function(){
	$('.to-speak').find('.menu-down').each(function(){
		var label = $(this).attr('label');
		$('#'+label).hide();
	});
	
	var text = "一个"+$(this).text();
	var label = $(this).attr('label');
	$('#'+label).show();
	$("#share").text(text);

	$('#sendType').val(label);
});

$("#to-speak").hover(
  function () {
    $(".to-speak").removeClass("none");
  },
  function () {
    $(".to-speak").addClass("none");
  }
); 

$("#all-person").hover(
  function () {
    $(".all-person").removeClass("none");
  },
  function () {
    $(".all-person").addClass("none");
  }
);

//发起活动CSS
function getAddActivityCss(pubUserName, title, date, place){
	$('.pt20').each(function(){
		$(this).removeClass("pt20");
		$(this).addClass("other-content");
	});
	
	var result = "<div class=\"pt20\">";
	
	result += "<div class=\"fl\">";
	result += "<img src=\"${ctx}/AUTO/SNS/static/images/xcr/user-photo.png\" width=\"60px\" height=\"60px\" />";
	result += "</div>";
	
	result += "<div class=\"fl ml10\">";
	
	result += "<div class=\"f14 ellipsis w480\">";
	result += "<label class=\"blue-color fb f14\">";
	result += pubUserName;//pubUsrName
	result += "</label>";
	result += "："+title;
	result += "</div>";
	
	result += "<div class=\"mt5 gray-color\">";
	result += "活动时间："+date;
	result += "</div>";
	
	result += "<div class=\"mt5 gray-color\">";
	result += "活动地点："+place;
	result += "</div>";
	
	result += "<div class=\"ask-details mt5\">";
	result += "<div class=\"fl gray-color\">";
	result += "&nbsp;";
	result += "</div>";
	result += "<div class=\"fr\">";
	result += "<label class=\"mr15\">";
	result += "<a href=\"javascript:void(0);\" class=\"blue-front\">回复(0)</a>";
	result += "</label>";
	result += "|";
	result += "<label class=\"ml15 mr15\">";
	result += "<a href=\"javascript:void(0);\" class=\"blue-front\">推荐(0)</a>";
	result += "</label>";
	result += "|";
	result += "<label class=\"ml15 mr15\">";
	result += "<a href=\"javascript:void(0);\" class=\"blue-front\">关注(0)</a>";
	result += "</label>";
	result += "|";
	result += "<label class=\"ml15\">";
	result += "<a href=\"javascript:void(0);\" class=\"blue-front\">删除</a>";
	result += "</label>";
	result += "</div>";
	result += "</div>";
	result += "</div>";
	result += "</div>";
	
	//回复输入框
	result += "<div class=\"ask-text\">";
	result += "<textarea class=\"ask-textarea\"  name=\"\" rows=\"\" cols=\"\"></textarea>";
	result += "</div>";
	result += "<div class=\"pt10\">";
	result += "<div class=\"pic-up fl\"></div>";
	result += "<div class=\"commit-btn fr\"></div>";
	result += "<div class=\"cb\"></div>";
	result += "</div>";
	
	return result;
}

//发起投票CSS
function getAddVoteCss(pubUserName, scvoTitle, pubDate, place){
	$('.pt20').each(function(){
		$(this).removeClass("pt20");
		$(this).addClass("other-content");
	});
	
	var result = "<div class=\"other-content\">";
	result += "<div class=\"fl\">";
	result += "<img src=\"static/images/xcr/user-photo.png\" width=\"60px\" height=\"60px\">";
	result += "</div>";
	result += "<div class=\"fl ml10\">";
	result += "<div class=\"f14 ellipsis w480\">";
	result += "<label class=\"blue-color fb f14\">";
	result += pubUserName+":";
	result += "</label>";
	result += scvoTitle;
	result += "</div>";
	result += "<div class=\"gray-color mt5\">";
	result += "投票人数：xxxx人";
	result += "<a href=\"#\" class=\"refresh ml10 blue-front\">刷新</a>";
	result += "</div>";
	result += "<div class=\"vote-div\">";
	result += "<div>";
	result += "苹果";
	result += "</div>";
	result += "<div>";
	result += "橘子";
	result += "</div>";
	result += "<div>";
	result += "芒果";
	result += "</div>";
	result += "<div>";
	result += "其他";
	result += "</div>";
	result += "</div>";
	result += "<div class=\"other-content-detail mt10\">";
	result += "<div class=\"fl \">";
	result += pubDate;
	result += "</div>";
	result += "<div class=\"fr\">";
	result += "<label class=\"mr15\">";
	result += "<a href=\"blue-front\">回复(0)</a>";
	result += "</label>";
	result += "|";
	result += "<label class=\"ml15 mr15\">";
	result += "<a href=\"blue-front\">推荐(0)</a>";
	result += "</label>";
	result += "|";
	result += "<label class=\"ml15 mr15\">";
	result += "<a href=\"blue-front\">收藏(0)</a>";
	result += "</label>";
	result += "|";
	result += "<label class=\"ml15\">";
	result += "<a href=\"blue-front\">删除</a>";
	result += "</label>";
	result += "</div>";
	result += "</div>";
	result += "</div>";
	result += "<div class=\"cb\"></div>";
	result += "</div>";

	return result;
}

//发起话题CSS
function getAddTopicCss(pubUserName, sctoName, date, sctoDesc){
	$('.pt20').each(function(){
		$(this).removeClass("pt20");
		$(this).addClass("other-content");
	});
	
	var result = "<div class=\"other-content\">";
	result += "<div class=\"fl\">";
	result += "<img src=\"static/images/xcr/user-photo.png\" width=\"60px\"";
	result += "height=\"60px\">";
	result += "</div>";
	result += "<div class=\"fl ml10\">";
	result += "<div class=\"f14 ellipsis w480\">";
	result += "<label class=\"blue-color fb f14\">";
	result += pubUserName+":";
	result += "</label>";
	result += sctoName;
	result += "</div>";
	result += "<div class=\"mt5 gray-color\">";
	result += "话题内容："+sctoDesc;
	result += "</div>";
	result += "<div class=\"ask-details mt5\">";
	result += "<div class=\"fl gray-color\">";
	result += date;
	result += "</div>";
	result += "<div class=\"fr\">";
	result += "<label class=\"mr15\">";
	result += "<a href=\"javascript:void(0);\" class=\"blue-front\">回复(0)</a>";
	result += "</label>";
	result += "|";
	result += "<label class=\"ml15 mr15\">";
	result += "<a href=\"javascript:void(0);\" class=\"blue-front\">推荐(0)</a>";
	result += "</label>";
	result += "|";
	result += "<label class=\"ml15 mr15\">";
	result += "<a href=\"javascript:void(0);\" class=\"blue-front\">收藏(0)</a>";
	result += "</label>";
	result += "|";
	result += "<label class=\"ml15\">";
	result += "<a href=\"javascript:void(0);\" class=\"blue-front\">删除</a>";
	result += "</label>";
	result += "</div>";
	result += "</div>";
	result += "</div>";
	result += "<div class=\"cb\"></div>";
	result += "</div>";

	return result;
}


//发起连接CSS
function getAddHyperlinkCss(pubUserName, title, date, schyHref){
	$('.pt20').each(function(){
		$(this).removeClass("pt20");
		$(this).addClass("other-content");
	});
	
	var result = "<div class=\"other-content\">";
	result += "<div class=\"fl\">";
	result += "<img src=\"static/images/xcr/user-photo.png\" width=\"60px\"";
	result += "height=\"60px\">";
	result += "</div>";
	result += "<div class=\"fl ml10\">";
	result += "<div class=\"f14 ellipsis w480\">";
	result += "<label class=\"blue-color fb f14\">";
	result += pubUserName+":";
	result += "</label>";
	result += title;
	result += "</div>";
	result += "<div class=\"mt5 gray-color\">";
	result += "连接地址：<a href=\"http://"+schyHref+"\">"+schyHref+"</a>";
	result += "</div>";
	result += "<div class=\"ask-details mt5\">";
	result += "<div class=\"fl gray-color\">";
	result += date;
	result += "</div>";
	result += "<div class=\"fr\">";
	result += "<label class=\"mr15\">";
	result += "<a href=\"javascript:void(0);\" class=\"blue-front\">回复(0)</a>";
	result += "</label>";
	result += "|";
	result += "<label class=\"ml15 mr15\">";
	result += "<a href=\"javascript:void(0);\" class=\"blue-front\">推荐(0)</a>";
	result += "</label>";
	result += "|";
	result += "<label class=\"ml15 mr15\">";
	result += "<a href=\"javascript:void(0);\" class=\"blue-front\">收藏(0)</a>";
	result += "</label>";
	result += "|";
	result += "<label class=\"ml15\">";
	result += "<a href=\"javascript:void(0);\" class=\"blue-front\">删除</a>";
	result += "</label>";
	result += "</div>";
	result += "</div>";
	result += "</div>";
	result += "<div class=\"cb\"></div>";
	result += "</div>";

	return result;
}


