<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>区域信息维护</title>
<%@include file="../include/autoOABaseInclude.jsp" %>

</head>
<body>
<form id="areaAdd" method="post">
<div style="padding-left:11px;padding-bottom:5px;">
<input name="auarGuid" class="mini-hidden" />
<fieldset id="fd1" style="width:600px;">
	<legend><span>区域信息维护</span></legend>
	<table class="form-table" border="0" cellpadding="1" cellspacing="2">
	    <tr>
	        <td class="form-label" style="width:60px;">区域名称：</td>
	        <td style="width:150px">
	            <input name="auarName" class="mini-textbox" required="true"/>
	        </td>
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
var form = new mini.Form("areaAdd");

function onOk(){
	$("#buttonOk").attr("disabled","disabled"); 
	//提交表单数据
	
	form.validate();
    if (form.isValid() == false) return;
	      
	var data = form.getData();      //获取表单多个控件的数据
	var json = "["+mini.encode(data)+"]";   //序列化成JSON数组
	$.ajax({
	    url: "${ctx}/orgArea/saveOrUpdateOaOrgArea.action",
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
</script>
</body>
</html>