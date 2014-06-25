<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>用户信息维护</title>
<%@include file="../include/autoOABaseInclude.jsp" %>
<style type="text/css">
.errorText
{
    color:red;
}
</style>
</head>
<body>
<form id="userInfoAdd" method="post">

<!-- 隐藏信息 START -->
	<div style="display: none;">
		<input name="auorgGuid" class="mini-hidden" />
		<input name="auserGuid" class="mini-hidden" />
	</div>
<!-- 隐藏信息 END -->
	
<div style="padding-left:11px;padding-bottom:5px;">

<fieldset id="fd1" style="width:600px;">
	<legend><span>用户信息维护</span></legend>
	<table class="form-table" border="0" cellpadding="1" cellspacing="2" >
	    <tr>
	     	<td width="32%"></td>
	        <td width="15%" align="right"><label for="auserCode$text">工号：</label></td>
	        <td width="15%">
				<input name="auserCode" class="mini-textbox" errorMode="none" required="true" vtype="maxLength:50" onvalidation="onValidation" maxLengthErrorText="字符串长度不能超过50个字符"/>
			</td>
	        <td id="auserCode_error" class="errorText"></td>
	    </tr>
	    <tr>
	     	<td width="32%"></td>
	        <td width="15%" align="right"><label for="auserName$text">姓名：</label></td>
	        <td width="15%">
				<input name="auserName" class="mini-textbox" errorMode="none" required="true" vtype="maxLength:50" onvalidation="onValidation" maxLengthErrorText="字符串长度不能超过50个字符"/>
			</td>
	        <td id="auserName_error" class="errorText"></td>
	    </tr>
	    <tr>
	     	<td width="32%"></td>
	        <td width="15%" align="right"><label for="auserNickName$text">昵称：</label></td>
	        <td width="15%">
				<input name="auserNickName" class="mini-textbox" errorMode="none" required="true" vtype="maxLength:50" onvalidation="onValidation" maxLengthErrorText="字符串长度不能超过50个字符"/>
			</td>
	        <td id="auserNickName_error" class="errorText"></td>
	    </tr>
	    <tr>
	     	<td width="32%"></td>
	        <td width="15%" align="right"><label for="auserGender$text">性别：</label></td>
	        <td width="15%">
				<input name="auserGender" class="mini-radiobuttonlist" 
				    textField="osccName" valueField="osccCode" url="${ctx}/sys/queryGenderList.action" />
			</td>
	        <td id="auserGender_error" class="errorText"></td>
	    </tr>
	    <tr>
	     	<td width="32%"></td>
	        <td width="15%" align="right"><label for="auserAge$text">年龄：</label></td>
	        <td width="15%">
				<input name="auserAge" class="mini-textbox" errorMode="none" required="true" vtype="maxLength:3" onvalidation="onValidation" maxLengthErrorText="字符串长度不能超过3个字符"/>
			</td>
	        <td id="auserAge_error" class="errorText"></td>
	    </tr>
	    <tr>
	     	<td width="32%"></td>
	        <td width="15%" align="right"><label for="auserBirthday$text">出生年月：</label></td>
	        <td width="15%">
				<input name="auserBirthday" class="mini-datepicker" allowInput="false" required="true" />
			</td>
	        <td id="auserBirthday_error" class="errorText"></td>
	    </tr>
	    <tr>
	     	<td width="32%"></td>
	        <td width="15%" align="right"><label for="auserBloodType$text">血型：</label></td>
	        <td width="15%">
				<input name="auserBloodType" class="mini-textbox" errorMode="none" required="true" vtype="maxLength:6" onvalidation="onValidation" maxLengthErrorText="字符串长度不能超过6个字符"/>
			</td>
	        <td id="auserBloodType_error" class="errorText"></td>
	    </tr>
	    <tr>
	     	<td width="32%"></td>
	        <td width="15%" align="right"><label for="auserQq$text">QQ号码：</label></td>
	        <td width="15%">
				<input name="auserQq" class="mini-textbox" errorMode="none" required="true" vtype="maxLength:20" onvalidation="onValidation" maxLengthErrorText="字符串长度不能超过20个字符"/>
			</td>
	        <td id="auserQq_error" class="errorText"></td>
	    </tr>
	    <tr>
	     	<td width="32%"></td>
	        <td width="15%" align="right"><label for="auserMobile$text">手机号码：</label></td>
	        <td width="15%">
				<input name="auserMobile" class="mini-textbox" errorMode="none" required="true" vtype="maxLength:20" onvalidation="onValidation" maxLengthErrorText="字符串长度不能超过20个字符"/>
			</td>
	        <td id="auserMobile_error" class="errorText"></td>
	    </tr>
	    <tr>
	     	<td width="32%"></td>
	        <td width="15%" align="right"><label for="auserPhone$text">电话：</label></td>
	        <td width="15%">
				<input name="auserPhone" class="mini-textbox" errorMode="none" required="true" vtype="maxLength:20" onvalidation="onValidation" maxLengthErrorText="字符串长度不能超过20个字符"/>
			</td>
	        <td id="auserPhone_error" class="errorText"></td>
	    </tr>
	    <tr>
	     	<td width="32%"></td>
	        <td width="15%" align="right"><label for="auserMail$text">邮箱：</label></td>
	        <td width="15%">
				<input name="auserMail" class="mini-textbox" errorMode="none" required="true" vtype="maxLength:20" onvalidation="onValidation" maxLengthErrorText="字符串长度不能超过20个字符"/>
			</td>
	        <td id="auserMail_error" class="errorText"></td>
	    </tr>
	    <tr>
	     	<td width="32%"></td>
	        <td width="15%" align="right"><label for="auserAddress$text">地址：</label></td>
	        <td width="15%">
				<input name="auserAddress" class="mini-textbox" errorMode="none" required="true" vtype="maxLength:50" onvalidation="onValidation" maxLengthErrorText="字符串长度不能超过50个字符"/>
			</td>
	        <td id="auserAddress_error" class="errorText"></td>
	    </tr>
	    <tr>
	     	<td width="32%"></td>
	        <td width="15%" align="right"><label for="auserZipcode$text">邮编：</label></td>
	        <td width="15%">
				<input name="auserZipcode" class="mini-textbox" errorMode="none" required="true" vtype="maxLength:50" onvalidation="onValidation" maxLengthErrorText="字符串长度不能超过50个字符"/>
			</td>
	        <td id="auserZipcode_error" class="errorText"></td>
	    </tr>
	    <tr>
	     	<td width="32%"></td>
	        <td width="15%" align="right"><label for="auserIdType$text">证件类型：</label></td>
	        <td width="15%">
				<input name="auserIdType" class="mini-radiobuttonlist" 
				    textField="osccName" valueField="osccCode" url="${ctx}/sys/queryIdCardTypeList.action" />
			</td>
	        <td id="auserIdType_error" class="errorText"></td>
	    </tr>
	    <tr>
	     	<td width="32%"></td>
	        <td width="15%" align="right"><label for="auserIdCode$text">证件号码：</label></td>
	        <td width="15%">
				<input name="auserIdCode" class="mini-textbox" errorMode="none" required="true" vtype="maxLength:30" onvalidation="onValidation" maxLengthErrorText="字符串长度不能超过30个字符"/>
			</td>
	        <td id="auserIdCode_error" class="errorText"></td>
	    </tr>
	</table>
	</fieldset>
	<div style="text-align:center;padding:10px;">
         <a id="buttonOk" class="mini-button" iconCls="icon-add" onclick="onOk" style="width:60px;margin-right:20px;">保存</a>       
         <a class="mini-button" iconCls="icon-cancle" onclick="onCancel" style="width:60px;">取消</a>       
     </div>
</div>
</form>

<script type="text/javascript">
mini.parse();
var form = new mini.Form("userInfoAdd");
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
	    url: "${ctx}/user/saveOrUpdateOaUserInfo.action",
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
function onUploadSuccess(e) {

	alert("上传成功：" + e.serverData);

	this.setText("");
}
function onUploadError(e) {
    
}

function startUpload() {
    var fileupload = mini.get("fileupload1");

    fileupload.startUpload();
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
			url: "${ctx}/user/getOaUserInfo.action?auserGuid=" + data.auserGuid,
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