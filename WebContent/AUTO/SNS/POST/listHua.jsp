<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<div id="listHua" class="w900 mt10">
	<%--
	<div class="fl theme-list mr10">
		<div class="fl mt10 w100 mb10">
			<a href=""><div class="tl-title" >乔布斯群</div></a>
			<div class="mt20 tl-much ml5">1 个回话</div> 
		</div>
		<div class="fl mt20">
			<a href=""><img src="${ctx}/AUTO/SNS/static/images/xcr/head-ico.png" height="30" width="30" /></a>
			<a href=""><img src="${ctx}/AUTO/SNS/static/images/xcr/head-ico.png" height="30" width="30" /></a>
			<a href=""><img src="${ctx}/AUTO/SNS/static/images/xcr/head-ico.png" height="30" width="30" /></a>
			<a href=""><img src="${ctx}/AUTO/SNS/static/images/xcr/head-ico.png" height="30" width="30" /></a>
			<a href=""><img src="${ctx}/AUTO/SNS/static/images/xcr/head-ico.png" height="30" width="30" /></a>
			<p class="tl-much mt5">这些人关注这个话题</p>
		</div>
		<div class="tl-attention fr mt30"></div>
		<div class="cb"></div>	
	</div>
	 --%>
</div>

<div class="mb50">
	<input type="hidden" id="offset" value="1"/>
	<%-- 
	<a href="javascript:void(0);" onclick="doMore()" class="search-more">查看更多</a>
	--%>
</div>
<script type="text/javascript">
$(document).ready(function(){
	doListHuati();
});

function doListHuati(){
	var path = "${ctx}/snsPost/listSnsPost.action";
	var offset = $('#offset').val();
	var postData = {"postType":"topic","offset":offset};
	var loadHtml = "<img src='${ctx}/AUTO/SNS/static/images/loading.gif' />"
	if(offset=='1'){
   		$('#listHua').html(loadHtml);
   	}
	$.ajax({
	    url: path,
	    type: "post",
	    dataType:"json",
	    data: postData,
	    success: function (json) {
	    	var listHtml = "";
	    	$.each(json,function(index,oneInfo){
	    		listHtml += '<div class="fl theme-list mr10">';	    		
		    		listHtml += '<div class="fl mt10 w100 mb10">';
		    			listHtml += '<a href="javascript:void(0);"><div class="tl-title" >'+oneInfo.extra2+'</div></a>';
		    			listHtml += '<div class="mt20 tl-much ml5"><img width="60" height="50" src="'+oneInfo.userImg+'"/></div>';
		    		listHtml += '</div>';
		    		listHtml += '<div class="fl mt20">';
		    		listHtml += '</div>';
		    		listHtml += '<div class="fr mt30">'+oneInfo.tieContent+'</div>';
		    		listHtml += '<div class="cb"></div>';
	    		listHtml += '</div>';
	    	});
	    	if(offset=='1'){
	    		$('#listHua').html(listHtml);
	    	}else{
	    		$('#listHua').append(listHtml);
	    	}
	    }
	});
}
</script>