<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>修车人后台管理系统-用户信息列表</title>
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
				<span class="form-label">工号：</span><input class="mini-textbox" name="auserCode"/>
				<span class="form-label">姓名：</span><input class="mini-textbox" name="auserName"/>
				<span class="form-label">昵称：</span><input class="mini-textbox" name="auserNickName"/>
				<a class="mini-button" onclick="search()">查询</a>
				<a class="mini-button" onclick="reset()">重置</a>
			</div>
			<!-- 查询  END-->
	        <div class="mini-toolbar" style="border-bottom:0;padding:0px;">
				<a class="mini-button" onclick="saveData()">保存</a>
				<a class="mini-button" onclick="add()">增加</a>
				<a class="mini-button" onclick="edit()">编辑</a>
				<a class="mini-button" onclick="editPWD()">重置密码</a>
				<a class="mini-button" onclick="remove()">删除</a>
	        </div>
	        <!-- 列表  START-->
	        <div id="datagrid1" class="mini-datagrid" style="width:100%;height:380px;" 
				url="${ctx}/user/queryPageListOaUserInfo.action" idField="auserGuid"
				allowResize="true" sizeList="[10,20,50,100]" pageSize="20" 
				allowCellEdit="true" allowCellSelect="true" multiSelect="true">
			    <div property="columns">
			        <div type="checkcolumn" width="2%"></div>
			        <div field="auserCode" width="5%" headerAlign="center" allowSort="true" align="center">
			        	工号
			        	<input property="editor" class="mini-textbox" style="width:100%;" vtype="maxLength:50" />
			        </div>
			        <div field="auserName" width="5%" headerAlign="center" allowSort="true" align="center">
			        	姓名
			        	<input property="editor" class="mini-textbox" style="width:100%;" vtype="maxLength:50"/>
			        </div>
			        <div field="auserNickName" width="5%" headerAlign="center" allowSort="true" align="center">
			        	昵称
			        	<input property="editor" class="mini-textbox" style="width:100%;" vtype="maxLength:50"/>
			        </div>
			        <div type="comboboxcolumn" autoShowPopup="true" field="auserGender" width="4%" allowSort="true"  align="center" headerAlign="center">
			        	性别
			        	<input property="editor" class="mini-combobox" style="width:100%;"
			        		url="${ctx}/sys/queryGenderList.action" textField="osccName" valueField="osccCode" />
			        </div>
			        <div field="auserAge" width="4%" headerAlign="center" allowSort="true" align="center">
			        	年龄
			        	<input property="editor" class="mini-textbox" style="width:100%;" vtype="int"/>
			        </div>
<!--			        <div field="auserPy" width="15%" headerAlign="center" allowSort="true" align="center">-->
<!--			        	拼音(全拼)-->
<!--			        	<input property="editor" class="mini-textbox" style="width:100%;" />-->
<!--			        </div>-->
<!--			        <div field="auserPyBref" width="15%" headerAlign="center" allowSort="true" align="center">-->
<!--			        	拼音(缩写)-->
<!--			        	<input property="editor" class="mini-textbox" style="width:100%;" />-->
<!--			        </div>-->
			        <div field="auserBirthday" width="7%" headerAlign="center" allowSort="true" align="center" dateFormat="yyyy-MM-dd">
			        	出生年月
			        	<input property="editor" class="mini-datepicker" style="width:100%;"/>
			        </div>
