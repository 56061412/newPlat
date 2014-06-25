<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String taskGuid = request.getParameter("taskGuid");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>任务完成情况</title>
<%@include file="../include/autoSNSBaseInclude.jsp" %>
</head>
<body>
<div id="listTaskPerson">

</div>
</body>
</html>
<script type="text/javascript">
$(document).ready(function(){
	doListTaskPerson('<%=taskGuid%>');
});
function doListTaskPerson(taskGuid){
	var path = "${ctx}/snsTask/listTaskPerson.action";
	var postData = {"taskGuid":taskGuid};
	$.ajax({
	    url: path,
	    type: "post",
	    data: postData,
	    dataType:"json",
	    success: function (json) {
	    	var listHtml = '<table width="100%">';
	    	listHtml += '<tr><td align="center">任务人</td><td align="center">任务状态</td><td align="center">完成时间</td></tr>';
	    	$.each(json,function(index,oneInfo){
	    		listHtml += '<tr';
	    		if(oneInfo.taskStatus=='0'){
	    			listHtml += ' style="background: red" ';
	    		}else{
	    			listHtml += ' style="background: green" ';
	    		}
	    		listHtml += '>';
		    		listHtml += '<td align="center">';
		    		listHtml += oneInfo.taskPersonName;
		    		listHtml += '</td>';
		    		listHtml += '<td align="center">';
		    		if(oneInfo.taskStatus=='0'){
		    			listHtml += '未完成';
		    		}else{
		    			listHtml += '已完成';
		    		}
		    		
		    		listHtml += '</td>';
		    		listHtml += '<td align="center">';
		    		listHtml += oneInfo.extra1;
		    		listHtml += '</td>';
	    		listHtml += '</tr>';
	    	});
	    	listHtml += '</table>';
	    	$('#listTaskPerson').html(listHtml);
	    }
	});
}
</script>