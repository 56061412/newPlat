<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>修车人后台管理系统-菜单角色配置列表</title>
		<%@include file="../include/autoOABaseInclude.jsp" %>
	</head>

	<body>
	 <!-- 主内容 START-->
		<div style="width:100%;height:100%;">
		  <form id="search">
			<!-- 隐藏信息 START -->
			<div style="display: none;">
				<input id="apmeGuid" name="apmeGuid" class="mini-textbox" />
			</div>
			<!-- 隐藏信息 END -->
		  
			<!-- 查询  START-->
			<div style="padding-bottom:5px;">
				<span class="form-label">菜单名称：</span><input class="mini-textbox" name="apmeMenuName" vtype="maxLength:50" />
				<span class="form-label">菜单说明：</span><input class="mini-textbox" name="apmeMenuDesc" vtype="maxLength:50" />
				<a class="mini-button" onclick="search()">查询</a>
				<a class="mini-button" onclick="reset()">重置</a>
			</div>
			<!-- 查询  END-->
		  </form>
	        <div class="mini-toolbar" style="border-bottom:0;padding:0px;">
				<a class="mini-button" onclick="remove()">删除</a>
				添加角色
				<input id="aproGuids" name="aproGuids" class="mini-lookup" style="width:200px;" 
			    	textField="aproRoleName" valueField="aproGuid" popupWidth="auto"
			    	popup="#gridPanel" grid="#selectRoleDatagrid" multiSelect="true"
			    />
			    <a class="mini-button" onclick="saveMenuRoleData()">保存</a>
			    <div id="gridPanel" class="mini-panel" title="header" iconCls="icon-add" style="width:450px;height:250px;" 
			        showToolbar="true" showCloseButton="true" showHeader="false" bodyStyle="padding:0" borderStyle="border:0" 
			    >
			        <div property="toolbar" style="padding:5px;padding-left:8px;text-align:center;">   
			            <div style="float:left;">
			                <span>角色名称：</span>                
			                <input id="aproRoleName" name="aproRoleName" class="mini-textbox" style="width:160px;" onenter="onSearchClick"/>
			                <a class="mini-button" onclick="onSearchClick">查询</a>
			                <a class="mini-button" onclick="onClearClick">清除</a>
			            </div>
			            <div style="float:right;">
			                <a class="mini-button" onclick="onCloseClick">关闭</a>
			            </div>
			            <div style="clear:both;"></div>
			        </div>
			        <div id="selectRoleDatagrid" class="mini-datagrid" style="width:100%;height:100%;" 
			            borderStyle="border:0" showPageSize="false" showPageIndex="false" idField="aproGuid"
			            url="${ctx}/menuRole/queryPageListOaMenuRole.action" 
			        >
			            <div property="columns">
			                <div type="checkcolumn" ></div>
			                <div field="aproRoleCode" headerAlign="center" allowSort="true">角色代码</div>
			                <div field="aproRoleName" headerAlign="center" allowSort="true">角色名称</div>
			            </div>
			        </div>  
			    </div>
	        </div>
	        <!-- 列表  START-->
	        <div id="datagrid1" class="mini-datagrid" style="width:100%;height:380px;" 
				url="${ctx}/menu/queryPageListOaMenuInfoExtend.action" idField="aprmmGuid"
				allowResize="true" sizeList="[10,20,50,100]" pageSize="20" 
				allowCellEdit="true" allowCellSelect="true" multiSelect="true">
			    <div property="columns">
			        <div type="checkcolumn" width="5%"></div>
			        <div field="apmeMenuName" headerAlign="center" allowSort="true" align="center">
			        	菜单名称
			        </div>
			        <div field="aproRoleName" headerAlign="center" allowSort="true" align="center">
			        	角色名称
			        </div>
			    </div>
			</div>
			<!-- 列表  END-->
	    </div>
	<!-- 主内容  END-->
	
</body>
<script type="text/javascript">
mini.parse();
var grid = mini.get("datagrid1");
//grid.load();
search();

var selectRoleDatagrid = mini.get("selectRoleDatagrid");
selectRoleDatagrid.load();

function search() {
	var form = new mini.Form("#search");
	var o = mini.decode('${param.initJsonSearch}');
	form.setData(o);
	
	var data = form.getData();      //获取表单多个控件的数据
	var jsonSearch = mini.encode(data);   //序列化成JSON
    grid.load({'search': jsonSearch});
}

function remove() {
    var rows = grid.getSelecteds();
    if (rows.length > 0) {
        if (confirm("确定删除选中记录？")) {
            var ids = [];
            for (var i = 0, l = rows.length; i < l; i++) {
                var r = rows[i];
                ids.push(r.aprmmGuid);
            }
            var aprmmGuid = ids.join(',');
            grid.loading("操作中，请稍后......");
            $.ajax({
                url: "${ctx}/menu/deleteOaMenuRoleMap.action?aprmmGuid=" +aprmmGuid,
                success: function (text) {
                    grid.reload();
                    reloadTreeNode();
                },
                error: function () {
                }
            });
        }
    } else {
        alert("请选中一条记录");
    }
}
function saveData() {
    var data = grid.getChanges();
    var json = mini.encode(data);

    grid.loading("保存中，请稍后......");
    $.ajax({
        url: "${ctx}/menu/saveOrUpdateOaMenuInfo.action",
        data: { 'data': json },
        type: "post",
        success: function (text) {
            grid.reload();
            reloadTreeNode();
        },
        error: function (jqXHR, textStatus, errorThrown) {
            alert(jqXHR.responseText);
        }
    });
}
function reloadTreeNode(){
	var treeFrame = $('#treeFrame', parent.document);
	var tree = $(treeFrame)[0].contentWindow.mini.get("tree1");
	var node = tree.getSelectedNode();
	tree.loadNode(node);
}


function onSearchClick() {
	var aproRoleNameValue = mini.get("aproRoleName").value;
	var jsonSearch = "{\"aproRoleName\":\""+aproRoleNameValue+"\"}";   //序列化成JSON
	selectRoleDatagrid.load({'search': jsonSearch});
}
function onCloseClick(e) {
	selectRoleDatagrid.hidePopup();
}
function onClearClick(e) {
	selectRoleDatagrid.deselectAll();
}
function saveMenuRoleData() {
    var apmeGuidValue = mini.get("apmeGuid").value;
    var aproGuidsValue = mini.get("aproGuids").value;
    grid.loading("保存中，请稍后......");
    $.ajax({
        url: "${ctx}/menu/saveOrUpdateOaMenuRoleMap.action",
        data: { 'apmeGuid': apmeGuidValue, 'aproGuids': aproGuidsValue },
        type: "post",
        success: function (text) {
            grid.reload();
        },
        error: function (jqXHR, textStatus, errorThrown) {
            alert(jqXHR.responseText);
        }
    });
}
</script>
</html>
