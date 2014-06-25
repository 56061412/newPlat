<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<title>客户反馈</title>
<%@include file="../include/autoSNSBaseInclude.jsp" %>
</head>
<body>
<%--发帖 --%>
<div id="addPostForm">
	<div class="to-share">
		<div class="fl ml10 pr">	
			对象:							
			<select id="postObjectPage" name="postObjectPage">
				<option value="comEmp">公司成员</option>
				<option value="all">公开</option>
			</select>
		</div>
		<div class="cb"></div>
	</div>
	<div class="to-share">
		<div class="fl ml10 pr">								
			标题:<input id="extra2" name="extra2" class="mini-textbox" value=""/>
		</div>
		<div class="cb"></div>
	</div>
<!--	填写消息	-->
	<div>
		<input id="postTypePage" name="postTypePage" class="mini-hidden" value="topic"/>
		<input id="tieContent" name="tieContent" class="mini-hidden" />
		<input id="postType" name="postType" class="mini-hidden" />
		<input id="postObject" name="postObject" class="mini-hidden" />
		<input id="tieContent" name="tieContent" class="mini-hidden" />
		<textarea id="editor" name="editor"></textarea> 
	</div>
<!--	填写消息 end	-->
<!--	发送按钮	-->
	<div>
		<a onclick="doSavePost()" class="release-btn fr"></a>
	</div>
<!--	发送按钮	 end-->
</div>
</body>
</html>
<script type="text/javascript">
mini.parse();
var editor;
$(document).ready(function(){
	editor = new baidu.editor.ui.Editor({initialFrameHeight:'400px'});
	editor.render('editor');  //editor为编辑器容器的id
});

function doSavePost(){
    var form = new mini.Form("#addPostForm");
    mini.get("tieContent").setValue(editor.getContent());
    mini.get("postType").setValue($('#postTypePage').val());
    mini.get("postObject").setValue($('#postObjectPage').val()); 
	var data = form.getData();      //获取表单多个控件的数据
	var json = mini.encode(data);   //序列化成JSON
	$.ajax({
	    url: "${ctx}/snsPost/saveOrUpdateSnsPost.action",
	    type: "post",
	    data: { submitData: json },
	    success: function (text) {
	        alert("发布成功" + text);
	        editor.setContent("");
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