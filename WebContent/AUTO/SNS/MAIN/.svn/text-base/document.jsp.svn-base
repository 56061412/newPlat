<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="robots" content="all" />
		<title>修车人-文档中心</title>
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
				<jsp:param name="menu" value="document" />
			</jsp:include>
			<%--左边end--%>
			<%--右边 --%>
			<div class="cm-right-layout pl105 fr">
				<div class="document-title pt15">
					<a href="###" id="uploadNewDoc" class="tti-sent fr mr5">上传新文档</a>
<!--			
					<div class="fr tt-select mr5">
						<select  class="none-border">
							<option value="1">最新文档</option>
						</select>
					</div>
					<div class="fr tt-select mr5">
						<select  class="none-border">
							<option value="1">所有文档</option>
						</select>
					</div>
							-->
					<a href="" class="tti-sent fr mr5">搜索</a>
					<div class="fr tt-input">
						<input type="text" class="none-border" value="" />
					</div>
					<div class="cb"></div>
				</div>
				<ul class="cm-btn theme-tab">
					<li class="fl cm-btn-click">
						<a class="cheek cur" href="javascript:void(0);">所有文档</a>
					</li>
					<li class="fl cm-btn-click">
						<a class="cheek" href="javascript:void(0);">我上传的文档</a>
					</li>
					<li class="fl cm-btn-click">
						<a class="cheek" href="javascript:void(0);">我推荐的文档</a>
					</li>
					<li class="fl cm-btn-click">
						<a class="cheek" href="javascript:void(0);">我收藏的文档</a>
					</li>
					<li class="cb"></li>
				</ul>
				
				<%--下面为列表内容 --%>
				<div class="w800 mt10">
					<div class="picture-list mr10">
						<a class="fl " href="">
							<img src="${ctx}/AUTO/SNS/static/images/xcr/head-ico.png" width="60" height="60" class="pl-img" />
						</a>
						<div class="fl ml15">
							<div class="tl-title mt5">
								<a href="javascript:void(0);" class="dl-title">香草天空</a>
								<span class="tl-much ml5">2013-2-29</span>
								<a href="" class="picture-locdin ml5"></a>
							</div>
							<div class="mt5"><a href="" class="font-blue">蒙奇D路飞</a></div>
						</div>
						<div class="cb"></div>	
					</div>
					<div class="picture-list mr10">
						<a class="fl " href="">
							<img src="${ctx}/AUTO/SNS/static/images/xcr/head-ico.png" width="60" height="60" class="pl-img" />
						</a>
						<div class="fl ml15">
							<div class="tl-title mt5">
								<a href="javascript:void(0);" class="dl-title">香草天空</a>
								<span class="tl-much ml5">2013-2-29</span>
								<a href="" class="picture-locdin ml5"></a>
							</div>
							<div class="mt5"><a href="" class="font-blue">蒙奇D路飞</a></div>
						</div>
						<div class="cb"></div>	
					</div>
					<div class="picture-list mr10">
						<a class="fl " href="">
							<img src="${ctx}/AUTO/SNS/static/images/xcr/head-ico.png" width="60" height="60" class="pl-img" />
						</a>
						<div class="fl ml15">
							<div class="tl-title mt5">
								<a href="javascript:void(0);" class="dl-title">香草天空</a>
								<span class="tl-much ml5">2013-2-29</span>
								<a href="" class="picture-locdin ml5"></a>
							</div>
							<div class="mt5"><a href="" class="font-blue">蒙奇D路飞</a></div>
						</div>
						<div class="cb"></div>	
					</div>
					<div class="picture-list mr10">
						<a class="fl " href="">
							<img src="${ctx}/AUTO/SNS/static/images/xcr/head-ico.png" width="60" height="60" class="pl-img" />
						</a>
						<div class="fl ml15">
							<div class="tl-title mt5">
								<a href="javascript:void(0);" class="dl-title">香草天空</a>
								<span class="tl-much ml5">2013-2-29</span>
								<a href="" class="picture-locdin ml5"></a>
							</div>
							<div class="mt5"><a href="" class="font-blue">蒙奇D路飞</a></div>
						</div>
						<div class="cb"></div>	
					</div>
				</div>
			</div>
			<%--右边end --%>
			<div class="cb"></div>
		</div>
		<jsp:include page="xcr-foot.jsp"></jsp:include>
		</form>
		<script>
			mini.parse();
			$(".cm-btn-click").click(function(){
				$(".cheek").removeClass("cur");
				$(this).children(".cheek").addClass("cur");
			});
			$('.pl-title').click(function(){
				$(this).next().show();
				$(this).hide();
			});
			$('.abrogate').click(function(){
				$(this).parent().hide();
				$(this).parent().prev().show();
			});
			//上传新文档
			$('#uploadNewDoc').click(function(){
				mini.open({
				    url: "${ctx}/AUTO/SNS/MAIN/uploadDocument.jsp",           
				    title: "上传文档",
				    width: 650,
				    height: 380,
				    ondestroy: function (action) {                  
				        grid.reload();
				    }
				});
			});
		</script>
	</body>
</html>