<!--			        <div field="auserBloodType" width="15%" headerAlign="center" allowSort="true" align="center">-->
<!--			        	血型-->
<!--			        	<input property="editor" class="mini-textbox" style="width:100%;" />-->
<!--			        </div>-->
<!--			        <div field="auserQq" width="8%" headerAlign="center" allowSort="true" align="center">-->
<!--			        	QQ号码-->
<!--			        	<input property="editor" class="mini-textbox" style="width:100%;" />-->
<!--			        </div>-->
			        <div field="auserMobile" width="8%" headerAlign="center" allowSort="true" align="center">
			        	手机号码
			        	<input property="editor" class="mini-textbox" style="width:100%;" vtype="maxLength:20"/>
			        </div>
			        <div field="auserPhone" width="10%" headerAlign="center" allowSort="true" align="center">
			        	电话
			        	<input property="editor" class="mini-textbox" style="width:100%;" vtype="maxLength:20"/>
			        </div>
			        <div field="auserMail" width="11%" headerAlign="center" allowSort="true" align="center">
			        	邮箱
			        	<input property="editor" class="mini-textbox" style="width:100%;" vtype="maxLength:50"/>
			        </div>
			        <div field="auserCity" width="5%" headerAlign="center" allowSort="true" align="center">
			        	所在城市
			        </div>
<!--			        <div field="auserGraduateSchool" width="15%" headerAlign="center" allowSort="true" align="center">-->
<!--			        	毕业院校-->
<!--			        	<input property="editor" class="mini-textbox" style="width:100%;" />-->
<!--			        </div>-->
<!--			        <div field="auserWorkExperience" width="15%" headerAlign="center" allowSort="true" align="center">-->
<!--			        	工作经历(可以上传附件)-->
<!--			        	<input property="editor" class="mini-textbox" style="width:100%;" />-->
<!--			        </div>-->
			        <div field="auserAddress" width="12%" headerAlign="center" allowSort="true" align="center">
			        	地址
			        	<input property="editor" class="mini-textbox" style="width:100%;" vtype="maxLength:50"/>
			        </div>
<!--			        <div field="auserZipcode" width="3%" headerAlign="center" allowSort="true" align="center">-->
<!--			        	邮编-->
<!--			        	<input property="editor" class="mini-textbox" style="width:100%;" />-->
<!--			        </div>-->
<!--			        <div field="auserIdType" width="3%" headerAlign="center" allowSort="true" align="center">-->
<!--			        	证件类型-->
<!--			        	<input property="editor" class="mini-textbox" style="width:100%;" />-->
<!--			        </div>-->
<!--			        <div field="auserIdCode" width="15%" headerAlign="center" allowSort="true" align="center">-->
<!--			        	证件号码-->
<!--			        	<input property="editor" class="mini-textbox" style="width:100%;" />-->
<!--			        </div>-->
<!--			        <div field="auserPassword" width="15%" headerAlign="center" allowSort="true" align="center">-->
<!--			        	登录密码(32位MD5)-->
<!--			        	<input property="editor" class="mini-textbox" style="width:100%;" />-->
<!--			        </div>-->
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
	var auorgGuid = $('input[name=auorgGuid]').val();
	var initJsonData = "{\"auorgGuid\":\""+auorgGuid+"\"}";   //序列化成JSON
	mini.open({
	    url: "${ctx}/AUTO/OA/USER/userInfoAdd.jsp?initJsonData="+initJsonData,           
	    title: "用户信息新增",
	    width: 650,
	    height: 560,
	    ondestroy: function (action) {                  
	        grid.reload();
	    }
	});
}

function edit() {
    var row = grid.getSelected();
    if (row) {
        mini.open({
            url: "${ctx}/AUTO/OA/USER/userInfoAdd.jsp",
            title: "编辑用户信息", width: 650, height: 560,
            onload: function () {
                var iframe = this.getIFrameEl();
                var data = { action: "edit", auserGuid: row.auserGuid };
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
//重置密码
function editPWD(){
	 var row = grid.getSelected();
	    if (row) {
	        mini.open({
	            url: "${ctx}/AUTO/OA/USER/userResetPWD.jsp",
	            title: "重置密码", width: 600, height: 360,
	            onload: function () {
	                var iframe = this.getIFrameEl();
	                var data = { action: "edit", auserGuid: row.auserGuid, auserCode: row.auserCode, auserName: row.auserName};
	                iframe.contentWindow.SetData(data);
	            },
	            ondestroy: function (action) {
	               // grid.reload();
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
        url: "${ctx}/user/saveOrUpdateOaUserInfo.action",
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
