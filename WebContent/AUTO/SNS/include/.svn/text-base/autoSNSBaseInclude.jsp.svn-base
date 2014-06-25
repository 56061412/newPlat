<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<%
String hostUrl=request.getScheme()+"://";   
hostUrl+=request.getHeader("host");
//System.out.println("url........................."+url);
//url+=request.getRequestURI();   
//System.out.println("url........................."+url);
//if(request.getQueryString()!=null)   
   // url+="?"+request.getQueryString();  

//System.out.println("url........................."+url);
%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var="HOST_URL" value="<%=hostUrl %>"/>
<c:set var="REST_URL" value="${HOST_URL}${ctx}"/>

<!--MiniUI-->
<%-- <link href="${ctx}/AUTO/OA/js/miniui/themes/default/miniui.css" rel="stylesheet" type="text/css" /> --%>
<!--MiniUI SKIN CSS-->
<link href="${ctx}/AUTO/SNS/static/js/miniui/themes/default/miniui.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/AUTO/SNS/static/js/miniui/themes/autoSNS/skin.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/AUTO/OA/js/miniui/themes/auto2012/skin.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" type="text/css" href="${ctx}/AUTO/SNS/static/css/common.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/AUTO/SNS/static/css/base.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/AUTO/SNS/static/css/login.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/AUTO/SNS/static/css/member-center.css" />

<script src="${ctx}/AUTO/SNS/static/js/jquery-1.8.0.min.js" type="text/javascript"></script>
<script src="${ctx}/AUTO/SNS/static/js/common.js" type="text/javascript"></script>

<!--MiniUI JS-->
<script src="${ctx}/AUTO/SNS/static/js/miniui/miniui.js" type="text/javascript"></script>
<!-- UEdit -->
<link type="text/css" href="${ctx}/ueditor/themes/default/ueditor.css"/>
<script type="text/javascript" charset="utf-8" src="${ctx}/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="${ctx}/ueditor/ueditor.all.js"></script>

<script type="text/javascript">
//初始化 日期选择控件
<%--
var c = new Calendar("c");
document.write(c);
--%>
<!--
//jQuery MiniUI开发系列之：Ajax处理超时、服务端错误
mini_debugger = false;
$(document).ajaxComplete(function (evt, request, settings) {
	var status = request.status;
	//alert("status: "+status);
	if(status==408){
    	alert("登录超时，请重新登录 ");
    	top.location = '${ctx}/AUTO/SNS/login.jsp';
	}else{
		var text = request.responseText;
		var obj = mini.decode(text);
		if (typeof(obj.error) != "undefined" && obj.error != 0) {
			alert(obj.errorMsg);
		}
	}
});
// 分页 
function doPage(flag){
	if(flag=='pre'){
		document.getElementById("currentPage").value='${page.offset - 1}';
	}else if(flag=='next'){
		document.getElementById("currentPage").value='${page.offset + 1}';
	}else if(flag=='first'){
		document.getElementById("currentPage").value='1';
	}else if(flag=='last'){
		document.getElementById("currentPage").value='${page.pageCount}';
	}else{
		document.getElementById("currentPage").value=flag;
	}
	document.forms[0].submit();
}
//-->
</script>
