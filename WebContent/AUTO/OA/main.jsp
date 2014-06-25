<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>修车人后台管理系统-首页</title>

		<meta http-equiv="keywords" content="修车人 管理系统">
		<meta http-equiv="description" content="本系统用于修车人网站后台管理">
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		
		<%@include file="include/autoOABaseInclude.jsp" %>
	</head>

	<body>
	 <!-- 主内容 -->
		<div style="width:100%;height:100%;">
			<div class="welcome">
				<div class="tit">欢迎使用修车人网站后台管理系统</div>

				<div class="use-img-box">
					<a class="user-img-link fl" href="javascript:void(0);" title="头像" >
						<img class="user-img-wh" src="${sessionUserInfo.userHeadImagePath}">	
					</a>
					<div class="fl">
						<div class="font-main">
						公司名称：<span >${sessionUserInfo.auorgName}</span>	
						</div>
	
						<div class="font-main">
						用户姓名：<span >${sessionUserInfo.auserName}</span>
						</div>
			
						<div class="font-main">
						用户帐号：<span >${sessionUserInfo.auserCode}</span>
						</div>
		
						<div class="font-main">
						上次登录时间：<span ><fmt:formatDate value="${sessionUserInfo.updateTime}" type="both" pattern="yyyy-MM-dd HH:mm:ss"/></span>
						
						</div>

					</div>
					<div class="cb"></div>
				</div>		
			</div>
	    </div>
	<!-- 主内容  END-->
		
	<script type="text/javascript">
    </script>
</body>
</html>
