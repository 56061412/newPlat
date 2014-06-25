<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="robots" content="all" />
		<title>修车人-图片中心</title>
		<%@include file="../include/autoSNSBaseInclude.jsp" %>
		
	</head>
	<body>
		<form id="snsCoreForm">
		<jsp:include page="xcr-head.jsp"></jsp:include>
		<div class="member-center">
			<%--左边 --%>
			<jsp:include page="left-menu.jsp">
				<jsp:param name="menu" value="picture" />
			</jsp:include>
			<%--左边end--%>
			<%--右边 --%>
			<div class="cm-right-layout pl105 fr">
				<div class="picture-title pt15">
					<a href="" class="tti-sent fr mr5">上传新图片</a>
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
					<a href="" class="tti-sent fr mr5">搜索</a>
					<div class="fr tt-input">
						<input type="text" class="none-border" value="" />
					</div>
					<div class="cb"></div>
				</div>
				<ul class="cm-btn theme-tab">
					<li class="fl cm-btn-click">
						<a class="cheek cur" href="javascript:void(0);">所有图片</a>
					</li>
					<li class="fl cm-btn-click">
						<a class="cheek" href="javascript:void(0);">我上传的图片</a>
					</li>
					<li class="fl cm-btn-click">
						<a class="cheek" href="javascript:void(0);">我推荐的图片</a>
					</li>
					<li class="fl cm-btn-click">
						<a class="cheek" href="javascript:void(0);">我收藏的图片</a>
					</li>
					<li class="cb"></li>
				</ul>
				<%--下面为列表内容 --%>
				<div class="w900 mt10">
					<div class="fl picture-list mr10">
						<a class="fl  box-bag" href="">
							<img width="138" height="138" src="static/images/xcr/act-pic.png" class="ml5" />
							<img src="${ctx}/AUTO/SNS/static/images/xcr/round-box.png" class="round-box" />
							<i class="light"></i>
						</a>
						<div class="fl ml15">
							<div class="tl-title mt5">
								<a href="javascript:void(0);" class="dl-title">香草天空</a>
								<%--重命名  --%>
								<span class="hide ">
									<span class="pt-input"><input type="text" class="none-border" /></span>	
									<a href="" class="pt-send ml5">确定</a>
									<a href="javascript:void(0);" class="pt-send abrogate">取消</a>
								</span>	
								<a href="" class="picture-locdin ml5"></a>
							</div>
							<div class="mt5"><a href="" class="font-blue">蒙奇D路飞</a></div>
							<div class="tl-much mt5">2013-2-29</div>
						</div>
						<div class="cb"></div>	
					</div>
					<div class="fl picture-list mr10">
						<a class="fl  box-bag" href="">
							<img width="138" height="138" src="${ctx}/AUTO/SNS/static/images/xcr/act-pic.png" class="ml5" />
							<img src="${ctx}/AUTO/SNS/static/images/xcr/round-box.png" class="round-box" />
							<i class="light"></i>
						</a>
						<div class="fl ml15">
							<div class="tl-title mt5">
								<a href="" class="dl-title ">香草天空</a>
								<%--重命名  --%>
								<span class="hide ">
									<span class="pt-input"><input type="text" class="none-border" /></span>	
									<a href="" class="pt-send ml5">确定</a>
									<a href="" class="pt-send ">取消</a>
								</span>	
								<a href="" class="picture-locdin ml5"></a>
							</div>
							<div class="mt5"><a href="" class="font-blue">蒙奇D路飞</a></div>
							<div class="tl-much mt5">2013-2-29</div>
						</div>
						<div class="cb"></div>	
					</div>
					<div class="fl picture-list mr10">
						<a class="fl  box-bag" href="">
							<img width="138" height="138" src="${ctx}/AUTO/SNS/static/images/xcr/act-pic.png" class="ml5" />
							<img src="${ctx}/AUTO/SNS/static/images/xcr/round-box.png" class="round-box" />
							<i class="light"></i>
						</a>
						<div class="fl ml15">
							<div class="tl-title mt5">
								<a href="" class="dl-title ">香草天空</a>
								<%--重命名  --%>
								<span class="hide ">
									<span class="pt-input"><input type="text" class="none-border" /></span>	
									<a href="" class="pt-send ml5">确定</a>
									<a href="" class="pt-send ">取消</a>
								</span>	
								<a href="" class="picture-locdin ml5"></a>
							</div>
							<div class="mt5"><a href="" class="font-blue">蒙奇D路飞</a></div>
							<div class="tl-much mt5">2013-2-29</div>
						</div>
						<div class="cb"></div>	
					</div>
					<div class="fl picture-list mr10">
						<a class="fl  box-bag" href="">
							<img width="138" height="138" src="${ctx}/AUTO/SNS/static/images/xcr/act-pic.png" class="ml5" />
							<img src="${ctx}/AUTO/SNS/static/images/xcr/round-box.png" class="round-box" />
							<i class="light"></i>
						</a>
						<div class="fl ml15">
							<div class="tl-title mt5">
								<a href="" class="dl-title ">香草天空</a>
								<%--重命名  --%>
								<span class="hide ">
									<span class="pt-input"><input type="text" class="none-border" /></span>	
									<a href="" class="pt-send ml5">确定</a>
									<a href="" class="pt-send ">取消</a>
								</span>	
								<a href="" class="picture-locdin ml5"></a>
							</div>
							<div class="mt5"><a href="" class="font-blue">蒙奇D路飞</a></div>
							<div class="tl-much mt5">2013-2-29</div>
						</div>
						<div class="cb"></div>	
					</div>
					<div class="cb"></div>
				</div>
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
			$('.pl-title').click(function(){
				$(this).next().show();
				$(this).hide();
			});
			$('.abrogate').click(function(){
				$(this).parent().hide();
				$(this).parent().prev().show();
			});
		</script>
	</body>
</html>
