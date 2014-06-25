<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>修车人后台管理系统-菜单结构树</title>
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
			<ul id="tree1" class="mini-tree" url="${ctx}/menu/queryTreeOaMenuInfo.action" style="width:100%;height:100%;" 
		        showTreeIcon="true" textField="apmeMenuName" idField="apmeGuid" parentField="apmeParentGuid" resultAsTree="false"  
		        allowDrag="true" allowDrop="true" onbeforeload="onBeforeTreeLoad" onbeforeexpand="onBeforeNodeExpand"  
		        onnodeclick="onNodeSelect" loadOnExpand="false"
		        >
		    </ul>
		</div>
		<!-- 主内容  END-->
	
</body>
<script type="text/javascript">
mini.parse();

function onBeforeTreeLoad(e) {
	var form = new mini.Form("#search");
	var tree = e.sender;    //树控件
	var node = e.node;      //当前节点
	var params = e.params;  //参数对象
	//可以传递自定义的属性
	var obj = {
		apmeParentGuid: node.apmeGuid
	};
	form.setData(obj);
	var data = form.getData();      //获取表单多个控件的数据
	var jsonSearch = mini.encode(data);   //序列化成JSON
	params.search = jsonSearch;		//后台：request对象获取"search"
}
function onBeforeNodeExpand(e) {
	var tree = e.sender;
	var node = e.node;
    if (node) {
        tree.loadNode(node);
    }
}
function onNodeSelect(e){
	var tree = e.sender;
	var node = e.node;
	node.isLeaf = false;
	tree.loadNode(node);
	var menuInfoFrame = $('#menuInfoFrame', parent.document);
	var initJsonSearch = "{\"apmeParentGuid\":\""+node.apmeGuid+"\"}";   //序列化成JSON
	$(menuInfoFrame).attr("src", "${ctx}/AUTO/OA/MENU/menuInfoList.jsp?initJsonSearch="+initJsonSearch);
}
</script>
</html>
