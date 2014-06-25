<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html>

<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="robots" content="all" />
		<title>修车人-话题中心</title>
		<%@include file="../include/autoSNSBaseInclude.jsp" %>
		
	</head>
	<body>
		<form id="snsCoreForm">
		<jsp:include page="xcr-head.jsp"></jsp:include>
		
<!--	隐藏域 开始	-->
		<div style="display: none;">
			<input type="text" label=" " id=" " value=""/>
		</div>
<!--	隐藏域 结束	-->

		<div class="member-center">
			<%--左边 --%>
			<jsp:include page="left-menu.jsp">
				<jsp:param name="menu" value="theme" />
			</jsp:include>
			<%--左边end--%>
			<%--右边 --%>
			<div class="cm-right-layout pl10 fr">
				<div class="theme-title">
					<div class="fr tt-select mr10">
						<select  class="none-border">
							<option value="1">热门话题</option>
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
						<a class="cheek cur" href="javascript:void(0);" onclick="doAllHua()">所有话题</a>
					</li>
					<%-- 
					<li class="fl cm-btn-click">
						<a class="cheek" href="javascript:void(0);" onclick="doMyHua()">我关注话题</a>
					</li>
					 --%>
					<li class="fl cm-btn-click">
						<a class="cheek" href="javascript:void(0);" onclick="doCreateHua()">发布话题</a>
					</li>
					<li class="cb"></li>
				</ul>
				<%--下面为列表内容 --%>			
				<%@ include file="/AUTO/SNS/POST/listHua.jsp"%>
			</div>
			<%--右边end --%>
			<div class="cb"></div>
		</div>
		<jsp:include page="xcr-foot.jsp"></jsp:include>
		<script>
			$(".cm-btn-click").click(function(){
				$(".cheek").removeClass("cur");
				$(this).children(".cheek").addClass("cur");
			});
		</script>
		</form>
	</body>
</html>
<script type="text/javascript">
mini.parse();
function doAllHua(){
	doListHuati();
}
function doMyHua(){
	
}
function doCreateHua(){
	mini.open({
	    url: "addHuati.jsp",
	    title: "新增话题", width: 600, height: 360,
	    ondestroy: function (action) {
            doListHuati();
        }
	});
}

</script>