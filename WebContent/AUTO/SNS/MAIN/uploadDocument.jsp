<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>上传文档</title>
<%@include file="../include/autoSNSBaseInclude.jsp" %>
</head>
<body>
<form id="docForm" method="post">
<table>
	<tr>
		<td>文档标题：</td>
		<td><input name="skdoTitle" class="mini-textbox" errorMode="none" required="true" 
				vtype="maxLength:50" onvalidation="onValidation" maxLengthErrorText="文档标题不能超过50位"/>
		</td>
		<td id="skdoTitle_error"></td>
	</tr>
	<tr>
		<td>文档介绍：</td>
		<td><input name="skdoDesc" class="mini-textbox" errorMode="none" 
				vtype="maxLength:500" onvalidation="onValidation" maxLengthErrorText="文档介绍不能超过500位"/>
		</td>
		<td id="skdoDesc_error"></td>
	</tr>
</table>
<!--附件上传-->
<jsp:include page="../include/uploadAttachment.jsp"></jsp:include>

<table>
	<tr>
		<td colspan="3">
			<input type="button" id="submitDoc" value="提交文档"/>
		</td>
	</tr>
</table>
</form>

<script type="text/javascript">
//提交文档
$('#submitDoc').click(function(){

	
});

//表格验证
function onValidation(e) {
    updateError(e);
}
function updateError(e) {
    var id = e.sender.name + "_error";
    var el = document.getElementById(id);
    if (el) {
	    if(e.errorText.length>1){
	    	$("#"+id).addClass("error-tip red msg-lh");
	        el.innerHTML = e.errorText;
		}else{
			$("#"+id).removeClass("error-tip red msg-lh");
			el.innerHTML = e.errorText;
		}
    }
}
</script>
</body>
</html>