<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<title>修车人-会员中心-个人投票</title>
		<%@include file="../include/autoSNSBaseInclude.jsp" %>
		
	</head>
	<body>
		<form id="snsCoreForm">
		<c:set var="voteList" value="${voteList}"></c:set>
		<jsp:include page="xcr-head.jsp"></jsp:include>
		
<!--	隐藏域 开始	-->
		<div style="display: none;">
			<input type="text" label="发起选择结果" id="sendType" value=""/>
		</div>
<!--	隐藏域 结束	-->
		
		<div class="member-center">
			<%--左边 --%>
			<jsp:include page="left-menu.jsp">
				<jsp:param name="menu" value="my-trends" />
			</jsp:include>
			<%--左边end--%>
			<%--中间--%>
			<div class="mc-middle-layout fl">
				<%--我的动态 --%>
				<div>
					<div class="trends-layout">
						<div class="red-layout">
							我的动态
						</div>
					</div>
					<div class="to-share">
						<div class="fl">
							发起
						</div>
						<div class="fl ml10 pr">
							<div class="p-cursor" id="to-speak"><span id="share">一个消息</span> ▼
								<div class="to-speak none">
									<div class="menu-down" label="activity">活动</div>
									<div class="menu-down" label="vote">投票</div>
									<div class="menu-down" label="topic">话题</div>
									<div class="menu-down" label="hyperlink">链接</div>
									<div class="menu-down" label="message">消息</div>
								</div>
							</div>
						</div>
						<div class="fl ml10">
							给
						</div>
						<div class="fl ml10 pr">
							<div class="p-cursor" id="all-person">所有人 ▼
								<div class="all-person none">
									<div class="menu-down">所有人</div>
									<div class="menu-down">公司成员</div>
									<div class="menu-down">我的好友</div>
								</div>
							</div>
						</div>
						<div class="cb"></div>
					</div>
				<!--	填写消息	-->
					<div id="message">
						<textarea class="ui_textarea"
							style="width: 540px; box-shadow: 2px 2px 2px #DDDDDD;"></textarea>
					</div>
				<!--	填写消息 end	-->
				<!--	填写活动	-->
					<div id="activity" style="display: none;">
						<dl>活动标题：<input class="mini-textbox" name="scacTitle" id="scacTitle" class="w400" /> </dl>
						<dl>活动时间：<input name="scacDate" id="scacDate" type="text" size="20" 
                        		onclick="new Calendar().show(this);" readonly="readonly" /> </dl>
						<dl>活动地点：<input class="mini-textbox" name="scacPlace" id="scacPlace" class="w400"/> </dl>
						<dl>活动描述：
							<textarea class="mini-textarea" name="scacDesc" id="scacDesc"
								style="width: 540px; box-shadow: 2px 2px 2px #DDDDDD;"></textarea>
						</dl>
					</div>
				<!--	填写活动 end	-->
				<!--	填写投票	-->
					<div id="vote" style="display: none;">
						<dl>投票标题：<input class="mini-textbox" type="text" class="w400"  name="scvoTitle" id="scvoTitle" /> </dl>
						<textarea class="mini-textarea"
							style="width: 540px; box-shadow: 2px 2px 2px #DDDDDD;" name="scvoTitle" id="scvoTitle"></textarea>
					</div>
				<!--	填写投票 end	-->
				<!--	填写话题-->
					<div id="topic" style="display: none;">
						<dl>话题名称：<input class="mini-textbox" type="text" class="w400" name="sctoName" id="sctoName" /> </dl>
						话题内容：
						<textarea class="mini-textarea"
							style="width: 540px; box-shadow: 2px 2px 2px #DDDDDD;" name="sctoDesc" id="sctoDesc"></textarea>
					</div>
				<!--	填写话题 end	-->
				<!--	填写链接-->
					<div id="hyperlink" style="display: none;">
						<dl>链接标题：<input class="mini-textbox" type="text" class="w400" name="schyTitle" id="schyTitle" /> </dl>
						<dl>链接地址：<input class="mini-textarea" type="text" class="w400" name="schyHref" id="schyHref" /> </dl>
					</div>
				<!--	填写链接 end	-->
				<!--	发送按钮	-->
					<div>
						<a href="javascript:void(0);" class="release-btn fr" id="sendShare"></a>
					</div>
				<!--	发送按钮	 end-->
				</div>
				<div class="cb"></div>
				<%--我的动态end --%>
				<div class="ask-title mt20">
					<a class="title-name" href="javascript:showall();"> 全部 (10) <span
						class="gong-red"></span> </a>
					<a class="title-name" href="javascript:showactivity();"> 活动 (10) <span
						class="gong-red"></span> </a>
					<a class="title-name cur" href="javascript:showvote();"> 投票 (10) <span
						class="gong-red"></span> </a>
					<a class="title-name" href="javascript:showtopic();"> 话题 (10) <span
						class="gong-red"></span> </a>
					<a class="title-name" href="javascript:showhyperlink();"> 链接 (10) <span
						class="gong-red"></span> </a>
					<div class="cb"></div>
				</div>
				<c:forEach var="vote" items="${voteList}">
					<div class="other-content">
						<div class="fl">
							<img src="static/images/xcr/user-photo.png" width="60px"
								height="60px">
						</div>
						<div class="fl ml10">
							<div class="f14 ellipsis w480">
								<label class="blue-color fb f14">
									${vote.pubUserName}：
								</label>
								${vote.scvoTitle}
							</div>
							<div class="gray-color mt5">
								投票人数：xxxx人
								<a href="#" class="refresh ml10 blue-front">刷新</a>
							</div>
							<div class="vote-div">
								<div>
									苹果
								</div>
								<div>
									橘子
								</div>
								<div>
									芒果
								</div>
								<div>
									其他
								</div>
							</div>
							<div class="other-content-detail mt10">
								<div class="fl ">
									${vote.pubDate}
								</div>
								<div class="fr">
									<label class="mr15">
										<a href="blue-front">回复(${vote.replyNum})</a>
									</label>
									|
									<label class="ml15 mr15">
										<a href="blue-front">推荐(${vote.recommendNum})</a>
									</label>
									|
									<label class="ml15 mr15">
										<a href="blue-front">收藏(${vote.favoriteNum})</a>
									</label>
									|
									<label class="ml15">
										<a href="blue-front">删除</a>
									</label>
								</div>
							</div>
						</div>
						<div class="cb"></div>
					</div>
				</c:forEach>
				<div class="mb50">
					<a href="" class="search-more">查看更多</a>
				</div>
			</div>
			<%--中间end--%>
			<%--右边--%>
			<div class="fr right-layout">
				<div class="sign-in">
					<div class="blue-color fl">
						12.13
						<br />
						&nbsp;周四
					</div>
					<div class="weather-pic fl ml10"></div>
					<div class="sign-in-btn fl ml10"></div>
					<div class="blue-color fr fb">
						Day
						<br />
						&nbsp;&nbsp;1
					</div>
				</div>
				<div class="this-task">
					<div class="this-task-content">
						<div class="task-title">
							今日任务
						</div>
						<div class="task-detail">
							<ul>
								<li class="ri-ul">
									<a class="blue-front" href="">任务1</a>
								</li>
							</ul>
						</div>
					</div>
				</div>

				<div class="hot-topic">
					<%--未选中状态将click-htt remove掉 --%>
					<div class="hot-topic-title">
						<div class="fl htt cur">
							热门话题
							<div class="click-htt"></div>
						</div>
						<div class="line-fg fl"></div>
						<div class="fl htt ml10">
							关注话题
							<div class="click-htt"></div>
						</div>
						<div class="htt-refresh fr mr10"></div>
					</div>
					<div class="news-title">
						<ul>
							<li class="mb10">
								<p>
									<span class="fr">92222</span>
									<a class="font-ofh blue-front" href="">救护车逆行遭质疑救护车逆行遭质疑救护车逆行遭质疑救护车逆行遭质疑救护车逆行遭质疑</a>
								</p>
								<div class="arrow">
									<em class="S_line2_c">◆</em>
									<span class="S_bg1_c">◆</span>
								</div>
								<div class="news-content">
									网友质疑公车私用，你会绝对给救护车让路吗
								</div>
								<div class="news-ico"></div>
							</li>
							<li class="mb10">
								<p>
									<span class="fr">722222</span>
									<a class="font-ofh blue-front" href="">丰田今日遭到信誉危机</a>
								</p>
								<div class="arrow">
									<em class="S_line2_c">◆</em>
									<span class="S_bg1_c">◆</span>
								</div>
								<div class="news-content">
									网友质疑公车私用，你会绝对给救护车让路吗
								</div>
								<div class="news-ico"></div>
							</li>
							<li class="mb10">
								<p>
									<span class="fr blue-front"><a class="blue-front"
										href="">更多</a> </span>
									<a class="blue-front" href="">24小时热门微博</a>
								</p>

							</li>
						</ul>
					</div>
				</div>

				<div class="activities">
					<div class="activities-title fb f14">
						[活动] 成就梦想
					</div>
					<div class="activities-title-content">
						<div class="gray-color fb f14">
							有22222人对此感兴趣
						</div>
						<div class="mt10">
							<img src="${ctx}/AUTO/SNS/static/images/xcr/act-pic.png">
						</div>
						<div class="mt10">
							<a class="fl blue-front" href="">Lady..</a>
							<a class="fr attention" href=""></a>
							<div class="cb"></div>
						</div>
					</div>
				</div>

				<div class="activities">
					<div class="activities-title fb f14">
						帮助与反馈
					</div>
					<div class="activities-title-content">
						<div class="help-btn fl"></div>
						<div class="feedback-btn fr"></div>
						<div class="cb"></div>
					</div>
				</div>
			</div>
			<%--右边end--%>
			<div class="cb"></div>
		</div>
		<jsp:include page="xcr-foot.jsp"></jsp:include>
	</form>
	
	<script src="${ctx}/AUTO/SNS/MAIN/index.js" type="text/javascript"></script>
	<script src="${ctx}/AUTO/SNS/static/js/public.js" type="text/javascript"></script>
	
	<script type="text/javascript">
	var myDate = new Date();
	var year = myDate.getFullYear();
	var month = myDate.getMonth()+1;
	var day = myDate.getDate();
	var hours = myDate.getHours();
	var min = myDate.getMinutes();
	var sec = myDate.getSeconds();
	var datestr = year+"-"+month+"-"+day+" "+hours+":"+min+":"+sec;
	//发送按钮 发起信息
	$('#sendShare').click(function(){
		var result = "";
		var sendType = $('#sendType').val();
		
		if("activity"==sendType){//保存活动信息
			var form = new mini.Form("#snsCoreForm");
			var data = form.getData();      //获取表单多个控件的数据
			var json = mini.encode(data);   //序列化成JSON数组
			var scacDate = $('#scacDate').val();
			$.ajax({
			    url: "${ctx}/snsActivity/saveOrUpdateSnsCoreActivity.action",
			    type: "post",
			    data: { data: json, 
			    		scacDate: scacDate},
			    cache: false,
			    success: function (text) {
					var scacTitle = $('input[name=scacTitle]').val();
					var scacDate = $('input[name=scacDate]').val();
					var scacPlace = $('input[name=scacPlace]').val();
			    	result = getAddActivityCss('wy',scacTitle,scacDate,scacPlace);
			    	$('.ask-title').after(result);
			    	$('input[name=scacTitle]').val("");
			    	$('input[name=scacDate]').val("");
			    	$('input[name=scacPlace]').val("");
			    	$('input[name=scacDesc]').val("");
			    },
			    error: function (jqXHR, textStatus, errorThrown) {
		            alert(jqXHR.responseText);
		       	}
			});
			
			return;
		}else if("vote"==sendType){
			var form = new mini.Form("#snsCoreForm");
			var data = form.getData();      //获取表单多个控件的数据
			var json = mini.encode(data);   //序列化成JSON数组
			$.ajax({
			    url: "${ctx}/snsVote/saveOrUpdateSnsCoreVote.action",
			    type: "post",
			    data: { data: json, 
			    		scacDate: scacDate},
			    cache: false,
			    success: function (text) {
					var scacTitle = $('input[name=scacTitle]').val();
					var scacDate = $('input[name=scacDate]').val();
					var scacPlace = $('input[name=scacPlace]').val();
			    	result = getAddVoteCss('wsh',scacTitle,scacDate,scacPlace);
			    	$('.ask-title').after(result);
			    	$('input[name=scacTitle]').val("");
			    	$('input[name=scacDate]').val("");
			    	$('input[name=scacPlace]').val("");
			    	$('input[name=scacDesc]').val("");
			    },
			    error: function (jqXHR, textStatus, errorThrown) {
		            alert(jqXHR.responseText);
		       	}
			});
			
			return;
		}else if("topic"==sendType){
			var form = new mini.Form("#snsCoreForm");
			var data = form.getData();      //获取表单多个控件的数据
			var json = mini.encode(data);   //序列化成JSON数组
			$.ajax({
			    url: "${ctx}/snsTopic/saveOrUpdateSnsCoreTopic.action",
			    type: "post",
			    data: { data: json},
			    cache: false,
			    success: function (text) {
					var sctoName = $('input[name=sctoName]').val();
					var sctoDesc = $('input[name=sctoDesc]').val();
			    	result = getAddTopicCss('wy',sctoName,datestr,sctoDesc);
			    	$('.ask-title').after(result);
			    	$('input[name=sctoName]').val("");
			    	$('input[name=sctoDesc]').val("");
			    },
			    error: function (jqXHR, textStatus, errorThrown) {
		            alert(jqXHR.responseText);
		       	}
			});
			
			return;
		}else if("hyperlink"==sendType){
			var form = new mini.Form("#snsCoreForm");
			var data = form.getData();      //获取表单多个控件的数据
			var json = mini.encode(data);   //序列化成JSON数组
			$.ajax({
			    url: "${ctx}/snsHyperlink/saveOrUpdateSnsCoreHyperlink.action",
			    type: "post",
			    data: { data: json},
			    cache: false,
			    success: function (text) {
			    	var schyTitle = $('input[name=schyTitle]').val();
					var schyHref = $('input[name=schyHref]').val();
			    	result = getAddHyperlinkCss('wy',schyTitle,datestr,schyHref);
			    	$('.ask-title').after(result);
			    	$('input[name=schyTitle]').val("");
			    	$('input[name=schyHref]').val("");
			    },
			    error: function (jqXHR, textStatus, errorThrown) {
		            alert(jqXHR.responseText);
		       	}
			});
			
			return;
		}else if("message"==sendType){
			var form = new mini.Form("#snsCoreForm");
			var data = form.getData();      //获取表单多个控件的数据
			var json = mini.encode(data);   //序列化成JSON数组
			$.ajax({
			    url: "${ctx}/snsMessage/saveOrUpdateSnsCoreMessage.action",
			    type: "post",
			    data: { data: json},
			    cache: false,
			    success: function (text) {
					var schyTitle = $('input[name=schyTitle]').val();
					var schyHref = $('input[name=schyHref]').val();
			    	result = getAddMessageCss('wy',schyTitle,datestr,schyHref);
			    	$('.ask-title').after(result);
			    	$('input[name=schyTitle]').val("");
			    	$('input[name=schyHref]').val("");
			    },
			    error: function (jqXHR, textStatus, errorThrown) {
		            alert(jqXHR.responseText);
		       	}
			});
			return;
		}
	});
	//发起投票CSS
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

		return result;
	}


	//发起活动CSS
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
	function showall(){
		var action = "${ctx}/snsCore/getMyDynamicInfo.action";
		document.forms[0].action = action;
		document.forms[0].submit();
	}
	function showactivity(){
		var action = "${ctx}/snsCore/getMyDynamicActivityInfo.action";
		document.forms[0].action = action;
		document.forms[0].submit();
	}
	function showvote(){
		var action = "${ctx}/snsCore/getMyDynamicVoteInfo.action";
		document.forms[0].action = action;
		document.forms[0].submit();
	}
	function showtopic(){
		var action = "${ctx}/snsCore/getMyDynamicTopicInfo.action";
		document.forms[0].action = action;
		document.forms[0].submit();
	}
	function showhyperlink(){
		var action = "${ctx}/snsCore/getMyDynamicHyperlinkInfo.action";
		document.forms[0].action = action;
		document.forms[0].submit();
	}
	
	</script>
	</body>
</html>
