<%@page import="com.system.util.DateUtil"%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<div class="blue-color fl">
	<%=DateUtil.toDateString(DateUtil.currentDate(), "MM-dd") %>
	<br/>&nbsp;
	<span id="dateSignWeek"></span>
</div>
<div class="fl ml10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
<div class="fl ml10"></div>

<div style="font-size: 20px;"><button style="height: 40px" type="button" onclick="doSignIn();">签到</button></div>

<div class="blue-color fr fb">
	
	<br />
	&nbsp;&nbsp;
</div>
<script type="text/javascript">
$(document).ready(function(){
	var week;
	if(new Date().getDay()==0)          
		week="星期日";
	if(new Date().getDay()==1)          
		week="星期一";
	if(new Date().getDay()==2)          
		week="星期二";
	if(new Date().getDay()==3)          
		week="星期三";
	if(new Date().getDay()==4)          
		week="星期四";
	if(new Date().getDay()==5)          
		week="星期五";
	if(new Date().getDay()==6)          
		week="星期六";
	jQuery('#dateSignWeek').html(week);
	
});

function doSignIn(){
	var path = "${ctx}/snsPost/signIn.action";
	$.ajax({
	    url: path,
	    type: "post",
	    success: function (json) {
	    	alert("签到成功！");
	    }
	});
}
</script>