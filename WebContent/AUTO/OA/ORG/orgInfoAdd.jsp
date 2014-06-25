<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>公司信息新增</title>
<%@include file="../include/autoOABaseInclude.jsp" %>
<style type="text/css">
.errorText
{
    color:red;
}
</style>
</head>

<body>
<form id="orgInfoAdd" method="post">
<!-- 隐藏信息 START -->
	<div style="display: none;">
		<input name="auorgParentGuid" class="mini-hidden" label="公司信息父主键"/>
		<input name="auorgGuid" class="mini-hidden" label="公司信息主键"/>
	</div>
<!-- 隐藏信息 END -->
<div style="padding-left:11px;padding-bottom:5px;">
<fieldset id="fd1" style="width:600px;">
	<legend><span>公司信息新增</span></legend>
	<table class="form-table" border="0" cellpadding="1" cellspacing="2" >
		<tr>
	        <td width="22%" align="right"><label for="auorgCode$text">公司代码：</label></td>
	        <td>
				<input name="auorgCode" class="mini-textbox" errorMode="none" required="true" 
					vtype="maxLength:50" onvalidation="onValidation" maxLengthErrorText="字符串长度不能超过50个字符"/>
			</td>
	        <td id="auorgCode_error" class="errorText"></td>
	    </tr> 
	    <tr>
	        <td width="15%" align="right"><label for="auorgName$text">公司名称：</label></td>
	        <td>
				<input name="auorgName" class="mini-textbox" errorMode="none" required="true" 
					vtype="maxLength:50" onvalidation="onValidation" maxLengthErrorText="字符串长度不能超过50个字符"/>
			</td>
	        <td id="auorgName_error" class="errorText"></td>
	    </tr>
	    <tr>
	        <td width="15%" align="right"><label for="auorgTypeCode$text">公司类型：</label></td>
	        <td>
				<input name="auorgTypeCode" class="mini-radiobuttonlist" 
				    textField="osccName" valueField="osccCode" url="${ctx}/sys/queryOrgTypeList.action" />
			</td>
	        <td id="auorgTypeCode_error" class="errorText"></td>
	    </tr>
<!-- 	    <tr> -->
<!-- 	        <td width="15%" align="right"><label for="auorgTypeCode$text">公司品牌ACTION：</label></td> -->
<!-- 	        <td> -->
<!-- 				<input name="auorgTypeCode" class="mini-radiobuttonlist"  -->
<%-- 				    textField="osccName" valueField="osccCode" url="${ctx}/sys/queryBrandList.action" /> --%>
<!-- 			</td> -->
<!-- 	        <td id="auorgTypeCode_error" class="errorText"></td> -->
<!-- 	    </tr> -->
	    <tr>
	        <td width="15%" align="right"><label for="auorgTypeCode$text">公司品牌：</label></td>
	        <td>
	        	<input name="auorgBrandCode" class="mini-combobox" textField="osccName" valueField="osccCode" 
    				url="${ctx}/rest/oaSysRest/getOrgBrand" required="true" allowInput="true" showNullItem="true" nullItemText="请选择..."/>
			</td>
	        <td id="auorgTypeCode_error" class="errorText"></td>
	    </tr>
