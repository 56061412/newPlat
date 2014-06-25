<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="robots" content="all" />
		<title>修车人-会员中心-公司成员</title>
		<%@include file="../include/autoSNSBaseInclude.jsp" %>
		
		<!--公司成员List-->
		<c:set var="myOrgUserList" value="${myOrgUserList}" />
		<!--分页	-->
		<c:set var="page" value="${page}" />
	</head>
	<body>
		<form id="snsCoreForm">
		<jsp:include page="xcr-head.jsp"></jsp:include>
		
		<!--	隐藏域 开始	-->
		<div style="display: none;">
			<input type="text" label="当前页" name="pageIndex" value="${page.offset}"/>
			<input type="text" label="每页显示行数" name="pageSize" value="${page.limit}"/>
		</div>
		<!--	隐藏域 结束	-->

		<div class="member-center">
			<jsp:include page="left-menu.jsp">
				<jsp:param name="menu" value="company" />
			</jsp:include>
			<%--左边end--%>
			<%--右边 --%>
			<div class="cm-right-layout fr">
				<div class="cm-title"></div>
				<div class="cm-btn">
					<ul class="theme-mem">
						<li class="fl cm-btn-click">
							<a class="cheek" href="javascript:void(0);">所有人</a>
						</li>
						<li class="fl cm-btn-click">
							<a class="cheek" href="javascript:void(0);">我关注的人</a>
						</li>
						<li class="fl cm-btn-click"> 
							<a class="cheek cur" href="javascript:void(0);">关注我的</a>
						</li>
						<li class="fl cm-btn-click">
							<a class="cheek" href="javascript:void(0);">在线成员</a>
						</li>
						<li class="cb"></li>
					</ul>
				</div>
				<table class="">
					<tr>
						<td class="cm-td-bg w150 tc fb">
							姓名
						</td>
						<td class="cm-td-bg w100 tc fb">
							公司名称
						</td>
						<td class="cm-td-bg w200 tc fb">
							手机号码
						</td>
						<td class="cm-td-bg w150 tc fb">
							QQ号码
						</td>
						<td class="cm-td-bg w100 tc fb">
							粉丝
						</td>
						<td class="cm-td-bg w100 tc fb">
							发言
						</td>
					</tr>
				<c:forEach var="orgUserData" items="${myOrgUserList}">
					<tr>
						<td class="cm-td-bg1 tc">
							<dl>
								<dt>
									<img src="${ctx}/AUTO/SNS/static/images/xcr/head-ico.png" width="60px" height="60px"/>
								</dt>
								<dd class="f14">
									${orgUserData.auserName}
								</dd>
							</dl>
						</td>
						<td class="cm-td-bg1 tc">
							${orgUserData.auorgName}
						</td>
						<td class="cm-td-bg1 tc">
							${orgUserData.auserMobile}
						</td>
						<td class="cm-td-bg1 tc">
							${orgUserData.auserQq}
						</td>
						<td class="cm-td-bg1 tc">
							0
						</td>
						<td class="cm-td-bg1 tc">
							0
						</td>
					</tr>
				</c:forEach>
					<tr>
						<td colspan="7" class="pt10 pb10">
							<div class="msdn">
								<span class="current">1</span><a
									href="#?page=2">2</a><a href="#?page=3">3</a><a href="#?page=4">4</a><a
									href="#?page=5">5</a><a href="#?page=6">6</a><a href="#?page=7">7</a>...
								<a href="#?page=199">199</a><a href="#?page=200">200</a>
								
								<a href="#?page=2">下一页</a>
								共${page.count}条记录
								共${page.pageCount}页
							</div>
						</td>
					</tr>
				</table>
			</div>
			<%--右边end --%>
			<div class="cb"></div>
		</div>
		<jsp:include page="xcr-foot.jsp"></jsp:include>
		</form>
		
<script src="${ctx}/AUTO/SNS/static/js/public.js" type="text/javascript"></script>

<script type="text/javascript">
$(".cm-btn-click").each(function(index){
	$(this).click(function(){
		$(".cheek").removeClass("cur");
		$(this).children(".cheek").addClass("cur");
		var pageIndex = $('input[name=pageIndex]').val('0');
		var pageSize = $('input[name=pageSize]').val('10');
		if(0==index){//所有人
			var action = "${ctx}/snsUser/queryPageListMyOrgUser.action";
			document.forms[0].action = action;
			document.forms[0].submit();
		}else if(1==index){//我关注的人
			var action = "${ctx}/snsUser/queryPageListMyCareUser.action";
			document.forms[0].action = action;
			document.forms[0].submit();
		}else if(2==index){//关注我的人
			var action = "${ctx}/snsUser/queryPageListCareMeUser.action";
			document.forms[0].action = action;
			document.forms[0].submit();
		}else if(3==index){//在线成员
			return;
		}
	});
});
</script>
	</body>
</html>
