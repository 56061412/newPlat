<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="author" content="Tocersoft" />
		<meta name="robots" content="all" />
		<title>修车人-活动中心</title>
		<%@include file="../include/autoSNSBaseInclude.jsp" %>
	</head>
	<body>
		<form id="snsCoreForm">
		<jsp:include page="xcr-head.jsp"></jsp:include>
		<div class="member-center">
			<%--左边 --%>
			<jsp:include page="left-menu.jsp">
				<jsp:param name="menu" value="task" />
			</jsp:include>
			<%--左边end--%>
			<%--右边 --%>
			<div class="cm-right-layout pl105 fr">
				<div class="trends-layout">
					<div class="red-layout">
						任务
					</div>
				</div>
				<%@ include file="/AUTO/SNS/POST/addTask.jsp"%>				
				<div class="cb"></div>				
				<%@ include file="/AUTO/SNS/POST/listTask.jsp"%>
			</div>
			<%--右边end --%>
			<div class="cb"></div>
		</div>
		<jsp:include page="xcr-foot.jsp"></jsp:include>
		</form>
		<script src="${ctx}/AUTO/SNS/MAIN/index.js" type="text/javascript"></script>
		<script src="${ctx}/AUTO/SNS/static/js/public.js" type="text/javascript"></script>
		<script>
			$(".cm-btn-click").click(function(){
				$(".cheek").removeClass("cur");
				$(this).children(".cheek").addClass("cur");
			});
			$('.question').click(function(){
				$(this).next().toggle();
			});
		</script>
	</body>
</html>
