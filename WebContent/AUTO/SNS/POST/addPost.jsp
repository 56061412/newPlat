<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%--发帖 --%>
<div id="addPostForm">
	<div class="to-share">
		<div class="fl">
			发起
		</div>
		<div class="fl ml10 pr">
			<select id="postTypePage" name="postTypePage" onchange="changeOption()">
				<option value="message">消息</option>
				<option value="activity">活动</option>
				<option value="topic">话题</option>
				<%-- 
				<option value="hyperlink">链接</option>
				--%>
			</select>
		</div>
		<div class="fl ml10 pr" id="showExtra3">
			类别
			<select id="extra3Page" name="extra3Page">
				<option value="钣金">钣金</option>
				<option value="机修">机修</option>
				<option value="保养">保养</option>
				<option value="改装">改装</option>
				<option value="玻璃">玻璃</option>
				<option value="零售">零售</option>			
				<option value="批发">批发</option>
			</select>
		</div>
		<div class="fl ml10">
			给
		</div>
		<div class="fl ml10 pr">								
			<select id="postObjectPage" name="postObjectPage">
				<%-- 
				<option value="all">所有人</option>
				--%>
				<option value="comEmp">公司成员</option>
				<option value="friend">我的好友</option>
			</select>
		</div>
		<div class="cb"></div>
	</div>
	
<!--	填写消息	-->
	<div>
		<input id="tieContent" name="tieContent" class="mini-hidden" />
		<input id="postType" name="postType" class="mini-hidden" />
		<input id="postObject" name="postObject" class="mini-hidden" />
		<input id="tieContent" name="tieContent" class="mini-hidden" />
		<input id="extra3" name="extra3" class="mini-hidden" />
		<textarea id="editor" name="editor"></textarea> 
	</div>
<!--	填写消息 end	-->
<!--	发送按钮	-->
	<div>
		<a onclick="doSavePost()" class="release-btn fr"></a>
	</div>
<!--	发送按钮	 end-->
</div>
	<script type="text/javascript">
	var editor = new baidu.editor.ui.Editor();
	editor.render('editor');  //editor为编辑器容器的id
	function doSavePost(){		
        var form = new mini.Form("#addPostForm");
        mini.get("tieContent").setValue($('#editor').val());
        mini.get("postType").setValue($('#postTypePage').val());
        mini.get("postObject").setValue($('#postObjectPage').val()); 
        mini.get("extra3").setValue($('#extra3Page').val()); 
		var data = form.getData();      //获取表单多个控件的数据
		var json = mini.encode(data);   //序列化成JSON
		$.ajax({
		    url: "${ctx}/snsPost/saveOrUpdateSnsPost.action",
		    type: "post",
		    data: { submitData: json },
		    success: function (text) {
		        alert("发布成功" + text);
		        doListPost($('#postTypePage').val());
		        editor.setContent("");
		    }
		});
	}
	
	function changeOption(){
		var postTypePage = $('#postTypePage').val();
		if(postTypePage=='message'){
			$('#showExtra3').show();
		}else{
			$('#showExtra3').hide();
			$('#postObjectPage').html('<option value="comEmp">公司成员</option><option value="friend">我的好友</option>');
		}
		
		if(postTypePage=='topic'){
			$('#postObjectPage').html('<option value="comEmp">公司成员</option><option value="all">公开</option>');
		}else{
			$('#postObjectPage').html('<option value="comEmp">公司成员</option><option value="friend">我的好友</option>');
		}
	}
	</script>
	</body>
</html>
