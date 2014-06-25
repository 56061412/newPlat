<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<div class="ask-title mt20">
	<a class="title-name cur" href="javascript:void(0);" onclick="doListKnowledge();"> 全部 <span
		class="gong-red"></span> </a>
	<a class="title-name" href="javascript:void(0);" onclick="doListKnowledge('KT_1');"> 钣金 <span
		class="gong-red"></span> </a>
	<a class="title-name" href="javascript:void(0);" onclick="doListKnowledge('KT_2');"> 机修<span
		class="gong-red"></span> </a>
	<a class="title-name" href="javascript:void(0);" onclick="doListKnowledge('KT_3');"> 其他  <span
		class="gong-red"></span> </a>
	<div class="cb"></div>
</div>
<div id="listActive">
</div>

<div class="mb50">
	<input type="hidden" id="offset" value="1"/>
	<%-- 
	<a href="javascript:void(0);" onclick="doMore()" class="search-more">查看更多</a>
	--%>
</div>
<script type="text/javascript">
$(document).ready(function(){
	doListKnowledge();
});
function doListKnowledge(typeGuid){
	var path = "${ctx}/snsKnowledge/listKnowledgeInfoInfo.action";
	var offset = $('#offset').val();	
	var postData = {"typeGuid":typeGuid,"offset":offset};
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
	    			listHtml += '<div class="fl w700 ml10">';
	    				listHtml += '<a href="" class="dl-title">';
	    					listHtml += oneInfo.title;
	    				listHtml += '</a>';
	    				listHtml += '<div class="mt5 question">';
	    					listHtml += oneInfo.content;
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
</script>