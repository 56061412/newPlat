<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>修改密码--修改自己的密码</title>
<%@include file="../include/autoOABaseInclude.jsp" %>

</head>
<body>
<form id="resetpwd" method="post">
<div style="padding-left:11px;padding-bottom:5px;" align="center"">
<fieldset id="fd1" style="width:480px; ">
	<legend><span>用户密码重置</span></legend>
	<table class="form-table" border="0" cellpadding="1" cellspacing="2" align="left" width="100%">
	    <tr>
	    	<td width="20%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
	        <td class="form-label" align="right" width="15%">原密码：</td>
	        <td width="35%">
	            <input type="password"  name="oldpwd" id="oldpwd" width="15px"/>
	        </td>
	        <td width="50%"></td>
	   </tr>
	   <tr>
	    	<td width="20%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
	        <td class="form-label" align="right">新密码：</td>
	        <td >
	        	<input type="password"  name="newpwd" id="newpwd" width="15px"/>
	        </td>
	        <td><div id="msgnewinfo" style="color:red"></div></td>
	    </tr>
	    <tr>
	    	<td width="20%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
	        <td class="form-label" align="right">重复密码：</td>
	        <td >
	       		<input type="password"  name="againpwd" id="againpwd" width="18px"/>
	        </td>
	        <td><div id="msginfo" style="color:red"></div></td>
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
var form = new mini.Form("resetpwd");

function onOk(){
	$("#buttonOk").attr("disabled","disabled"); 
	//提交表单数据
	
	form.validate();
    if (form.isValid() == false) return;
	      
	var oldpwds = $("#oldpwd").val();
	var newpwds = $("#newpwd").val();
	$.ajax({
	    url: "${ctx}/user/resetPWDOaUserInfo.action",
	    type: "post",
	    data: { oldpwds: oldpwds,newpwds:newpwds },
	    cache: false,
	    success: function (text) {
		    //alert(text);
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
$(function(){
	$("#againpwd").keyup(function(){
		var newpwds = $("#newpwd").val();
		var againpwds = $("#againpwd").val();
		if(newpwds!=againpwds){
			$("#msginfo").html("两次输入的密码不一致");
			$("#buttonOk").attr("disabled","disabled");
		}else{
			$("#msginfo").html("");
			$("#buttonOk").removeAttr("disabled");
		}
	});
	$("#newpwd").keyup(function(){
		var newpwds = $("#newpwd").val();
		var againpwds = $("#againpwd").val();
		if(newpwds.trim().length<6){
			$("#msgnewinfo").html("密码长度不得小于六位");
			$("#buttonOk").attr("disabled","disabled");
			$("#againpwd").attr("disabled","disabled");
		}else{
			$("#msgnewinfo").html("");
			$("#buttonOk").removeAttr("disabled");
			$("#againpwd").removeAttr("disabled");
		}
		if(newpwds!=againpwds){
			$("#msginfo").html("两次输入的密码不一致");
			$("#buttonOk").attr("disabled","disabled");
		}else{
			$("#msginfo").html("");
			$("#buttonOk").removeAttr("disabled");
		}
	});
});
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
</script>
</body>
</html>