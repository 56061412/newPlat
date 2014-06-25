<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>修车人后台管理系统-注册用户信息列表</title>
		<%@include file="../include/autoOABaseInclude.jsp" %>
	</head>

	<body>
	<form id="search">
	<!-- 隐藏信息 START -->
		<div style="display: none;">
			<input name="auorgGuid" class="mini-hidden" value=""/>
		</div>
	<!-- 隐藏信息 END -->
	 <!-- 主内容 START-->
		<div style="width:100%;height:100%;">
			<!-- 查询  START-->
			<div style="padding-bottom:5px;">
				<span class="form-label">手机：</span><input class="mini-textbox" name="srulUserMobile"/>
				<span class="form-label">姓名：</span><input class="mini-textbox" name="srulUserName"/>
				<a class="mini-button" onclick="search()">查询</a>
				<a class="mini-button" onclick="reset()">重置</a>
			</div>
			<!-- 查询  END-->
	        <div class="mini-toolbar" style="border-bottom:0;padding:0px;">
				<a class="mini-button" onclick="saveData()">保存</a>
				<a class="mini-button" onclick="edit()">编辑</a>
				<a class="mini-button" onclick="remove()">删除</a>
	        </div>
	        <!-- 列表  START-->
	        <div id="datagrid1" class="mini-datagrid" style="width:100%;height:380px;" 
				url="${ctx}/snsIndex/queryPageListSnsRegUserLogin.action" idField="srulGuid"
				allowResize="true" sizeList="[10,20,50,100]" pageSize="20" 
				allowCellEdit="true" allowCellSelect="true" multiSelect="true">
			    <div property="columns">
			        <div type="checkcolumn" width="2%"></div>
			        <div field="srulUserCode" width="5%" headerAlign="center" allowSort="true" align="center">
			        	工号
			        	<input property="editor" class="mini-textbox" style="width:100%;" vtype="maxLength:50" />
			        </div>
			        <div field="srulUserName" width="5%" headerAlign="center" allowSort="true" align="center">
			        	姓名
			        </div>
			        <div field="srulOrgName" width="5%" headerAlign="center" allowSort="true" align="center">
			        	公司名称
			        </div>
			        <div type="comboboxcolumn" autoShowPopup="true" field="srulUserGender" width="4%" allowSort="true"  align="center" headerAlign="center">
			        	性别
			        	<input property="editor" class="mini-combobox" style="width:100%;"
			        		url="${ctx}/sys/queryGenderList.action" textField="osccName" valueField="osccCode" />
			        </div>
			        <div field="srulUserAge" width="4%" headerAlign="center" allowSort="true" align="center">
			        	年龄
			        </div>
			        <div field="srulUserBirthday" width="7%" headerAlign="center" allowSort="true" align="center" dateFormat="yyyy-MM-dd">
			        	出生年月
			        </div>
			        <div field="srulUserMobile" width="8%" headerAlign="center" allowSort="true" align="center">
			        	手机
			        </div>
			        <div field="srulUserMail" width="11%" headerAlign="center" allowSort="true" align="center">
			        	邮箱
			        </div>
			        <div field="srulStatus" renderer="onStatusRenderer" width="5%" headerAlign="center" allowSort="true" align="center">
			        	状态
			        	<input property="editor" class="mini-combobox" style="width:100%;" data="Status"/>
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

var Status = [{ id: 0, text: '待审核' }, { id: 1, text: '审核通过'}];
function onStatusRenderer(e) {
    for (var i = 0, l = Status.length; i < l; i++) {
        var g = Status[i];
        if (g.id == e.value) return g.text;
    }
    return "";
}

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
                ids.push(r.auserGuid);
            }
            var auserGuid = ids.join(',');
            grid.loading("操作中，请稍后......");
            $.ajax({
                url: "${ctx}/user/deleteOaUserInfo.action?auserGuid=" +auserGuid,
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

function saveData() {
    var data = grid.getChanges();
    var json = mini.encode(data);

    grid.loading("保存中，请稍后......");
    $.ajax({
        url: "${ctx}/snsIndex/saveOrUpdateSnsRegUserLogin.action",
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
