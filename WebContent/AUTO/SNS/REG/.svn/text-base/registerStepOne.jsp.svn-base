<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<%
//session超时时间设置
//request.getSession().setMaxInactiveInterval(10);

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="author" content="Tocersoft" />
	<meta name="keywords"
		content="社交网络，协作平台，私密的社交网络，沟通、协作和分享，修车，社交服务，sns，SNS" />
	<meta name="description"
		content="修车人社交网络平台，为汽修公司、厂家创建免费的、私密的内部社交网络，并与同事进行基于工作的沟通、协作和分享" />
	<meta name="robots" content="all" />
	<title>修车人社交网络平台</title>
	
	<%@include file="../include/autoSNSBaseInclude.jsp" %>
</head>
<body>
  <form method="post">
	<div class="body">
		<a class="logo fl" href=""></a>
		<a class="login-help fr" id="toHelp" href="javascript:void(0);"></a>
		<a class="login-on fr" id="toLogin" href="javascript:void(0);"></a>
		<div class="cb"></div>
		<div class="login-main-body">
			<div class="login-input mt20">
				<input class="ui-input-text34 longin-pt" type="text"
					value=" 请输入推荐人帐号" id="login-resume" name="recommendAccount" />
				<a id="register" class="resume" href="javascript:void(0);"></a>
				<span style="color: black;">${requestScope.regError}</span>
			</div>
		</div>
	</div>
	<div class="login-bgd">
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
  </form>
<script type="text/javascript">
$("#login-resume").focus(function() {
	$(this).addClass("ui_input_text_hover");
	var temp = $(this).val();
	if(" 请输入推荐人帐号"==temp){
		$(this).val("");
		$(this).css("color","black");
	}
});
$("#login-resume").blur(function() {
	$(this).removeClass("ui_input_text_hover");
	var temp = $(this).val();
	if(""==temp){
		$(this).val(" 请输入推荐人帐号");
		$(this).css("color","#666666");
	}
});
//返回登录页面
$("#toLogin").click(function() {
	var url = "${ctx}/AUTO/SNS/login.jsp";
	window.location.href = url;
});
//帮助
$("#toHelp").click(function() {
});
//新用户注册 点击按钮执行
$("#register").click(function() {
	var action = "${ctx}/snsRegister/userRegisterStepOne.action";
	document.forms[0].action = action;
	document.forms[0].submit();
});
//新用户注册 回车执行
$(document).keydown(function(e) {
	var varkey = e.which;
	if(varkey==13){
		//alert(123)
		var action = "${ctx}/snsRegister/userRegisterStepOne.action";
		//document.forms[0].action = action;
		//document.forms[0].submit();
 	}
});
</script>
</body>
	
</html>
