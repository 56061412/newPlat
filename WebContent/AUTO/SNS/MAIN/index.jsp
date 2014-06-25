<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<title>修车人-会员中心-发布</title>
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
				</div>				
				<%@ include file="/AUTO/SNS/POST/addPost.jsp"%>				
				<div class="cb"></div>				
				<%@ include file="/AUTO/SNS/POST/listPost.jsp"%>
				<%--我的动态end --%>
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

	function replyinfo(){
		

	}
	function reply(){
		var code = "<div class=\"ask-for-box fr mt5 none\">";
		code += "<input type=\"text\" class=\"mini-textbox\" style=\"width:345px;\" /> ";
		code += "<div style=\"margin-top:7px;\">";
		code += "<div class=\"fl\"><a href=\" javascript:void(0);\"><img src=\"static/images/xcr/smile-ico.png\"></a></div>";
		code += "<div class=\"send-btn fr\"><a href=\"javascript:replyinfo();\">发送</a></div>";
		code += "<div class=\"cb\"></div>";
		code += "</div>";
		code += "</div>";
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
