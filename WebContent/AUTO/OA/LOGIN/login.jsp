<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>修车人社区管理系统-登录页</title>

		<meta http-equiv="keywords" content="修车人社区 管理系统  登录页面">
		<meta http-equiv="description" content="本系统用于修车人网站后台管理登录页">
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">

		<link rel="stylesheet" type="text/css" href="${ctx}/AUTO/OA/LOGIN/css/base.css" />
		<link rel="stylesheet" type="text/css" href="${ctx}/AUTO/OA/LOGIN/css/common_admin.css" />
		
		<script src="${ctx}/AUTO/OA/js/jquery-1.7.2.min.js" type="text/javascript"></script>
		<script src="${ctx}/AUTO/OA/LOGIN/js/common.js" type="text/javascript"></script>
	</head>

	<body class="login-bg" >
	  <form id="loginForm" action="${ctx}/oaLogin/autoManagerLogin.action" method="post">
		<div class="login-logo">
			**系统
		</div>
		<div class="login-main">
			<div class="panel-center mt50 ml650">
				<ul class="login-ul">
					<li class="login-li">
						<span class="login-item fl">用户名：</span>
						<input type="text" name="userCode" class="login-input w300 fl" >
						<span ></span>
						<div id="userCodeError" class="cb"  style="color: red;font-size: 14px;"></div>
					</li>
					<li class="login-li">
						<span class="login-item fl">密&nbsp;&nbsp;&nbsp;码：</span>
						<input type="password" name="userPassword" class="login-input w300 fl" >
						<span ></span>
						<div id="userPasswordError"  class="cb"  style="color: red;font-size: 14px;"></div>
					</li>
					<li class="login-li">
						<span class="login-item fl" style="width:100%;color: red">${requestScope.loginError}</span>
					</li>
				<!--			
					<li class="login-li">
						<span class="login-item fl">验证码：</span>
						<input type="text" " class="login-input w150 fl" name="" id="">
						<img alt="验证码。。。。" src="" class="captchaImage ml10 fl" id="">
						<span id="j_captchaTip"></span>
						<div class="cb"></div>
					</li>
				-->
					<li class="login-li">
						<span class="login-item fl"></span>
						<a id="login" class="login-link fl">登 录</a>
						<div class="status-red fl lh30 ml20"></div>
						<div class="cb"></div>
					</li>
				</ul>
				<div class="cb"></div>
			</div>
		</div>
		<div class="login-footer">
			<span class="login-footer-01">修车人社区管理系统@2012版权所有 All Right Reserved</span>
			<span class="login-footer-01 pl20">本网站之所有信息及作品，未经书面授权不得转载</span>
		</div>
	  </form>
	  <script type="text/javascript">
	//校验用户名
		$("input[name=userCode]").blur(function() {
			var temp = $(this).val();
			if(""==temp){
				$('#userCodeError').html("请填写用户名！");
			}else{
				$('#userCodeError').html("");
			}
		});
		//校验密码
		$("input[name=userPassword]").blur(function() {
			var temp = $(this).val();
			if(""==temp){
				$('#userPasswordError').html("请填写密码！");
			}else{
				$('#userPasswordError').html("");
			}
		});
		//登录
		$('#login').click(function(){
			var userCodeVal = $("input[name=userCode]").val();
			if(""==userCodeVal){
				$('#userCodeError').html("请填写用户名！");
			}
			
			var userPasswordVal = $("input[name=userPassword]").val();
			if(""==userPasswordVal){
				$('#userPasswordError').html("请填写密码！");
			}
			if(userCodeVal.length>0 && userPasswordVal.length>0){
				$('#loginForm').submit();
			}
		});
		//回车
	  	$(document).keydown(function(e) {
	  		var varkey = e.which;
	  		if(varkey==13){
	  			$('#login').click();
		  	}
        });
	  </script>
	</body>
</html>
