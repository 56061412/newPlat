<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<div id="listActive" class="w800 mt10">
	<div class="cb"></div>
</div>

<div class="mb50">
	<input type="hidden" id="offset" value="1"/>
	<%-- 
	<a href="javascript:void(0);" onclick="doMore()" class="search-more">查看更多</a>
	--%>
</div>
<script type="text/javascript">
$(document).ready(function(){
	doListMessage();
});
function doListMessage(){
	var path = "${ctx}/snsPost/listMessageInfo.action";
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
	    		listHtml += '<div class="fl qusetion-list mt10 w800">';
	    			listHtml += '<div class="fl">';
	    				listHtml += '<div class="al-month" style="background-color:rgb(255, 255, 255);color:black">'+oneInfo.createTime+'</div>';
	    				listHtml += '<div class="al-date"><img width="60" height="60" src="'+oneInfo.userImg+'"/></div>';
	    				listHtml += '<div class="al-month" style="background-color:rgb(255, 255, 255);color:black">'+oneInfo.scmePersonName+'</div>';
	    				listHtml += '</div>';
	    				listHtml += '<div class="fl w700 ml10">';
	    					listHtml += '<a href="" class="dl-title">';
	    					listHtml += '</a>';
	    				listHtml += '<div class="mt5 question">';
	    					listHtml += oneInfo.scmeContent;
	    				listHtml += '</div>';
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

function dd(){
	listHtml += '<div class="fl qusetion-list mt10 w800">';
	listHtml += '<div class="fl w700 ml10">';
		listHtml += '<a href="" class="dl-title">';
			listHtml += '发送人：'+oneInfo.scmePerson + ',接收人：' + oneInfo.scmeRecPerson+',日期：'+oneInfo.createTime;
		listHtml += '</a>';
		listHtml += '<div class="mt5 question">';
			listHtml += '内容:'+oneInfo.scmeContent;
		listHtml += '</div>';
	listHtml += '<div class="cb"></div>';
	listHtml += '</div>';
	listHtml += '<div class="cb"></div>';
	listHtml += '</div>';
}

function doMore(){
	var offset = parseInt($('#offset').val())+10;
	$('#offset').val(offset);
	doListMessage();
}
</script>