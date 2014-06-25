<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html>

<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<title>修车人-会员中心-个人全部</title>
		<%@include file="../include/autoSNSBaseInclude.jsp" %>
		
	</head>
	<body>
		<form id="snsCoreForm">
		<c:set var="activityList" value="${activityList}"></c:set>
		
		<input type="hidden" id="checktype" value="${checktype}" />
		
		
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
					<%@ include file="/AUTO/SNS/POST/addPost.jsp"%>				
					<div class="cb"></div>				
					<%@ include file="/AUTO/SNS/POST/listMyPost.jsp"%>
				</div>
			</div>
			<%--中间end--%>
			<%--右边--%>
			<div class="fr right-layout">
				<div class="sign-in">					
					<%@ include file="/AUTO/SNS/MAIN/dateSign.jsp"%>
				</div>
				<div class="this-task">
					<div class="this-task-content">
						<div class="task-title">
							今日任务
						</div>
						<%@ include file="/AUTO/SNS/TASK/todayTask.jsp"%>
					</div>
				</div>

				<div class="hot-topic">
					<%@ include file="/AUTO/SNS/MAIN/huati.jsp"%>
				</div>

				<div class="activities">
					<%@ include file="/AUTO/SNS/MAIN/help.jsp"%>				
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
			    	result = getAddActivityCss('test',scacTitle,scacDate,scacPlace);
			    	alert(result)
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
