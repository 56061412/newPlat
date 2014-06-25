<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>修车人后台管理系统-角色配置列表</title>
		<%@include file="../include/autoOABaseInclude.jsp" %>
	</head>

	<body>
	 <!-- 主内容 START-->
		<div style="width:100%;height:100%;">
		  <form id="search">
			<!-- 隐藏信息 START -->
			<div style="display: none;">
				<input id="aproGuid" name="aproGuid" class="mini-hidden" />
			</div>
			<!-- 隐藏信息 END -->
			<!-- 查询  START-->
			<div style="padding-bottom:5px;">
				<span class="form-label">姓名 ：</span><input class="mini-textbox" name="auserName" vtype="maxLength:50" />
				<a class="mini-button" onclick="search()">查询</a>
				<a class="mini-button" onclick="reset()">重置</a>
			</div>
		  </form>
			<!-- 查询  END-->
	        <div class="mini-toolbar" style="border-bottom:0;padding:0px;">
				<a class="mini-button" onclick="add()">增加</a>
				<a class="mini-button" onclick="edit()">编辑</a>
				<a class="mini-button" onclick="remove()">删除</a>
				
				添加人员
				<input id="auserGuids" name="auserGuids" class="mini-lookup" style="width:200px;" 
			    	textField="auserName" valueField="auserGuid" popupWidth="auto"
			    	popup="#gridPanel" grid="#selectUserDatagrid" multiSelect="true"
			    />
			    <a class="mini-button" onclick="saveData()">保存</a>
			    <div id="gridPanel" class="mini-panel" title="header" iconCls="icon-add" style="width:450px;height:250px;" 
			        showToolbar="true" showCloseButton="true" showHeader="false" bodyStyle="padding:0" borderStyle="border:0" 
			    >
			        <div property="toolbar" style="padding:5px;padding-left:8px;text-align:center;">
			            <div style="float:left;">
			                <span>姓名：</span>
			                <input id="keyText" class="mini-textbox" style="width:160px;" onenter="onSearchClick"/>
			                <a class="mini-button" onclick="onSearchClick">查询</a>
			                <a class="mini-button" onclick="onClearClick">清除</a>
			            </div>
			            <div style="float:right;">
			                <a class="mini-button" onclick="onCloseClick">关闭</a>
			            </div>
			            <div style="clear:both;"></div>
			        </div>
			        <div id="selectUserDatagrid" class="mini-datagrid" style="width:100%;height:100%;" 
			            borderStyle="border:0" showPageSize="false" showPageIndex="false" idField="auserGuid"
			            url="${ctx}/user/queryPageListOaUserInfo.action" 
			        >
			            <div property="columns">
			                <div type="checkcolumn" ></div>
			                <div field="auserCode" width="120" headerAlign="center" allowSort="true">工号</div>
			                <div field="auserName" width="120" headerAlign="center" allowSort="true">姓名</div>
			                <div field="auorgCode" width="120" headerAlign="center" allowSort="true">组织代码</div>
			                <div field="auorgName" width="120" headerAlign="center" allowSort="true">组织名称</div>
			            </div>
			        </div>  
			    </div>
	        </div>
	        <!-- 列表  START-->
	        <div id="datagrid1" class="mini-datagrid" style="width:100%;height:380px;" 
				url="${ctx}/menuRole/queryPageListOaMenuRoleExtend.action" idField="aprumGuid"
				allowResize="true" sizeList="[10,20,50,100]" pageSize="20" 
				allowCellEdit="true" allowCellSelect="true" multiSelect="true">
			    <div property="columns">
			        <div type="checkcolumn" width="5%"></div>
			        <div field="auserCode" width="15%" headerAlign="center" allowSort="true" align="center">
			        	账号
			        </div>
			        <div field="auserName" width="15%" headerAlign="center" allowSort="true" align="center">
			        	姓名
			        </div>
			        <div field="auorgCode" width="15%" headerAlign="center" allowSort="true" align="center">
			        	组织代码
			        </div>
			        <div field="auorgName" width="15%" headerAlign="center" allowSort="true" align="center">
			        	组织名称
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

var selectUserDatagrid = mini.get("selectUserDatagrid");
var keyText = mini.get("keyText");
selectUserDatagrid.load();

function search() {
	var form = new mini.Form("#search");
	var o = mini.decode('${param.initJsonSearch}');
	form.setData(o);
	
	var data = form.getData();      //获取表单多个控件的数据
	var jsonSearch = mini.encode(data);   //序列化成JSON
    grid.load({'search': jsonSearch});
}

function add(){
	mini.open({
	    url: "${ctx}/AUTO/OA/MENU/menuRoleAdd.jsp",           
	    title: "新增系统角色",
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
            url: "${ctx}/AUTO/OA/MENU/menuRoleAdd.jsp",
            title: "编辑系统角色", width: 600, height: 360,
            onload: function () {
                var iframe = this.getIFrameEl();
                var data = { action: "edit", aproGuid: row.aproGuid };
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
                ids.push(r.aprumGuid);
            }
            var aprumGuid = ids.join(',');
            grid.loading("操作中，请稍后......");
            $.ajax({
                url: "${ctx}/menuRole/deleteOaMenuRoleUserMap.action?aprumGuid=" + aprumGuid,
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

function onSearchClick() {
	var form = new mini.Form("#search");
	var data = keyText.value;
	var obj = {
		auserName: data
	};
	form.setData(obj);
	var data = form.getData();      //获取表单多个控件的数据
	var jsonSearch = mini.encode(data);   //序列化成JSON
	selectUserDatagrid.load({'search': jsonSearch});
}
function onCloseClick(e) {
	var selectUserDatagrid = mini.get("selectUserDatagrid");
	selectUserDatagrid.hidePopup();
    //selectUserDatagrid.hidePopup();
}
function onClearClick(e) {
    selectUserDatagrid.deselectAll();
}
function saveData() {
    var aproGuid = mini.get("aproGuid").value;
    var auserGuids = mini.get("auserGuids").value;
    grid.loading("保存中，请稍后......");
    $.ajax({
        url: "${ctx}/menuRole/saveOrUpdateOaMenuRoleUserMap.action",
        data: { 'aproGuid': aproGuid, 'auserGuids': auserGuids },
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
