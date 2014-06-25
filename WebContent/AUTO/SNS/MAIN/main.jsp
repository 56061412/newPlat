<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<base href="${BASE_PATH}" />
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="author" content="Tocersoft" />
		<meta name="robots" content="all" />
		<title>修车人-会员中心</title>
		
		<%@include file="../include/autoSNSBaseInclude.jsp" %>
	</head>
	<c:set var="userInfoMap" value="${userInfoMap}"></c:set>
	<c:set var="allList" value="${allList}"></c:set>
	<c:set var="todayRoleList" value="${todayRoleList}"></c:set>
	<c:set var="popTopicList" value="${popTopicList}"></c:set>
	<c:set var="attentionTopicList" value="${attentionTopicList}"></c:set>
	<c:set var="roleCount" value="${roleCount}"></c:set>
	<c:set var="messageCount" value="${messageCount}"></c:set>
	
	<body>
		<div class="head-bgd">
			<div class="head-size pr">
				<a class="white-logo fl " href=""></a>
				<a class="head-font fl " href="javascript:showmain();">首页</a>
				<%--最大 接收 数量99 超出会跑偏 --%>
				<a class="head-font fl " href="javascript:roleCenter();" >任务(${roleCount})</a>
				<a class="head-font fl " href="javascript:messageCenter();">消息(${messageCount})</a>
				<input type="text" class="sear-img w190 fl" name="" id="search"
					value="搜活动 搜投票 搜任务 搜话题">
				<a class="search-imgs fl " href=""></a>
				<a class="head-font fl " href="">账户</a>
				<a class="head-font fl " href="">帮助</a>
			</div>
			<div class="cb"></div>
		</div>
		<div class="member-center">
			<%--左边 --%>
			<div class="left-layout fl">
				<div>
					<img src="${ctx}/AUTO/SNS/static/images/xcr/user-photo.png">
				</div>
				<div class="dynamic-center ">
					<div>
						<div class="red-btn mb10">
							动态中心
						</div>
						<div>
							<div class="dc-content">
								<a href="javascript:void(0)" class="dc-content-a">我的动态</a>
							</div>
							<div class="dc-content">
								<a href="javascript:companyTrends();" class="dc-content-a">公司动态</a>
							</div>
							<div class="dc-content">
								<a href="javascript:void(0)" class="dc-content-a">好友动态</a>
							</div>
							<div class="dc-content">
								<a href="javascript:void(0)" class="dc-content-a">公司成员</a>
							</div>
						</div>
					</div>
					<div>
						<div class="red-btn mb10">
							内部群组
						</div>
					</div>
					<div>
						<div class="red-btn mb10">
							资源中心
						</div>
						<div>
							<div class="dc-content">
								<a href="javascript:void(0)" class="dc-content-a">话题中心</a>
							</div>
							<div class="dc-content">
								<a href="javascript:void(0)" class="dc-content-a">文档中心</a>
							</div>
						</div>
					</div>
					<div>
						<div class="red-btn mb10">
							应用
						</div>
						<div>
							<div class="dc-content">
								<a href="javascript:void(0)" class="dc-content-a">知识库</a>
							</div>
							<div class="dc-content">
								<a href="javascript:void(0)" class="dc-content-a">外部社区</a>
							</div>
							<div class="dc-content">
								<a href="javascript:void(0)" class="dc-content-a">收藏</a>
							</div>
							<div class="dc-content">
								<a href="javascript:void(0)" class="dc-content-a">推荐</a>
							</div>
							<div class="dc-content">
								<a href="javascript:void(0)" class="dc-content-a">投票</a>
							</div>
							<div class="dc-content">
								<a href="javascript:void(0)" class="dc-content-a">链接</a>
							</div>
							<div class="dc-content">
								<a href="javascript:void(0)" class="dc-content-a">排行榜</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<%--左边end--%>
			<%--中间--%>
			<div class="middle-layout fl">
				<div class="u-name">
					<span class="fl">${userInfoMap.userName}</span>
					<a class="u-name-ico fr" href=""></a>
					<div class="cb"></div>
				</div>
				<div class="fl w350 msg-layout">
					<div>
						公司：${userInfoMap.orgName}
					</div>
					<div>
						职位：${userInfoMap.deptName}
					</div>
					<div>
						擅长维修项目：${userInfoMap.specializeTypeName}
					</div>
				</div>
				<div class="fl msg-layout">
					<div>
						部门：${userInfoMap.jobName}
					</div>
					<div>
						擅长维修车型：${userInfoMap.specializeProjectName}
					</div>
				</div>
				<div class="cb"></div>

				<div class="ask-title">
					<a class="title-name cur" href="javascript:showall();"> 全部 (10) <span
						class="gong-red"></span> </a>
					<a class="title-name" href="javascript:showrole();"> 任务 (10) <span
						class="gong-red"></span> </a>
					<a class="title-name" href="javascript:showactivity();"> 活动 (10) <span
						class="gong-red"></span> </a>
					<a class="title-name" href="javascript:showvote();"> 投票 (10) <span
						class="gong-red"></span> </a>
					<a class="title-name" href="javascript:showtheme();"> 话题 (10) <span
						class="gong-red"></span> </a>
					<div class="cb"></div>
				</div>
				<dir id="all">
				<c:forEach var="map" items="${allList}">
					<c:if test="${map.type eq 'activity' }">
						<div class="pt20">
							<div class="fl">
								<img src="${ctx}/AUTO/SNS/static/images/xcr/user-photo.png" width="60px"
									height="60px">
							</div>
							<div class="fl ml10">
								<div class="f14 ellipsis w480">
									<label class="blue-color fb f14">
										${map.activityname}：
									</label>
									${map.activitycontent}
								</div>
								<div class="mt5 gray-color">
									活动时间：${map.activitytime} ${map.activitytimelong}
								</div>
								<div class="mt5 gray-color">
									活动地点：${map.activityaddr}
								</div>
								<div class="ask-details mt5">
									<div class="fl gray-color">
										${map.time}
									</div>
									<div class="fr">
										<label class="mr15">
											<a href="blue-front">回复${map.returncount}</a>
										</label>
										|
										<label class="ml15 mr15">
											<a href="blue-front">推荐${map.commendcount}</a>
										</label>
										|
										<label class="ml15 mr15">
											<a href="blue-front">收藏${map.collectioncount}</a>
										</label>
										|
										<label class="ml15">
											<a href="blue-front">删除</a>
										</label>
									</div>
								</div>
								<div class="ask-line"></div>
								<c:forEach var="allReturnList" items="${map.allReturnList}">
									<div class="ask-user">
										<div class="fl">
											<img src="${ctx}/AUTO/SNS/static/images/xcr/user-photo.png" width="40px"
												height="40px">
										</div>
										<div class="fl ask-content">
											<div>
												<label class="blue-color fb">
													${allReturnList.returnname}：
												</label>
												${allReturnList.returncontent}
											</div>
											<div class="gray-color fl">
												${allReturnList.returntime}
											</div>
											<div class="fr">
												<label class="mr15">
													<a href="blue-front">删除</a>
												</label>
												|
												<label class="ml15">
													<a href="blue-front">回复</a>
												</label>
											</div>
										</div>
										<div class="cb"></div>
									</div>
								</c:forEach>
								<div class="ask-text">
									<textarea class="ask-textarea" node-type="textEl" name="" rows="" cols="" action-type="check"></textarea>
								</div>
								<div class="pt10">
									<div class="pic-up fl"></div>
									<div class="commit-btn fr"></div>
									<div class="cb"></div>
								</div>
							</div>
							<div class="cb"></div>
						</div>
					</c:if>
					<c:if test="${map.type eq 'vote' }">
						<div class="other-content">
							<div class="fl">
								<img src="${ctx}/AUTO/SNS/static/images/xcr/user-photo.png" width="60px"
									height="60px">
							</div>
							<div class="fl ml10">
								<div class="f14 ellipsis w480">
									<label class="blue-color fb f14">
										${map.votename}：
									</label>
									${map.votecontent}
								</div>
								<div class="gray-color mt5">
									投票人数：${map.votecount}人
									<a href="#" class="refresh ml10 blue-front">刷新</a>
								</div>
								<div class="vote-div">
									<div>
										屌丝
									</div>
									<div>
										高富帅
									</div>
									<div>
										矮龊穷
									</div>
									<div>
										其他
									</div>
								</div>
								<div class="other-content-detail mt10">
									<div class="fl ">
										${map.time}
									</div>
									<div class="fr">
										<label class="mr15">
											<a href="blue-front">回复${map.returncount}</a>
										</label>
										|
										<label class="ml15 mr15">
											<a href="blue-front">推荐${map.commendcount}</a>
										</label>
										|
										<label class="ml15 mr15">
											<a href="blue-front">收藏${map.collectioncount}</a>
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
					</c:if>
				</c:forEach>
			</dir>
			<dir id="role">
				role
			</dir>
			<dir id="activity">
				activity
			</dir>
			<dir id="vote">
				vote
			</dir>
			<dir id="theme">
				theme
			</dir>
				<div class="other-content">
					<div class="fl">
						<img src="${ctx}/AUTO/SNS/static/images/xcr/user-photo.png" width="60px"
							height="60px">
					</div>
					<div class="fl ml10">
						<div class="f14 ellipsis w480">
							<label class="blue-color fb f14">
								奥巴马：
							</label>
							星期一交付啊啊啊啊啊啊啊
						</div>
						<div class="gray-color mt5">
							执行人：黄莉，孙玲，刘嘉玲，付磊
						</div>
						<div class="other-content-detail mt10">
							<div class="fl ">
								2012/05/11 10:06:22
							</div>
							<div class="fr">
								<label class="mr15">
									<a href="blue-front">回复(3)</a>
								</label>
								|
								<label class="ml15 mr15">
									<a href="blue-front">推荐(3)</a>
								</label>
								|
								<label class="ml15 mr15">
									<a href="blue-front">收藏</a>
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
								<c:forEach var="snsCoreTask" items="${todayRoleList}">
									<li class="ri-ul">
										<a class="blue-front" href="###" onclick="queryTodayRoleTask('${snsCoreTask.sctaGuid}');">${snsCoreTask.sctaTitle}</a>
									</li>
								</c:forEach>
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
							<c:forEach var="snsCoreTopic" items="${popTopicList}">
								<li class="mb10">
									<p>
										<span class="fr">${snsCoreTopic.replyNum}</span>
										<a class="font-ofh blue-front" href="">${snsCoreTopic.sctoName}</a>
									</p>
									<div class="arrow">
										<em class="S_line2_c">◆</em>
										<span class="S_bg1_c">◆</span>
									</div>
									<div class="news-content">
										${snsCoreTopic.sctoDesc}
									</div>
									<div class="news-ico"></div>
								</li>
							</c:forEach>
							<li class="mb10">
								<p>
									<span class="fr blue-front"><a class="blue-front"
										href="">更多</a>
									</span>
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
		<div class="login-bottom">
			<div class="fl">
				<label>
					Copyright&copy; 2012 修车人 沪ICP备11027288号
				</label>
			</div>
			<div class="fr">
				<ul>
					<li>
						<a href="#">关于修车人</a>
					</li>
					<li>
						<a href="#">知识共享</a>
					</li>
					<li>
						<a href="#">交流协作</a>
					</li>
					<li>
						<a href="#">员工管理</a>
					</li>
					<li>
						<a href="#">工作反馈</a>
					</li>
					<li>
						<a href="#">发布任务</a>
					</li>
					<li>
						<a href="#">联系我们</a>
					</li>
					<li>
						<a href="#">帮助中心</a>
					</li>
				</ul>
			</div>
			<div class="cb"></div>
		</div>
	</body>
