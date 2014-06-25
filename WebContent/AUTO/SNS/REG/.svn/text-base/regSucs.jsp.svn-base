<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="author" content="Tocersoft" />
		<meta name="keywords"
			content="社交网络，协作平台，私密的社交网络，沟通、协作和分享，修车，社交服务，sns，SNS" />
		<meta name="description"
			content="国内第一个为修车人服务的社交网络平台，为汽修公司、厂家创建免费的、私密的内部社交网络，并与同事进行基于工作的沟通、协作和分享" />
		<meta name="robots" content="all" />
		<title>注册成功-国内第一个为修车人服务的社交网络平台</title>
		
		<%@include file="../include/autoSNSBaseInclude.jsp" %>
	</head>
	<body>
		<div class="head-part">
			<div class="head-main">
				<a class="logo-white fl" href=""></a>
				<a class="help-buttom fr ml10 mt40" href=""></a>
				<a class="login-buttom fr  ml10 mt40" href=""></a>
			</div>
			<div class="cb"></div>
		</div>
		<div class="rs-main pr">
			<div class="rs-bar"></div>
			<div class="rs-font">注册成功</div>
			<div class="re-font">
				恭喜注册成功，您的帐号信息正在审核中。审核通过后将发送邮件通知您。
<!--				页面将在<span class="red f16" id="leftSecond"> 3 </span>秒后跳转至个人中心，若未跳转，-->
<!--				<a class="red-font f16" href="${ctx}/AUTO/SNS/MAIN/main.jsp">请点击这里</a> -->
			</div>
			<div class="rs-girl"></div>
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
		
		<script type="text/javascript">
			var leftSeconds = 3;
	        var timeIntervalId;
	        $(function(){
	            //timeIntervalId=setInterval("CountDown()", 1000);
	        });
	        function CountDown() {
	            if(leftSeconds<=0){
	                var url = "${ctx}/AUTO/SNS/MAIN/main.jsp";
	                window.location.href = url;
	                clearInterval(timeIntervalId);
	                return;
	            }
	            leftSeconds--;
	            $("#leftSecond").text(leftSeconds);
	            $("#btnReg").val("请仔细阅读，还剩下"+leftSeconds+"秒");
	        }
		</script>
	</body>
</html>