<!-- 	    <tr> -->
<!-- 	        <td width="15%" align="right"><label for="auorgArea$text">所属区域：</label></td> -->
<!-- 	        <td> -->
<!-- 				<input name="auorgArea" class="mini-textbox" errorMode="none" required="true" vtype="maxLength:50" onvalidation="onValidation" maxLengthErrorText="字符串长度不能超过50个字符"/> -->
<!-- 			</td> -->
<!-- 	        <td id="auorgArea_error" class="errorText"></td> -->
<!-- 	    </tr> -->
	    
	    <tr>
	        <td width="15%" align="right"><label for="auorgArea$text">区&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;域：</label></td>
	        <td>
	        	<input id="regionCombo" class="mini-combobox" style="width:80px;" textField="auarName" valueField="auarGuid" 
			        onvaluechanged="onRegionChanged" url="${ctx}/rest/oaOrgRest/getAreaRegion" showNullItem="true"
		         />
				<input id="provinceCombo" class="mini-combobox" style="width:80px;" textField="auarName" valueField="auarGuid"  
					onvaluechanged="onProvinceChanged" />
				<input id="cityCombo" name="auorgArea" class="mini-combobox" style="width:80px;" textField="auarName" valueField="auarGuid"  />
			</td>
	    </tr>
	    
	    <tr>
	        <td width="15%" align="right"><label for="auorgAddress$text">公司地址：</label></td>
	        <td>
				<input name="auorgAddress" class="mini-textbox" errorMode="none" required="true" vtype="maxLength:100" onvalidation="onValidation" maxLengthErrorText="字符串长度不能超过100个字符"/>
			</td>
	        <td id="auorgAddress_error" class="errorText"></td>
	    </tr>
	    <tr>
	        <td width="15%" align="right"><label for="auorgPhone$text">公司电话：</label></td>
	        <td>
				<input name="auorgPhone" class="mini-textbox" errorMode="none" required="true" vtype="maxLength:100" onvalidation="onValidation" maxLengthErrorText="字符串长度不能超过100个字符"/>
			</td>
	        <td id="auorgPhone_error" class="errorText"></td>
	    </tr>
	    <tr>
	        <td width="15%" align="right"><label for="auorgMail$text">公司邮箱：</label></td>
	        <td>
				<input name="auorgMail" class="mini-textbox" errorMode="none" required="true" vtype="maxLength:100" onvalidation="onValidation" maxLengthErrorText="字符串长度不能超过100个字符"/>
			</td>
	        <td id="auorgMail_error" class="errorText"></td>
	    </tr>
	</table>
	</fieldset>
	<div style="text-align:center;padding:10px;">               
         <a id="buttonOk" class="mini-button" iconCls="icon-add" onclick="onOk" style="width:60px;margin-right:10px;">保存</a>       
         <a class="mini-button" iconCls="icon-cancle" onclick="onCancel" >取消</a>
     </div>
</div>
</form>

<script type="text/javascript">
mini.parse();
var form = new mini.Form("#orgInfoAdd");
var o = mini.decode('${param.initJsonData}');
form.setData(o);

var regionCombo = mini.get("regionCombo");
var provinceCombo = mini.get("provinceCombo");
var cityCombo = mini.get("cityCombo");

function onRegionChanged(e) {
	var id = regionCombo.getValue();
	
	provinceCombo.setValue("");
	
	var url = "${ctx}/rest/oaOrgRest/getAreaProvince/" + id;
	provinceCombo.setUrl(url);
	
	provinceCombo.select(0);
}

function onProvinceChanged(e) {
	var id = provinceCombo.getValue();
	
	cityCombo.setValue("");
	
	var url = "${ctx}/rest/oaOrgRest/getAreaCity/" + id;
	cityCombo.setUrl(url);
	
	cityCombo.select(0);
}


function onOk(){
	$("#buttonOk").attr("disabled","disabled"); 
	//提交表单数据
	
	form.validate();
    if (form.isValid() == false) return;
	      
	var data = form.getData();      //获取表单多个控件的数据
	var json = "["+mini.encode(data)+"]";   //序列化成JSON数组
	$.ajax({
	    url: "${ctx}/orgInfo/saveOrUpdateOaOrgInfo.action",
	    type: "post",
	    data: { data: json },
	    cache: false,
	    success: function (text) {
	    	if(text){
	    		//alert(text);
	    	}		        
	        CloseWindow("save");
	    },
	    error: function (jqXHR, textStatus, errorThrown) {
            alert(jqXHR.responseText);
            CloseWindow();
       	}
	    
	});
}

function onCancel(e) {
	CloseWindow("cancel");
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

//标准方法接口定义
function SetData(data) {
	
	if (data.action == "edit") {
       //跨页面传递的数据对象，克隆后才可以安全使用
		data = mini.clone(data);
		$.ajax({
			dataType: 'json',
			url: "${ctx}/orgInfo/getOaOrgInfo.action?auorgGuid=" + data.auorgGuid,
			cache: false,
			success: function (text) {
				var o = mini.decode(text);
                form.setData(o);
                form.setChanged(false);
			}
		});
	}
}
function updateError(e) {
    var id = e.sender.name + "_error";
    var el = document.getElementById(id);
    if (el) {
        el.innerHTML = e.errorText;
    }
}
function onValidation(e) {                  
    updateError(e);
}
</script>
</body>
</html>