<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>岗位信息维护</title>
<%@include file="../include/autoOABaseInclude.jsp" %>
<style type="text/css">
.errorText
{
    color:red;
}
</style>
</head>
<body>
<form id="postAdd" method="post">
<div style="padding-left:11px;padding-bottom:5px;" >
<input name="aupoGuid" class="mini-hidden" />
<fieldset id="fd1" style="width:600px;">
	<legend><span>岗位信息维护</span></legend>
	<table class="form-table" border="0" cellpadding="1" cellspacing="2">
		<tr>
	     	<td width="27%"></td>
	        <td width="20%" align="right"><label for="aupoPostCode$text">岗位代码：</label></td>
	        <td width="15%">
				<input name="aupoPostCode" class="mini-textbox" errorMode="none" required="true" vtype="maxLength:50" onvalidation="onValidation" maxLengthErrorText="字符串长度不能超过50个字符"/>
			</td>
	        <td id="aupoPostCode_error" class="errorText"></td>
	    </tr>
	    <tr>
	     	<td width="32%"></td>
	        <td width="15%" align="right"><label for="aupoPostName$text">岗位名称：</label></td>
	        <td width="15%">
				<input name="aupoPostName" class="mini-textbox" errorMode="none" required="true" vtype="maxLength:50" onvalidation="onValidation" maxLengthErrorText="字符串长度不能超过50个字符"/>
			</td>
	        <td id="aupoPostName_error" class="errorText"></td>
	    </tr>
	    <tr>
	     	<td width="32%"></td>
	        <td width="15%" align="right"><label for="aupoOrgName$text">所属组织名称：</label></td>
	        <td width="15%">
				<input name="aupoOrgName" class="mini-textbox" errorMode="none" required="true" vtype="maxLength:50" onvalidation="onValidation" maxLengthErrorText="字符串长度不能超过50个字符"/>
			</td>
	        <td id="aupoOrgName_error" class="errorText"></td>
	    </tr>
	    <tr>
	     	<td width="32%"></td>
	        <td width="15%" align="right"><label for="aupoOrgCode$text">所属组织代码 ：</label></td>
	        <td width="15%">
				<input name="aupoOrgCode" class="mini-textbox" errorMode="none" required="true" vtype="maxLength:50" onvalidation="onValidation" maxLengthErrorText="字符串长度不能超过50个字符"/>
			</td>
	        <td id="aupoOrgCode_error" class="errorText"></td>
	    </tr>
	</table>
	</fieldset>
	<div style="text-align:center;padding:10px;">               
         <a id="buttonOk" class="mini-button" iconCls="icon-add" onclick="onOk" style="width:60px;margin-right:20px;">确定</a>       
         <a class="mini-button" iconCls="icon-cancle" onclick="onCancel" style="width:60px;">取消</a>       
     </div>
</div>
</form>

<script type="text/javascript">
var IsValidity = [{id: 1, text: '是'}, {id: 0, text: '否'}];
mini.parse();
var form = new mini.Form("postAdd");

function onOk(){
	$("#buttonOk").attr("disabled","disabled"); 
	//提交表单数据
	
	form.validate();
    if (form.isValid() == false) return;
	      
	var data = form.getData();      //获取表单多个控件的数据
	var json = "["+mini.encode(data)+"]";   //序列化成JSON数组
	$.ajax({
	    url: "${ctx}/userPost/saveOrUpdateOaUserPost.action",
	    type: "post",
	    data: { data: json },
	    cache: false,
	    success: function (text) {
	    	if(text){
	    		//alert(text);
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
			url: "${ctx}/userPost/getOaUserPost.action?aupoGuid=" + data.aupoGuid,
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
</body>
</html>