<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>修车人后台管理系统-系统常量代码管理</title>
		<%@include file="../include/autoOABaseInclude.jsp" %>
	</head>

	<body>
	<form id="search">
	<!-- 隐藏信息 START -->
		<div style="display: none;">
			<input name="osccParentGuid" class="mini-hidden" value=""/>
		</div>
	<!-- 隐藏信息 END -->
	 <!-- 主内容 START-->
		<div style="width:100%;height:100%;">
			<!-- 查询  START-->
<!--			<div style="padding-bottom:5px;">-->
<!--				<span class="form-label">组织名称：</span><input class="mini-textbox" name="auorgName" />-->
<!--				<a class="mini-button" onclick="search()">查询</a>-->
<!--				<span style="display:inline-block;width:15px;"></span>-->
<!--				<a class="mini-button" onclick="reset()">重置</a>-->
<!--			</div>-->
			<!-- 查询  END-->
	        <div class="mini-toolbar" style="border-bottom:0;padding:0px;">
	        	<a class="mini-button" onclick="saveData()">保存</a>
				<a class="mini-button" onclick="add()">新增</a>
<!-- 				<a class="mini-button" onclick="edit()">编辑</a> -->
				<a class="mini-button" onclick="remove()">删除</a>
<!--				<a class="mini-button" onclick="editself()">编辑本节点</a>-->
	        </div>
	        <!-- 列表  START-->
	        <div id="datagrid1" class="mini-datagrid" style="width:100%;height:380px;" 
				url="${ctx}/sys/queryPageListOaSysConstantCode.action" idField="osccGuid"
				allowResize="true" sizeList="[10,20,50,100]" pageSize="20" 
				allowCellEdit="true" allowCellSelect="true" multiSelect="true">
			    <div property="columns">
			        <div type="checkcolumn" width="2%"></div>
			        <div field="osccName" width="8%" headerAlign="center" allowSort="true" align="center">
			        	常量名称
			        	<input property="editor" class="mini-textbox" style="width:100%;" />
			        </div>
			        <div field="osccCode" width="6%" headerAlign="center" allowSort="true" align="center">
			        	常量代码
			        	<input property="editor" class="mini-textbox" style="width:100%;" />
			        </div>
			    </div>
			</div>
			<!-- 列表  END-->
	    </div>
	<!-- 主内容  END-->
	</form>
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
	var osccParentGuid = $("input[name='osccParentGuid']").val();
	var initJsonData = "{\"osccParentGuid\":\""+osccParentGuid+"\"}";   //序列化成JSON
	mini.open({
	    url: "${ctx}/AUTO/OA/SYS/sysConstantCodeAdd.jsp?initJsonData="+initJsonData,
	    title: "新增系统常量代码",
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
            url: "${ctx}/AUTO/OA/SYS/sysConstantCodeAdd.jsp",
            title: "编辑系统常量代码", width: 600, height: 360,
            onload: function () {
                var iframe = this.getIFrameEl();
                var data = { action: "edit", auorgGuid: row.auorgGuid };
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
function editself() {
    
    var row = grid.getSelected();
    var osccParentGuid = $("input[name='osccParentGuid']").val();

	mini.open({
	    url: "${ctx}/AUTO/OA/SYS/sysConstantCodeAdd.jsp",
	    title: "编辑区域信息", width: 600, height: 360,
	    onload: function () {
	        var iframe = this.getIFrameEl();
	        var data = { action: "edit", osccGuid: osccParentGuid };
	        iframe.contentWindow.SetData(data);
	        
	    },
	    ondestroy: function (action) {
	        grid.reload();
	        reloadTreeNode();
	    }
	});
        
}

function remove() {
    var rows = grid.getSelecteds();
    if (rows.length > 0) {
        if (confirm("确定删除选中记录？")) {
            var ids = [];
            for (var i = 0, l = rows.length; i < l; i++) {
                var r = rows[i];
                ids.push(r.osccGuid);
            }
            var osccGuid = ids.join(',');
            grid.loading("操作中，请稍后......");
            $.ajax({
                url: "${ctx}/sys/deleteOaSysConstantCode.action?osccGuid=" +osccGuid,
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
        url: "${ctx}/sys/saveOrUpdateOaSysConstantCode.action",
        data: { 'data': json },
        type: "post",
        success: function (text) {
            grid.reload();
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
