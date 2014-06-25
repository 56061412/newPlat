<%@page import="com.system.util.SessionUtil"%>
<%@page import="com.auto.sns.util.UserUtil"%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%
	String userLabel = SessionUtil.getCurrentUserLabel(request);
	String userImgePath = UserUtil.getUserImgByUserCode(userLabel);
%>
<%--左边 --%>
<div class="left-layout fl">
	<div>
		<img src="<%=userImgePath %>" width="160" height="160"/>
	</div>
	<div class="dynamic-center ">
		<div>
			<div class="red-btn mb10">
				动态中心
			</div>
			<div>
				<div class="">
					<a href="${ctx}/AUTO/SNS/MAIN/my-trends.jsp?postPage=myPage" id="myDynamic" menu="my-trends" class="help-size">我的动态</a>
				</div>
				<div class="">
					<a href="${ctx}/AUTO/SNS/MAIN/company-trends.jsp?postPage=comPage" menu="company-trends" class="help-size">公司动态</a>
				</div>
				<div class="">
					<a href="${ctx}/AUTO/SNS/MAIN/friend-trends.jsp?postPage=friendPage" menu="friends" class="help-size">好友动态</a>
				</div>
				<div class="">
					<a href="${ctx}/snsFriend/queryOrgMember.action?pageIndex=0&pageSize=10" menu="company" class="help-size">公司成员</a>
				</div>
			</div>
		</div>
		<!-- 
		<div>
			<div class="red-btn mb10">
				内部群组
			</div>
			<div>
				<div class="">
					<a href="internal-group.jsp" menu="group" class="help-size ">全部群组</a>
				</div>
			</div>
		</div>
		 -->
		<div>
			<div class="red-btn mb10">
				资源中心
			</div>
			<div>
				<div class="">
					<a href="${ctx}/AUTO/SNS/MAIN/theme.jsp" menu="theme" class="help-size ">话题中心</a>
				</div>
				<%-- 
				<div class="">
					<a href="${ctx}/AUTO/SNS/MAIN/document.jsp" menu="document" class="help-size ">文档中心</a>
				</div>
				
				<div class="">
					<a href="${ctx}/AUTO/SNS/MAIN/picture.jsp" menu="picture" class="help-size ">图片中心</a>
				</div>
				<div class="">
					<a href="${ctx}/AUTO/SNS/MAIN/question.jsp" menu="question" class="help-size ">问答中心</a>
				</div>
				--%>
				<div class="">
					<a href="${ctx}/AUTO/SNS/MAIN/active.jsp" menu="active" class="help-size ">活动中心</a>
				</div>
			</div>
		</div>
		<div>
			<div class="red-btn mb10">
				应用
			</div>
			<div>
				<div class="">
					<a href="${ctx}/AUTO/SNS/MAIN/knowledge.jsp" menu="knowledge" class="help-size ">知识库</a>
				</div>
				<div class="">
					<a href="${ctx}/AUTO/SNS/MAIN/task.jsp" menu="task" class="help-size ">任务</a>
				</div>
				<div class="">
					<a href="${ctx}/AUTO/SNS/MAIN/message.jsp" menu="message" class="help-size ">私信</a>
				</div>
				<%--
				<div class="">
					<a href="javascript:void(0)" class="help-size ">收藏</a>
				</div>
				<div class="">
					<a href="javascript:void(0)" class="help-size ">推荐</a>
				</div>
				<div class="">
					<a href="javascript:void(0)" class="help-size ">排行榜</a>
				</div>
				 --%>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">

$(document).ready(function () {
	var menu = '${param.menu}';
	if(menu && menu.length > 0){
		$('.help-size').removeClass("help-effect");
		$('.help-size[menu='+menu+']').addClass("help-effect");
	}
});
</script>

			