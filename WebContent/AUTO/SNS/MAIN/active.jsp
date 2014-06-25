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
				<jsp:param name="menu" value="active" />
			</jsp:include>
			<%--左边end--%>
			<%--右边 --%>
			<div class="cm-right-layout pl105 fr">
				<div class="active-title pt15">
					<a href="" class="tti-sent fr ">发起活动</a>
					<div class="fr tt-select mr5">
						<select  class="none-border">
							<option value="1">请选择</option>
						</select>
					</div>
					<div class="fr tt-select mr5">
						<select  class="none-border">
							<option value="1">请选择</option>
						</select>
					</div>
					<a href="" class="tti-sent fr mr5">搜索</a>
					<div class="fr tt-input">
						<input type="text" class="none-border" value="" />
					</div>
					<div class="cb"></div>
				</div>
				<ul class="cm-btn theme-tab">
					<li class="fl cm-btn-click">
						<a class="cheek cur" href="javascript:void(0);">所有活动</a>
					</li>
					<li class="fl cm-btn-click">
						<a class="cheek" href="javascript:void(0);">我提交的活动</a>
					</li>
					<li class="cb"></li>
				</ul>
				<%--下面为列表内容 --%>
				<%@ include file="/AUTO/SNS/POST/listActive.jsp"%>
			</div>
			<%--右边end --%>
			<div class="cb"></div>
		</div>
		<jsp:include page="xcr-foot.jsp"></jsp:include>
		</form>
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
