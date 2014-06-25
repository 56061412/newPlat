<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>客户反馈</title>
<%@include file="../include/autoSNSBaseInclude.jsp" %>
</head>
<body>
<div id="fankuiForm">
<input id="messagePersonS" name="messagePersonS" class="mini-hidden" value="admin" />
<input id="content" name="content" class="mini-textarea" required="true" style="width:590px;height:160px;"/>
<div align="right">
 <a class="mini-button" onclick="doSaveFankui">提交</a>
</div>
</div>
</body>
</html>
<script type="text/javascript">
	mini.parse();
	function doSaveFankui(){
        var form = new mini.Form("#fankuiForm");
		var data = form.getData();      //获取表单多个控件的数据
		var json = mini.encode(data);   //序列化成JSON
		$.ajax({
		    url: "${ctx}/snsPost/addMessageInfo.action",
		    type: "post",
		    data: { "jsonMessageInfo": json },
		    success: function (text) {
		        alert("新增成功" + text);
		        CloseWindow();
		    }
		});
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