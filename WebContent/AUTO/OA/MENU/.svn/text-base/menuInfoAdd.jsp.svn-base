<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>菜单配置维护</title>
<%@include file="../include/autoOABaseInclude.jsp" %>
<style type="text/css">
.errorText
{
    color:red;
}
</style>
</head>
<body>
<form id="menuInfoAdd" method="post">
<!-- 隐藏信息 START -->
	<div style="display: none;">
		<input name="apmeParentGuid" class="mini-hidden"/>
		<input name="apmeGuid" class="mini-hidden" />
	</div>
<!-- 隐藏信息 END -->
<div style="padding-left:11px;padding-bottom:5px;" >
<fieldset id="fd1" style="width:600px;">
	<legend><span>菜单配置维护</span></legend>
<table class="form-table" border="0" cellpadding="1" cellspacing="2" width="100%">
     <tr>
     	<td width="32%"></td>
        <td width="15%"><label for="apmeMenuName$text">菜单名称：</label></td>
        <td width="15%">
			<input name="apmeMenuName" class="mini-textbox" errorMode="none" required="true" vtype="maxLength:50" onvalidation="onValidation" maxLengthErrorText="字符串长度不能超过50个字符"/>
		</td>
        <td id="apmeMenuName_error" class="errorText"></td>
    </tr>
    <tr>
     	<td width="32%"></td>
        <td width="15%"><label for="apmeMenuDesc$text">菜单说明：</label></td>
        <td width="15%">
			<input name="apmeMenuDesc" class="mini-textbox" errorMode="none" required="true" vtype="maxLength:50" onvalidation="onValidation" maxLengthErrorText="字符串长度不能超过100个字符"/>
		</td>
        <td id="apmeMenuDesc_error" class="errorText"></td>
    </tr>
    <tr>
     	<td width="32%"></td>
        <td width="15%"><label for="apmeMenuUrl$text">菜单地址：</label></td>
        <td width="15%">
			<input name="apmeMenuUrl" class="mini-textbox" errorMode="none" required="true" vtype="maxLength:50" onvalidation="onValidation" maxLengthErrorText="字符串长度不能超过100个字符"/>
		</td>
        <td id="apmeMenuUrl_error" class="errorText"></td>
    </tr>
    <tr>
     	<td width="32%"></td>
        <td width="15%"><label for="apmeSort$text">菜单排序：</label></td>
        <td width="15%">
			<input name="apmeSort" class="mini-textbox" errorMode="none" required="true" vtype="int" onvalidation="onValidation" intErrorText="排序字段只能输入整数"/>
		</td>
        <td id="apmeSort_error" class="errorText"></td>
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
var form = new mini.Form("#menuInfoAdd");
var o = mini.decode('${param.initJsonData}');
form.setData(o);

function onOk(){
	$("#buttonOk").attr("disabled","disabled"); 
	//提交表单数据
	
	form.validate();
    if (form.isValid() == false) return;
	      
	var data = form.getData();      //获取表单多个控件的数据
	var json = "["+mini.encode(data)+"]";   //序列化成JSON数组
	$.ajax({
	    url: "${ctx}/menu/saveOrUpdateOaMenuInfo.action",
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
			dataType: 'json',
			url: "${ctx}/menu/getOaMenuInfo.action?apmeGuid=" + data.apmeGuid,
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