<script>
$("#role").hide();
$("#activity").hide();
$("#vote").hide();
$("#theme").hide();
	mini.parse();
	var grid = mini.get("datagrid1");
	grid.load();
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
	//公司动态跳转
	function companyTrends(){
		self.location="${ctx}/snsCore/companyTrends.action?method=companyTrends";
	}

	function queryTodayRoleTask(sctaGuid){
		alert("查看今日任务guid:"+sctaGuid);
	}
	//任务中心跳转
	function roleCenter(){
		self.location="${ctx}/snsCore/roleCenterAction.action?method=roleCenterInfo";
	}
	//消息中心跳转
	function messageCenter(){
		self.location="${ctx}/snsCore/messageCenterAction.action?method=messageCenterInfo";
	}

	function showall(){
		$("#all").show();
		$("#role").hide();
		$("#activity").hide();
		$("#vote").hide();
		$("#theme").hide();
	}
	function showrole(){
		$("#role").show();
		$("#all").hide();
		$("#activity").hide();
		$("#vote").hide();
		$("#theme").hide();
	}
	function showactivity(){
		$("#activity").show();
		$("#role").hide();
		$("#all").hide();
		$("#vote").hide();
		$("#theme").hide();
	}
	function showvote(){
		$("#vote").show();
		$("#role").hide();
		$("#activity").hide();
		$("#all").hide();
		$("#theme").hide();
	}
	function showtheme(){
		$("#theme").show();
		$("#role").hide();
		$("#activity").hide();
		$("#vote").hide();
		$("#all").hide();
	}
	function showmain(){
		self.location="${ctx}/snsCore/showMainUserInfo.action?method=showMainUserInfo";
	}
</script>
</html>
