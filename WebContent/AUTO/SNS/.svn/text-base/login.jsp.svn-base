<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="author" content="Tocersoft" />
	<meta name="keywords"
		content="社交网络，协作平台，私密的社交网络，沟通、协作和分享，修车，社交服务，sns，SNS" />
	<meta name="description"
		content="国内第一个为修车人服务的社交网络平台，为汽修公司、厂家创建免费的、私密的内部社交网络，并与同事进行基于工作的沟通、协作和分享" />
	<meta name="robots" content="all" />
	<title>登录</title>
	
	<%@include file="include/autoSNSBaseInclude.jsp" %>
</head>

<body>
  <form method="post">
	<div>
		<div class="login-top" style="position: relative">
			<div class="login-top-btn ">
				<a href="#" class="login-top-btn-select" style="color: #d60209;">登录</a>
				<a href="#" class="ml5">帮助</a>
			</div>
			<div class="login-layout" style="position: absolute">
				<div class="login-logo"></div>
				<div class="login-error">
					${requestScope.loginError}
				</div>
				<div class="login-text">
					<div class="login-text-border">
						<div class="email-ico"></div>
						<input type="text" class="ui-input-text w150 fr" id="userCode" name="userCode"
							style="border: none; color: #cccccc;" value="请输入您的帐号" />
					</div>
					<div class="login-text-border mt20">
						<div class="password-ico"></div>
						<input type="password" class="ui-input-text w150 fr" id="password" name="password"
							style="border: none; color: #cccccc;" value="" />
					</div>
				</div>
				<div class="register fr mr20 mt10">
					<a id="snsLogin" href="###">注册</a> |
					<a href="">忘记密码</a>
				</div>
				<div class="cb"></div>
				<div class="mt20">
					<a href="javascript:doLogin()" class="go-btn">登录</a>
				</div>
			</div>
		</div>
		<div class="login-line"></div>
		<div class="login-middle">
			<div class="middle-bg"></div>
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
	</div>
  </form>
<script type="text/javascript">
function doLogin(){
	var action = "${ctx}/snsLogin/userLogin.action";
	document.forms[0].action = action;
	document.forms[0].submit();
}
//登录
$(document).keydown(function(e) {
	var varkey = e.which;
	if(varkey==13){
		var action = "${ctx}/snsLogin/userLogin.action";
		document.forms[0].action = action;
		document.forms[0].submit();
 	}
});
//注册
$('#snsLogin').click(function(){
	window.location.href="${ctx}/AUTO/SNS/REG/registerStepOne.jsp";	
});
$("#userCode").focus(function() {
	$(this).parent().addClass("ui_input_text_hover");
	var temp = $(this).val();
	if("请输入您的帐号"==temp){
		$(this).val("");
		$(this).css("color","black");
	}
});
$("#userCode").blur(function() {
	$(".login-text-border").removeClass("ui_input_text_hover");
	var temp = $(this).val();
	if(""==temp){
		$(this).val("请输入您的帐号");
		$(this).css("color","#cccccc");
	}
});
$("#password").focus(function() {
	$(this).parent().addClass("ui_input_text_hover");
	var temp = $(this).val();
	if("请输入您的密码"==temp){
		$(this).val("");
		$(this).css("color","black");
	}
});
$("#password").blur(function() {
	$(".login-text-border").removeClass("ui_input_text_hover");
	var temp = $(this).val();
	if(""==temp){
		$(this).val("");
		$(this).css("color","#cccccc");
	}
});
</script>
</body>
	
</html>
