<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<form id="addTask" method="post">
<div style="padding-left:11px;padding-bottom:5px;" >
<fieldset id="fd1" style="width:600px;">
	<legend><span>任务信息</span></legend>
	<table class="form-table" border="0" cellpadding="1" cellspacing="2">
		<tr>
	     	<td width="25%"></td>
	        <td width="22%" align="right"><label for="taskName$text">任务名称：</label></td>
	        <td width="15%">
				<input name="taskName" class="mini-textbox" errorMode="none" required="true" vtype="maxLength:100" onvalidation="onValidation" maxLengthErrorText="字符串长度不能超过100个字符"/>
			</td>
	        <td id="taskName_error" class="errorText"></td>
	    </tr> 
	    <tr>
	     	<td width="25%"></td>
	        <td width="22%" align="right"><label for="taskPerson$text">人员选择：</label></td>
	        <td width="15%">
				
			</td>
	        <td id="taskPerson_error" class="errorText"></td>
	    </tr> 
	    <tr>
	     	<td width="25%"></td>
	        <td width="22%" align="right"><label for="content$text">说明：</label></td>
	        <td width="15%">
				<input name="content" class="mini-textbox" errorMode="none" required="true" vtype="maxLength:1000" onvalidation="onValidation" maxLengthErrorText="字符串长度不能超过1000个字符"/>
			</td>
	        <td id="content_error" class="errorText"></td>
	    </tr>
	</table>
	</fieldset>
	<div style="text-align:center;padding:10px;">               
         <a id="buttonOk" class="mini-button" iconCls="icon-add" onclick="onOk" style="width:60px;margin-right:20px;">保存</a>       
         <a class="mini-button" iconCls="icon-cancle" onclick="onCancel" >取消</a>       
     </div>
</div>
</form>
<script type="text/javascript">
mini.parse();
var form = new mini.Form("#addTask");
function onOk(){
	$("#buttonOk").attr("disabled","disabled"); 
	//提交表单数据
	
	form.validate();
    if (form.isValid() == false) return;
	      
	var data = form.getData();      //获取表单多个控件的数据
	var json = "["+mini.encode(data)+"]";   //序列化成JSON数组
	$.ajax({
	    url: "${ctx}/snsTask/addTaskInfo.action",
	    type: "post",
	    data: { data: json },
	    cache: false,
	    success: function (text) {
	    	if(text){
	    		alert(text);
	    	}		        
	        CloseWindow("save");
	    },
	    error: function (jqXHR, textStatus, errorThrown) {
            alert(jqXHR.responseText);
            CloseWindow();
       	}
	});
}

function onCancel(e) {
	CloseWindow("cancel");
}

function CloseWindow(action) {            
     if (action == "close" && form.isChanged()) {
         if (confirm("数据被修改了，是否先保存？")) {
             return false;
         }
     }
     if (window.CloseOwnerWindow) return window.CloseOwnerWindow(action);
     else window.close();            
}

//标准方法接口定义
function SetData(data) {
	
	if (data.action == "edit") {
       //跨页面传递的数据对象，克隆后才可以安全使用
		data = mini.clone(data);
		$.ajax({
			url: "${ctx}/orgArea/getOaOrgArea.action?auarGuid=" + data.auarGuid,
			cache: false,
			success: function (text) {
				var o = mini.decode(text);
                form.setData(o);
                form.setChanged(false);
			}
		});
	}
}
function updateError(e) {
    var id = e.sender.name + "_error";
    var el = document.getElementById(id);
    if (el) {
        el.innerHTML = e.errorText;
    }
}
function onValidation(e) {                  
    updateError(e);
}
</script>