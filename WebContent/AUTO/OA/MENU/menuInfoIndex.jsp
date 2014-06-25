<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>修车人管理系统-菜单信息框架页面</title>

		<meta http-equiv="keywords" content="修车人管理系统">
		<meta http-equiv="description" content="本系统用于修车人网站管理">
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">

		<%@include file="../include/autoOABaseInclude.jsp" %>
		
		<style type="text/css">
	    body{
	        margin:0;padding:0;border:0;width:100%;height:100%;overflow:visible;
	    } 
	    </style> 
	</head>

	<body>
		<div id="layout1" class="mini-layout" style="width:100%;height:100%;">
		    <!-- 树结构 -->
		    <div showHeader="false" region="west" width="181" maxWidth="250" minWidth="100" >
		    	<iframe id="treeFrame" src="${ctx}/AUTO/OA/MENU/menuInfoTree.jsp" frameborder="0" name="treeFrame" style="width:100%;height:100%;" border="0"></iframe>
		    </div>
		    <!-- 主内容 -->
		    <div title="center" region="center" bodyStyle="overflow:hidden;" style="border:0;">
		        <iframe id="menuInfoFrame" src="" frameborder="0" name="menuInfoFrame" style="width:100%;height:100%;" border="0"></iframe>
		    </div>
		</div>
		
<script type="text/javascript">

</script>
</body>
</html>
