<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var="sessionUserInfo" value="${sessionScope.userInfo}"/>

<!--MiniUI-->
<link href="${ctx}/AUTO/OA/js/miniui/themes/default/miniui.css" rel="stylesheet" type="text/css" />
<!--MiniUI SKIN CSS-->
<link href="${ctx}/AUTO/OA/js/miniui/themes/auto2012/skin.css" rel="stylesheet" type="text/css" />
<!--<link href="${ctx}/AUTO/OA/js/miniui/themes/blue/skin.css" rel="stylesheet" type="text/css" />-->

<%-- <script src="${ctx}/AUTO/OA/js/jquery-1.9.1.min.js" type="text/javascript"></script> --%>
<script src="${ctx}/AUTO/OA/js/jquery-1.7.2.min.js" type="text/javascript"></script>
<!--MiniUI JS-->
<script src="${ctx}/AUTO/OA/js/miniui/miniui.js" type="text/javascript"></script>

<script type="text/javascript">
<!--
//jQuery MiniUI开发系列之：Ajax处理超时、服务端错误
mini_debugger = false;
$(document).ajaxComplete(function (evt, request, settings) {
	var status = request.status;
	//alert("status: "+status);
	if(status==408){
    	alert("登录超时，请重新登录 ");
    	top.location = '${ctx}/AUTO/OA/LOGIN/login.jsp';
	}else{
		var text = request.responseText;
		var obj = mini.decode(text);
		if (typeof(obj.error) != "undefined" && obj.error != 0) {
			alert(obj.errorMsg);
		}
	}
});

//-->
</script>
