<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<div class="task-detail">
	<div id="todayTask">
	</div>
</div>

<script type="text/javascript">
$(document).ready(function(){
	doTodayTask();
});
function doTodayTask(){
	var path = "${ctx}/snsTask/getTodayTaskInfoByPerson.action";
	var offset = $('#offset').val();	
	var postData = {"offset":offset};
	$.ajax({
	    url: path,
	    type: "post",
	    dataType:"json",
	    data: postData,
	    success: function (json) {
	    	var listHtml = "<ul>";
	    	$.each(json,function(index,oneInfo){
	    		listHtml += '<li class="ri-ul">';
	    		listHtml += '<a class="blue-front" href="javascript:void(0);" onclick="doTaskDetail(\''+oneInfo.taskGuid+'\');">'+oneInfo.taskName+'</a>';
	    		listHtml += '</li>';
	    	});
	    	listHtml += "</ul>";
	    	if(offset=='1'){
	    		$('#todayTask').html(listHtml);
	    	}else{
	    		$('#todayTask').append(listHtml);
	    	}
	    }
	});
}

function doTaskDetail(taskGuid){
	var path = "${ctx}/snsTask/getTaskInfo.action";
	var postData = {"taskGuid":taskGuid};
	$.ajax({
	    url: path,
	    type: "get",
	    dataType:"json",
	    data: postData,
	    success: function (taskInfo) {
	    	$('#todayTask').html('任务名称：'+taskInfo.taskName);
	    	$('#todayTask').append('<br>');
	    	$('#todayTask').append('任务内容：'+taskInfo.content);
	    	$('#todayTask').append('<br>');
	    	$('#todayTask').append('发布人：'+taskInfo.publishPersonName);
	    	
	    	var fankuiHtml = '<div id="fankuiTask" method="post">';
	    	fankuiHtml +='<table class="form-table" border="0" cellpadding="1" cellspacing="2">';
	    	fankuiHtml +='<tr><td>';
	    	fankuiHtml +='反馈:<input name="content" class="mini-textbox" errorMode="none" required="true" vtype="maxLength:100" onvalidation="onValidation" maxLengthErrorText="字符串长度不能超过100个字符"/>';	    	
	    	fankuiHtml +='</td></tr>';
	    	fankuiHtml +='</table>';
	    	fankuiHtml +='</div>';
	    	$('#todayTask').append(fankuiHtml);
	    	
	    	$('#todayTask').append('<br>');
	    	$('#todayTask').append('<a class="blue-front" href="javascript:void(0);" onclick="doTodayTask();">返回</a>');
	    }
	});
}

function fankuiTask(){
	var path = "${ctx}/snsTask/fankuiTask.action";
	var postData = {"offset":offset};
	$.ajax({
	    url: path,
	    type: "post",
	    dataType:"json",
	    data: postData,
	    success: function (json) {
	    	var listHtml = "<ul>";
	    	$.each(json,function(index,oneInfo){
	    		listHtml += '<li class="ri-ul">';
	    		listHtml += '<a class="blue-front" href="javascript:void(0);" onclick="doTaskDetail(\''+oneInfo.taskGuid+'\');">'+oneInfo.taskName+'</a>';
	    		listHtml += '</li>';
	    	});
	    	listHtml += "</ul>";
	    	if(offset=='1'){
	    		$('#todayTask').html(listHtml);
	    	}else{
	    		$('#todayTask').append(listHtml);
	    	}
	    }
	});
}
</script>