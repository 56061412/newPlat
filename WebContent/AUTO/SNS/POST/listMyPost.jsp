<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%
	String postPage = request.getParameter("postPage");
%>
<%--发帖 --%>
<div class="ask-title mt20">
	<a class="title-name cur" href="javascript:void(0);" onclick="doListPost();"> 全部 <span
		class="gong-red"></span> </a>
	<a class="title-name" href="javascript:void(0);" onclick="doListPost('message');"> 消息 <span
		class="gong-red"></span> </a>
	<a class="title-name" href="javascript:void(0);" onclick="doListPost('activity');"> 活动<span
		class="gong-red"></span> </a>
	<!-- 
	<a class="title-name" href="javascript:void(0);" onclick="doListPost();"> 投票 (10) <span
		class="gong-red"></span> </a>
	 -->
	<a class="title-name" href="javascript:void(0);" onclick="doListPost('topic');"> 话题  <span
		class="gong-red"></span> </a>
	<div class="cb"></div>
</div>
<div id="listPostForm">
</div>

<div class="mb50">
	<input type="hidden" id="postPage" value="<%=postPage%>"/>
	<input type="hidden" id="postType" value=""/>
	<input type="hidden" id="offset" value="1"/>
	<a href="javascript:void(0);" onclick="doMore()" class="search-more">查看更多</a>
</div>

<script type="text/javascript">
	doListPost();
	function doListPost(postType){	
		var loadHtml = "<img src='${ctx}/AUTO/SNS/static/images/loading.gif' />"
		
		var oldPostType = $('#postType').val();
		if(oldPostType!=postType){
			$('#offset').val(1);
		}
		$('#postType').val(postType);
		var path = "${ctx}/snsPost/listSnsPost.action";
		var offset = $('#offset').val();
		var postPage = '<%=postPage%>';
		var postData = {"postType":postType,"offset":offset,"postPage":postPage};
		
    	if(offset=='1'){
    		$('#listPostForm').html(loadHtml);
    	}
		$.ajax({
		    url: path,
		    type: "post",
		    data: postData,
		    dataType:"json",
		    success: function (json) {
		    	var listHtml = "";
		    	$.each(json,function(index,oneInfo){
		    		listHtml += '<div class="other-content">';
		    			listHtml += '<div class="fl"><img width="60" height="60" src="'+oneInfo.userImg+'"/></div>';
		    			listHtml += '<div class="fl ml10">';
		    				listHtml += '<div class="f14 ellipsis w480">'+oneInfo.tieContent+'</div>';
		    				listHtml += '<div class="mt5">';
		    					listHtml += '<div class="fl ">'+oneInfo.createTime+'</div>';
		    					listHtml += '<div class="fr ">';
		    					listHtml += 
		    						'<label class="mr15"><a href="javascript:void(0);" onclick="huifu(\''+oneInfo.postGuid+'\')">回复</a></label>|'+
				    				'<label class="ml15 mr15"><a href="javascript:void(0);" onclick="tuijian(\''+oneInfo.postGuid+'\')">推荐</a></label>|'+
				    				<%--
				    				'<label class="ml15 mr15"><a href="javascript:void(0);" onclick="shoucang(\''+oneInfo.postGuid+'\')">收藏</a></label>|'+
				    				--%>
				    				'<label class="ml15"><a href="javascript:void(0);" onclick="shanchu(\''+oneInfo.postGuid+'\')">删除</a></label>';
		    					listHtml += '</div>';
		    				listHtml += '</div>';
		    				listHtml += '<div id="'+oneInfo.postGuid+'huifu"></div>';
		    			listHtml += '</div>';	    			
		    		listHtml += '<div class="cb"></div></div>';
		    	});
		    	if(offset=='1'){
		    		$('#listPostForm').html(listHtml);
		    	}else{
		    		$('#listPostForm').append(listHtml);
		    	}
		    }
		});
	}
	function huifu(postGuid){
		var huifuHtml = '<div style="height:20px"/>';
		huifuHtml += '<div id="'+postGuid+'List">';
		huifuHtml += '<div class="ask-line"/>';
		huifuHtml += getHuifu(postGuid);//以往回复
		huifuHtml += '</div>';
		huifuHtml += '<div class="ask-text" style="height:90px;overflow:auto;"><textarea id="'+postGuid+'editor"></textarea></div>'+
			'<div class="fr"><a onclick="doHuifu(\''+postGuid+'\')" class="commit-btn fr"></a></div><div class="cb"></div></div>';
		$('#'+postGuid+'huifu').html(huifuHtml);
		var editor = new baidu.editor.ui.Editor({initialFrameWidth:'400px'});
		editor.render(postGuid+'editor');  //editor为编辑器容器的id
	}	
	function doHuifu(postGuid){
		var huifuContent = $('#'+postGuid+'editor').val();
		doSaveHuifu(postGuid,huifuContent);
		var onehuifu = '<div class="ask-user">';
		onehuifu += huifuContent;
		onehuifu += '</div>';
		$('#'+postGuid+'List').append(onehuifu);
	}
	
	function doSaveHuifu(postGuid,huifuContent){
		var huifuContent = $('#'+postGuid+'editor').val();
		var json = {"postGuid":postGuid,"tieContent":huifuContent};
		$.ajax({
		    url: "${ctx}/snsPost/addSnsPostHuifu.action",
		    type: "post",
		    data: json,
		    success: function (text) {
		    	huifu(postGuid);
		    }
		});
	}	
	
	function tuijian(postGuid){		
		var json = {"postGuid":postGuid};
		$.ajax({
		    url: "${ctx}/snsPost/tuijian.action",
		    type: "post",
		    data: json,
		    success: function (text) {
		    	alert("推荐成功！");
		    }
		});		
	}
	function shoucang(postGuid){		
		var json = {"postGuid":postGuid};
		$.ajax({
		    url: "${ctx}/snsPost/shoucang.action",
		    type: "post",
		    data: json,
		    success: function (text) {
		    	alert("收藏成功！");
		    }
		});
	}
	function shanchu(postGuid){		
		$.ajax({
		    url: "${ctx}/snsPost/deletePost.action",
		    type: "post",
		    data: { "postGuid": postGuid },
		    success: function (text) {
		        alert("删除成功！" + text);
		        doListPost($('#postTypePage').val());
		    }
		});	
	}
	function doMore(){
		var postType = $('#postType').val();
		var offset = parseInt($('#offset').val())+10;
		$('#offset').val(offset);
		doListPost(postType);
	}
	
	function getHuifu(postGuid){
		var path = "${ctx}/snsPost/listSnsPostHuifu.action";
		var postData = {"postGuid":postGuid};
		var listHtml = "";
		$.ajax({
		    url: path,
		    async:false,
		    type: "post",
		    data: postData,
		    dataType:"json",
		    success: function (json) {
		    	$.each(json,function(index,oneInfo){
		    		listHtml += '<div class="ask-user">';
		    		listHtml += oneInfo.tieContent;
		    		listHtml += '</div>';
		    	});
		    }
		});
		return listHtml;
	}
</script>