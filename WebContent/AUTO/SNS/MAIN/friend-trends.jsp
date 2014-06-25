<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="robots" content="all" />
		<title>修车人-会员中心-好友动态</title>
		<%@include file="../include/autoSNSBaseInclude.jsp" %>
	</head>
	<body>
		<form id="snsCoreForm">
		<jsp:include page="xcr-head.jsp"></jsp:include>
		<div class="member-center">
			<%--左边 --%>
			<jsp:include page="left-menu.jsp">
				<jsp:param name="menu" value="friends" />
			</jsp:include>
			<%--左边end--%>
			<%--中间--%>
			<div class="mc-middle-layout fl">
				<%--我的动态 --%>
				<div>
					<div class="trends-layout">
						<div class="red-layout">
							好友动态
						</div>
					</div>
					<%@ include file="/AUTO/SNS/POST/addPost.jsp"%>				
					<div class="cb"></div>				
					<%@ include file="/AUTO/SNS/POST/listPost.jsp"%>
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
		
<script src="${ctx}/AUTO/SNS/static/js/public.js" type="text/javascript"></script>

<script type="text/javascript">
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
</script>
	</body>
</html>
