<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<c:set var="postInfoData" value="${postInfoMap}"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
	<title> 修车人 </title>
	<meta name="Author" content="">
	<meta name="Keywords" content="">
	<meta name="Description" content="">
	<meta content="initial-scale=1.0,user-scalable=no,maximum-scale=1" name="viewport">
	<meta content="yes" name="apple-mobile-web-app-capable">
	<meta content="black" name="apple-mobile-web-app-status-bar-style">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 </head>

 <body>
  <h3>${postInfoData.tieContent}</h3>
<!--   2014-02-01   <font color="#0000FF">Autodaily每日车讯</font><br /><br /> -->
<!--   <p style='text-align:left;margin-top: 15px; margin-bottom: 15px; padding: 0px; line-height: 28px; color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);'>同事跟我说“要来一台V40 CC的测试车”，我心想 -->
<!--   </p> -->
 </body>
</html>
