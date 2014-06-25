<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%--发帖 --%>
<div id="addKnowledgeForm">	
<!--	填写消息	-->	
	    <table>    	
			<tr>
                <td>
                   	类别：
                </td>
                <td>
                    <input id="typeGuid" name="typeGuid" class="mini-combobox" data="TypeGuids" required="true" 
						onvalidation="onValidation"/>
                </td>
			</tr>
            <tr><td colspan="2"><br></td></tr>
			<tr>		
				<td>
	             	标题：
				</td>
				<td>
					<input id="title" name="title" class="mini-textbox" required="true" style="width:500px"
						vtype="maxLength:100" onvalidation="onValidation" maxLengthErrorText="标题长度不能超过100位"/>
				</td>
			</tr>
			 <tr><td colspan="2"></br></td></tr>
			<tr>
				<td>
	             	内容：
				</td>
				<td>
					<input id="content" name="content" class="mini-textarea" required="true" style="width:500px;height:80px;"
					vtype="maxLength:1000" onvalidation="onValidation" maxLengthErrorText="标题长度不能超过1000位"/>
				</td>
			</tr>
		</table>	
	
<!--	填写消息 end	-->
<!--	发送按钮	-->
	<div>
		<a onclick="doSaveknowledge()" class="release-btn fr"></a>
	</div>
<!--	发送按钮	 end-->
</div>
<script type="text/javascript">
	var TypeGuids = [{ id: 'KT_1', text: '钣金' }, { id: 'KT_2', text: '机修'},{id: 'KT_3', text: '其他'}];
	function doSaveknowledge(){		
        var form = new mini.Form("#addKnowledgeForm");
		var data = form.getData();      //获取表单多个控件的数据
		var json = mini.encode(data);   //序列化成JSON
		//var jsonTaskPerson = "";
		$.ajax({
		    url: "${ctx}/snsKnowledge/addKnowledgeInfo.action",
		    type: "post",
		    data: { jsonKnowledgeInfo: json},
		    success: function (text) {
		        alert("新增成功" + text);
		        doListKnowledge();	    
		        mini.get("title").setValue('');
		        mini.get("content").setValue('');
		    }
		});
	}
	
	//表格验证
	function onValidation(e) {
	    updateError(e);
	}
	function updateError(e) {
	    var id = e.sender.name + "_error";
	    var el = document.getElementById(id);
	    if (el) {
		    if(e.errorText.length>1){
		    	$("#"+id).addClass("error-tip red msg-lh");
		        el.innerHTML = e.errorText;
			}else{
				$("#"+id).removeClass("error-tip red msg-lh");
				el.innerHTML = e.errorText;
			}
	    }
	}
</script>
</body>
</html>
