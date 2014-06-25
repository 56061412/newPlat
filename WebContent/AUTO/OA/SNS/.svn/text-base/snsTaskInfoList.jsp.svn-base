<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>修车人后台管理系统-任务信息列表</title>
		<%@include file="../include/autoOABaseInclude.jsp" %>
	</head>

	<body>
	 <!-- 主内容 START-->
		<div style="width:100%;height:100%;">
		  <form id="search">
			<!-- 隐藏信息 START -->
			<div style="display: none;">
<!-- 				<input id="apmeParentGuid" name="apmeParentGuid" class="mini-textbox" /> -->
			</div>
			<!-- 隐藏信息 END -->
		  
			<!-- 查询  START-->
			<div style="padding-bottom:5px;">
				<span class="form-label">任务标题：</span><input class="mini-textbox" name="taskName" vtype="maxLength:50" />
				<a class="mini-button" onclick="search()">查询</a>
				<a class="mini-button" onclick="reset()">重置</a>
			</div>
			<!-- 查询  END-->
		  </form>
	        <div class="mini-toolbar" style="border-bottom:0;padding:0px;">
				<a class="mini-button" onclick="saveData()">保存</a>
				<a class="mini-button" onclick="edit()">编辑</a>
				<a class="mini-button" onclick="remove()">删除</a>
	        </div>
	        <!-- 列表  START-->
	        <div id="datagrid1" class="mini-datagrid" style="width:100%;height:380px;" 
				url="${ctx}/sns/queryPageListSNSTask.action" idField="taskGuid"
				allowResize="true" sizeList="[10,20,50,100]" pageSize="20" 
				allowCellEdit="true" allowCellSelect="true" multiSelect="true">
			    <div property="columns">
			        <div type="checkcolumn" width="5%"></div>
			        <div field="taskName" width="15%" headerAlign="center" allowSort="true" align="center">
			        	任务名称
			        	<input property="editor" class="mini-textbox" style="width:100%;" />
			        </div>
			        <div field="publishPersonName" width="15%" headerAlign="center" allowSort="true" align="center">
			        	发送人
			        	<input property="editor" class="mini-textbox" style="width:100%;" />
			        </div>
			        <div field="createTime" width="15%" headerAlign="center" allowSort="true" align="center" dateFormat="yyyy-MM-dd HH:mm:ss">
			        	发送时间
			        	<input property="editor" class="mini-textbox" style="width:100%;" />
			        </div>
			        <div field="content" width="50%" headerAlign="center" allowSort="true" align="center">
			        	发送内容
			        	<input property="editor" class="mini-textbox" style="width:100%;" />
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

function search() {
	var form = new mini.Form("#search");
	var o = mini.decode('${param.initJsonSearch}');
	form.setData(o);
	
	var data = form.getData();      //获取表单多个控件的数据
	var jsonSearch = mini.encode(data);   //序列化成JSON
    grid.load({'search': jsonSearch});
}

function add(){
	var apmeParentGuid = $("input[name='apmeParentGuid']").val();
	var initJsonData = "{\"apmeParentGuid\":\""+apmeParentGuid+"\"}";   //序列化成JSON
	mini.open({
	    url: "${ctx}/AUTO/OA/MENU/menuInfoAdd.jsp?initJsonData="+initJsonData,
	    title: "菜单配置新增",
	    width: 650,
	    height: 380,
	    ondestroy: function (action) {
	        grid.reload();
	        reloadTreeNode();
	    }
	});
}

function edit() {
    var row = grid.getSelected();
    if (row) {
        mini.open({
            url: "${ctx}/AUTO/OA/MENU/menuInfoAdd.jsp",
            title: "编辑区域信息", width: 600, height: 360,
            onload: function () {
                var iframe = this.getIFrameEl();
                var data = { action: "edit", apmeGuid: row.apmeGuid };
                iframe.contentWindow.SetData(data);
                
            },
            ondestroy: function (action) {
                grid.reload();
                reloadTreeNode();
            }
        });
        
    } else {
        alert("请选中一条记录");
    }
}

function remove() {
    var rows = grid.getSelecteds();
    if (rows.length > 0) {
        if (confirm("确定删除选中记录？")) {
            var ids = [];
            for (var i = 0, l = rows.length; i < l; i++) {
                var r = rows[i];
                ids.push(r.taskGuid);
            }
            var taskGuid = ids.join(',');
            grid.loading("操作中，请稍后......");
            var url = "${ctx}/sns/deleteSNSTaskInfo.action?taskGuid=" +taskGuid;
            $.ajax({
            	type: 'post',
                url: url,
                success: function (text) {
                    grid.reload();
                },
                error: function () {
                }
            });
        }
    } else {
        alert("请选中一条记录");
    }
}

function addRow() {
    var newRow = { name: "New Row" };
    grid.addRow(newRow, 0);
}
function removeRow() {
    var rows = grid.getSelecteds();
    if (rows.length > 0) {
        grid.removeRows(rows, true);
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

</script>
</html>
