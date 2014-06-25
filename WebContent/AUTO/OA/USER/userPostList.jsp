<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>修车人后台管理系统-用户岗位列表</title>
		<%@include file="../include/autoOABaseInclude.jsp" %>
	</head>

	<body>
	<form id="search">
	<!-- 隐藏信息 START -->
		<div style="display: none;">
<!--			<input name="aupoGuid" class="mini-hidden" />-->
		</div>
	<!-- 隐藏信息 END -->
	 <!-- 主内容 START-->
		<div style="width:100%;height:100%;">
			<!-- 查询  START-->
			<div style="padding-bottom:5px;">
				<span class="form-label">岗位代码：</span><input class="mini-textbox" name="aupoPostCode" vtype="maxLength:50" />
				<span class="form-label">岗位名称：</span><input class="mini-textbox" name="aupoPostName" vtype="maxLength:50" />
				<a class="mini-button" onclick="search()">查询</a>
				<a class="mini-button" onclick="reset()">重置</a>
			</div>
			<!-- 查询  END-->
	        <div class="mini-toolbar" style="border-bottom:0;padding:0px;">
				<a class="mini-button" onclick="saveData()">保存列表修改</a>
				<a class="mini-button" onclick="add()">增加</a>
				<a class="mini-button" onclick="edit()">编辑</a>
				<a class="mini-button" onclick="remove()">删除</a>
	        </div>
	        <!-- 列表  START-->
	        <div id="datagrid1" class="mini-datagrid" style="width:100%;height:380px;" 
				url="${ctx}/userPost/queryPageListOaUserPost.action" idField="aupoGuid"
				allowResize="true" sizeList="[10,20,50,100]" pageSize="20" 
				allowCellEdit="true" allowCellSelect="true" multiSelect="true">
			    <div property="columns">
			        <div type="checkcolumn" width="5%"></div>
			        <div field="aupoPostCode" width="15%" headerAlign="center" allowSort="true" align="center">
			        	岗位代码
			        	<input property="editor" class="mini-textbox" style="width:100%;" />
			        </div>
			        <div field="aupoPostName" width="15%" headerAlign="center" allowSort="true" align="center">
			        	岗位名称
			        	<input property="editor" class="mini-textbox" style="width:100%;" />
			        </div>
			        <div field="aupoOrgName" width="15%" headerAlign="center" allowSort="true" align="center">
			        	所属组织名称
			        	<input property="editor" class="mini-textbox" style="width:100%;" />
			        </div>
			        <div field="aupoOrgCode" width="15%" headerAlign="center" allowSort="true" align="center">
			        	所属组织代码 
			        	<input property="editor" class="mini-textbox" style="width:100%;" />
			        </div>
			        <div field="isValidity" width="15%" headerAlign="center" allowSort="true" align="center" type="comboboxcolumn" autoShowPopup="true">
			        	是否有效
			        	<input property="editor" class="mini-combobox" style="width:100%;" data="IsValidity"/>
			        </div>
			    </div>
			</div>
			<!-- 列表  END-->
	    </div>
	<!-- 主内容  END-->
	</form>
</body>
<script type="text/javascript">
var IsValidity = [{id: 1, text: '是'}, {id: 0, text: '否'}];
mini.parse();
var grid = mini.get("datagrid1");
grid.load();

function search() {
	var form = new mini.Form("#search");
	var data = form.getData();      //获取表单多个控件的数据
	var jsonSearch = mini.encode(data);   //序列化成JSON
    grid.load({'search': jsonSearch});
}

function add(){
	mini.open({
	    url: "${ctx}/AUTO/OA/USER/userPostAdd.jsp",           
	    title: "用户岗位新增",
	    width: 650,
	    height: 380,
	    ondestroy: function (action) {                  
	        grid.reload();
	    }
	});
}

function edit() {
    
    var row = grid.getSelected();
    if (row) {
        mini.open({
            url: "${ctx}/AUTO/OA/USER/userPostAdd.jsp",
            title: "编辑区域信息", width: 600, height: 360,
            onload: function () {
                var iframe = this.getIFrameEl();
                var data = { action: "edit", aupoGuid: row.aupoGuid };
                iframe.contentWindow.SetData(data);
                
            },
            ondestroy: function (action) {
                grid.reload();
                
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
                ids.push(r.aupoGuid);
            }
            var aupoGuid = ids.join(',');
            grid.loading("操作中，请稍后......");
            $.ajax({
                url: "${ctx}/userPost/deleteOaUserPost.action?aupoGuid=" +aupoGuid,
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
        url: "${ctx}/userPost/saveOrUpdateOaUserPost.action",
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
</script>
</html>
