<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%--发帖 --%>
<div id="addTaskForm">	
<!--	填写消息	-->	
	    <table>
			<tr>		
				<td>
	             	任务名称：
				</td>
				<td>
					<input id="taskName" name="taskName" class="mini-textbox" required="true" style="width:500px"/>
				</td>
			</tr>
			<tr><td colspan="2"></br></td></tr>
			<tr>
                <td>
                   	人员选择：
                </td>
                <td>
                	<div>
						<input id="taskPersonS" name="taskPersonS" class="mini-lookup" style="width:200px;" 
					    	textField="auserName" valueField="auserCode" popupWidth="auto"
					    	popup="#gridPanel" grid="#selectUserDatagrid" multiSelect="true"
					    />
					    <div id="gridPanel" class="mini-panel" title="header" iconCls="icon-add" style="width:450px;height:250px;" 
					        showToolbar="true" showCloseButton="true" showHeader="false" bodyStyle="padding:0" borderStyle="border:0" 
					    >
					        <div property="toolbar" style="padding:5px;padding-left:8px;text-align:center;">
					            <div style="float:left;">
					                <span>姓名：</span>
					                <input id="auserName" name="auserName" class="mini-textbox" style="width:160px;" onenter="onSearchClick"/>
					                <a class="mini-button" onclick="onSearchClick">查询</a>
					                <a class="mini-button" onclick="onClearClick">清除</a>
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
                </td>
            </tr>
            <tr><td colspan="2"><br></td></tr>
			<tr>
				<td>
	             	说明：
				</td>
				<td>
					<input id="content" name="content" class="mini-textarea" required="true" style="width:500px;height:80px;"/>
				</td>
			</tr>
		</table>	
	
<!--	填写消息 end	-->
<!--	发送按钮	-->
	<div>
		<a onclick="doSaveTask()" class="release-btn fr"></a>
	</div>
<!--	发送按钮	 end-->
</div>
<script type="text/javascript">
	mini.parse();
	var selectUserDatagrid = mini.get("selectUserDatagrid");
	selectUserDatagrid.load();
	
	function doSaveTask(){
        var form = new mini.Form("#addTaskForm");
		var data = form.getData();      //获取表单多个控件的数据
		var json = mini.encode(data);   //序列化成JSON
		$.ajax({
		    url: "${ctx}/snsTask/addTaskInfo.action",
		    type: "post",
		    data: { jsonTaskInfo: json },
		    success: function (text) {
		        alert("新增成功" + text);
		        doListTask('fabu');
		        resetAddForm();
		    }
		});
	}
	function onSearchClick() {
		var form = new mini.Form("#search");
		var data = form.getData();      //获取表单多个控件的数据
		var jsonSearch = mini.encode(data);   //序列化成JSON
		selectUserDatagrid.load({'search': jsonSearch});
	}
	function onClearClick(e) {
	    selectUserDatagrid.deselectAll();
	}
	function resetAddForm(){
		mini.get("taskName").setValue('');
        mini.get("content").setValue('');
	}
</script>
</body>
</html>
