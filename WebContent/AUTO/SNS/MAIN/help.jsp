<%@page import="com.system.util.DateUtil"%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<div class="activities-title fb f14" >
	帮助与反馈
</div>
<div class="activities-title-content">
	<a target=blank href="http://wpa.qq.com/msgrd?V=1&Uin=343693994&Site=OK&Menu=yes" mce_href="http://wpa.qq.com/msgrd?V=1&Uin=343693994&Site=OK&Menu=yes"><div class="help-btn fl"></div></a>
	<div class="feedback-btn fr" onclick="doFankui()"></div>
	<div class="cb"></div>
</div>
<script type="text/javascript">
mini.parse();
$(document).ready(function(){
	
});

function doFankui() {
    mini.open({
        url: "fankui.jsp",
        title: "客户反馈", width: 600, height: 360
    });
}
</script>