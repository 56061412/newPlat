<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>修车人后台管理系统-角色配置树</title>
		<%@include file="../include/autoOABaseInclude.jsp" %>
	</head>

	<body>
		<form id="search">
		<!-- 隐藏信息 START -->
			<div style="display: none;">
				<input name="apmeParentGuid" class="mini-textbox" />
			</div>
		<!-- 隐藏信息 END -->
		</form>
		<!-- 主内容 START -->
		<div style="width:100%;height:100%;">
			<ul id="tree1" class="mini-tree" url="${ctx}/menuRole/queryTreeOaMenuRole.action" style="width:100%;height:100%;" 
		        showTreeIcon="true" textField="aproRoleName" idField="aproGuid" parentField="aproGuid" resultAsTree="true" 
		        onnodeclick="onNodeSelect">
		    </ul>
		</div>
		<!-- 主内容  END-->
	
</body>
<script type="text/javascript">
mini.parse();

function onNodeSelect(e){
	var tree = e.sender;
	var node = e.node;
	var menuRoleFrame = $('#menuRoleFrame', parent.document);
	var initJsonSearch = "{\"aproGuid\":\""+node.aproGuid+"\"}";   //序列化成JSON
	$(menuRoleFrame).attr("src", "${ctx}/AUTO/OA/MENU/menuRoleUserList.jsp?initJsonSearch="+initJsonSearch);
}
</script>
</html>
