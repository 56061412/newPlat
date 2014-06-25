<%@page import="com.auto.sns.util.UserUtil"%>
<%@page import="com.system.util.SessionUtil"%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%
	String headUserLabel = SessionUtil.getCurrentUserLabel(request);
	String userOrg = UserUtil.getUserOrgName(headUserLabel);
%>
<div class="head-bgd">
	<div class="head-size pr">
		<a class="white-logo fl " href="<%=request.getContextPath()%>/AUTO/SNS/MAIN/my-trends.jsp?postPage=myPage"></a>
		<a class="head-font fl " href="<%=request.getContextPath()%>/AUTO/SNS/MAIN/my-trends.jsp?postPage=myPage">首页</a>
		<%--最大 接收 数量99 超出会跑偏 --%>
		<a class="head-font fl " href="<%=request.getContextPath()%>/AUTO/SNS/MAIN/task.jsp" >任务</a>
		<a class="head-font fl " href="<%=request.getContextPath()%>/AUTO/SNS/MAIN/my-trends.jsp?postPage=myPage">动态</a>
		<input type="text" class="sear-img w190 fl" name="" id="search"
			value="搜活动 搜投票 搜任务 搜话题" />
		<a class="search-imgs fl " href=""></a>
		<a class="head-font fl " href="">账户</a>
		<a class="head-font fl " href="<%=request.getContextPath()%>/snsLogin/userLogout.action">退出</a>
	</div>
	<div class="cb"></div>
	<div class="head-size pr" style="font-size: 20px;margin-top: 5px">
		<%=userOrg %>
	</div>
</div>