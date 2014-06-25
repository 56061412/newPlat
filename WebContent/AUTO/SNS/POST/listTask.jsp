<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<div class="ask-title mt20">
	<a class="title-name cur" href="javascript:void(0);" onclick="doListTask('fabu');">我发布的<span class="gong-red"></span></a>
	<a class="title-name" href="javascript:void(0);" onclick="doListTask('jieshou');">我接收的 <span class="gong-red"></span></a>
	<div class="cb"></div>
</div>
<div id="listActive" class="w800 mt10">
	<div class="cb"></div>
</div>

<div class="mb50" >
	<input type="hidden" id="offset" value="1"/>
	<%-- 
	<a href="javascript:void(0);" onclick="doMore()" class="search-more">查看更多</a>
	--%>
</div>
<script type="text/javascript">
mini.parse();
$(document).ready(function(){
	doListTask('fabu');
});
function doListTask(type){
	var path = "${ctx}/snsTask/listTaskInfo.action";
	if(type=='jieshou'){
		path = "${ctx}/snsTask/listTaskInfoByPerson.action";
	}	
	var offset = $('#offset').val();	
	var postData = {"offset":offset};
	var loadHtml = "<img src='${ctx}/AUTO/SNS/static/images/loading.gif' />"
	if(offset=='1'){
   		$('#listActive').html(loadHtml);
	}
	$.ajax({
	    url: path,
	    type: "post",
	    dataType:"json",
	    data: postData,
	    success: function (json) {
	    	var listHtml = "";
	    	$.each(json,function(index,oneInfo){
	    		listHtml += '<div class="fl qusetion-list mt10 w800"';
	    		listHtml += '>';
	    			listHtml += '<div class="fl w700 ml10">';
	    				listHtml += '<a href="" class="dl-title">';
	    					listHtml += oneInfo.taskName;
	    				listHtml += '</a>';
	    				listHtml += '<div class="mt5 question">';
	    					listHtml += oneInfo.content;
	    				listHtml += '</div>';
	    				if(type=='jieshou'&&oneInfo.taskStatus=='0'){
		    				listHtml += '<div class="fr ">';
	    					listHtml += '<label class="mr15"><a href="javascript:void(0);" onclick="doEndTask(\''+oneInfo.rowGuid+'\')">完成</a></label>';
	    					listHtml += '</div>';
	    				}else if(type=='fabu'){
	    					listHtml += '<div class="fr ">';
	    					listHtml += '<label class="mr15"><a href="javascript:void(0);" onclick="listTaksPerson(\''+oneInfo.taskGuid+'\')">任务完成情况</a></label>';
	    					listHtml += '</div>';
	    				}
	    			listHtml += '<div class="cb"></div>';
	    		listHtml += '</div>';
		    	listHtml += '<div class="cb"></div>';
	    		listHtml += '</div>';
	    	});
	    	if(offset=='1'){
	    		$('#listActive').html(listHtml);
	    	}else{
	    		$('#listActive').append(listHtml);
	    	}
	    }
	});
}

function doEndTask(rowGuid){
	var json = {"rowGuid":rowGuid};
	$.ajax({
	    url: "${ctx}/snsTask/fankuiTask.action",
	    type: "post",
	    data: json,
	    success: function (text) {
	    	alert("反馈成功" + text);
	    	doListTask("jieshou");
	    }
	});
}

function listTaksPerson(taskGuid) {
    mini.open({
        url: "listTaskPerson.jsp?taskGuid="+taskGuid,
        title: "任务详细", width: 600, height: 360,
        onload: function () {
            var iframe = this.getIFrameEl();
            var data = { action: "new"};
            iframe.contentWindow.SetData(data);
        }
    });
}
</script>