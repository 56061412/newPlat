<%@page import="com.system.util.DateUtil"%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%--未选中状态将click-htt remove掉 --%>
<div class="hot-topic-title">
	<div class="fl htt cur" onclick="doHuaList('tui');">
		热门话题
		<div class="click-htt"></div>
	</div>
	<div class="line-fg fl"></div>
	<div class="fl htt ml10" onclick="doHuaList('shou');">
		关注话题
		<div class="click-htt"></div>
	</div>
	<div class="htt-refresh fr mr10" onclick="doHuaList();"></div>
</div>
<div class="news-title">
	<ul>
		<div id="listHuaForm">		
		</div>		
		<%--
		<li class="mb10">
			<p>
				<span class="fr blue-front"><a class="blue-front"
					href="">更多</a> </span>
				<a class="blue-front" href="">24小时热门微博</a>
			</p>
		</li>
		 --%>
	</ul>
</div>
<script type="text/javascript">
var type = 'tui';
$(document).ready(function(){
	doHuaList('tui');
});

function doHuaList(chuantype){
	var path = "${ctx}/snsPost/listSnsTuiPost.action";
	if(chuantype=='shou'){		
		type = 'shou';
	}else if(chuantype=='tui'){
		type = 'tui';
	}
	if(type=='shou'){
		path = "${ctx}/snsPost/listSnsShouPost.action";
	}else{
		path = "${ctx}/snsPost/listSnsTuiPost.action";
	}
	var postData = {"offset":"5"};
	$.ajax({
	    url: path,
	    type: "post",
	    data: postData,
	    dataType:"json",
	    success: function (json) {
	    	var listHtml = "";
	    	$.each(json,function(index,oneInfo){
	    		listHtml += '<li class="mb10">';
	    		listHtml += '<p>';
	    		listHtml += '<span class="fr">';
	    		if(type=='shou'){
	    			listHtml += oneInfo.postZanNum;
	    		}else{
	    			listHtml += oneInfo.postHuifuNum;
	    		}	    		
	    		listHtml += '</span>';
	    		listHtml += oneInfo.tieContent;
	    		listHtml += '</p>';
	    		listHtml += '<div class="arrow"><em class="S_line2_c">◆</em><span class="S_bg1_c">◆</span></div>';
	    		<%--
	    		listHtml += '<div class="news-content"></div>';
	    		--%>
	    		listHtml += '<div class="news-ico"></div>';
	    		listHtml += '</li>';    		
	    	});
	    	$('#listHuaForm').html(listHtml);
	    }
	});
}
</script>