<%@page import="com.system.util.SessionUtil"%>
<%@ page contentType="text/html;charset=UTF-8"%>

<%
//session超时时间设置
//request.getSession().setMaxInactiveInterval(10);

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>修车人管理系统-首页</title>

		<meta http-equiv="keywords" content="修车人管理系统">
		<meta http-equiv="description" content="本系统用于修车人网站管理">
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">

		<%@include file="include/autoOABaseInclude.jsp" %>
		
		<style type="text/css">
	    body{
	        margin:0;padding:0;border:0;width:100%;height:100%;overflow:visible;
	    } 
	    </style> 
	</head>

	<body>
		<form action="${ctx}/oaLogin/autoManagerLogout.action" method="post"></form>
		
		<div id="layout1" class="mini-layout" style="width:100%;height:100%;">
		    <div class="header" region="north" height="80" showSplit="true" showHeader="false" >
				<div class="mini-logo-pic">
			  	 	<img src="${ctx}/AUTO/OA/js/miniui/themes/auto2012/images/logo.png"  class="mt5"/>
				</div>
				<div class="mini-operation mr10">
			   		<div class="fl">
						<a title="个人信息" href="javascript:void(0);" class="user-name-ico fl "></a>
					</div>
					<div class="ml10 fl">
						<a title="修改密码" href="javascript:resetPWD();" class="role-ico fl "></a>
					</div>
					<div class="ml10 fl mini-exit">
						<a title="修车人社区" href="javascript:snsPage();" class="web-ico fl "></a>
					</div>
					<div class="ml10 fl mini-exit">
						<a title="退出" href="javascript:doLogout();" class="exit-ico fl "></a>
					</div>
				</div>
				<!--导航 一级菜单 START -->
				<div style="clear:both;">
				    <ul id="menu1" class="mini-menubar" style="width:100%;" url="${ctx}/menu/queryFirstMenu.action" 
					  	idField="apmeGuid" parentField="apmeParentGuid" textField="apmeMenuName" onitemclick="onItemClick" >
					</ul>
				</div>
				<!--导航 一级菜单 END -->
		    </div>
		    <!-- 页底 START -->
		    <div title="south" region="south" showSplit="false" showHeader="false" height="30" >
				<div style="line-height:28px;text-align:center;cursor:default">Copyright © 修车人 </div>
		    </div>
		    <!-- 页底 END -->
	        <!--导航 二级菜单 START OutlookMenu-->
		    <div showHeader="false" region="west" width="180" maxWidth="250" minWidth="100" >
		        <div id="leftTree" class="mini-outlookmenu" url="${ctx}/menu/queryFirstMenu.action" onitemselect="onItemSelect"
		            idField="apmeGuid" parentField="apmeParentGuid" textField="apmeMenuName" borderStyle="border:0" >
		        </div>
		    </div>
			<!-- 导航 二级菜单 END-->
			<!-- 主内容 START -->
		    <div title="center" region="center" bodyStyle="overflow:hidden;">
		        <iframe id="mainframe" frameborder="0" name="main" style="width:100%;height:100%;" border="0"></iframe>
		    </div>
		    <!-- 主内容 END -->
		</div>
		
	<script type="text/javascript">
	mini.parse();
	var iframe = document.getElementById("mainframe");
	iframe.src = "${ctx}/AUTO/OA/main.jsp";
	
	function onItemClick(e) {
	    var item = e.item;
	    var url = "${ctx}/"+item.apmeMenuUrl;
	    var isLeaf = e.isLeaf;
	    if(isLeaf){
		    iframe.src = url;
		}
	}
	function onItemSelect(e) {
		var item = e.item;
	    var url = "${ctx}/"+item.apmeMenuUrl;
		iframe.src = url;
	}
	//修改密码
	function resetPWD() {
	    mini.open({
	        url: "${ctx}/AUTO/OA/USER/resetPWD.jsp",
	        title: "修改密码", width: 600, height: 360,
	        ondestroy: function (action) {
	            //grid.reload();
	        }
	    });
	}
	
	//弹出修车人社区首页
	function snsPage(){
		var url = "http://www.xcrauto.com/";
		window.open(url);
	}
	
	function showTab(node) {
		var tabs = mini.get("tabs1");
	
		var id = "tab$" + node.id;
		var tab = tabs.getTab(id);
		if (!tab) {
			tab = {};
			tab.name = id;
			tab.title = node.text;
			tab.showCloseButton = true;
			
			//这里拼接了url，实际项目，应该从后台直接获得完整的url地址
			tab.url = node.url;
			
			tabs.addTab(tab);
		}
		tabs.activeTab(tab);
	}
	
	function doLogout(){
		alert("您已安全退出");
		document.forms[0].submit();
	}
	
	$(".mini-title li").live('click',function(){
		$(".mini-title li").removeClass("mini-select");
			$(this).addClass("mini-select");
		
	});
	
	</script>
	</body>
</html>
