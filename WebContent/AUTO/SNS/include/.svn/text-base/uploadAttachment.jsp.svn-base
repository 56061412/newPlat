<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>附件上传</title>

 
<link rel="stylesheet" type="text/css" href="${ctx}/AUTO/SNS/static/js/swfupload/css/default.css">


<script type="text/javascript" src="${ctx}/AUTO/SNS/static/js/jquery-1.7.min.js" ></script>
<script type="text/javascript" src="${ctx}/AUTO/SNS/static/js/swfupload/swfupload.js" ></script>
<script type="text/javascript" src="${ctx}/AUTO/SNS/static/js/swfupload/swfupload.queue.js"></script>
<script type="text/javascript" src="${ctx}/AUTO/SNS/static/js/swfupload/fileprogress.js"></script>
<script type="text/javascript" src="${ctx}/AUTO/SNS/static/js/swfupload/handlers.js"></script>
</head>

<body>

<div id="content">

<h2></h2>

<form id="attachmentForm" name="213" method="post" enctype="multipart/form-data">
<input type="hidden" label="附件主键集合" id="fileGuid" />
<p></p>

<div class="fieldset flash" id="fsUploadProgress">

<span class="legend">上传文件列表</span>

</div>

<div id="divMovieContainer">
<input id="filenamelist" type="hidden" name="filenamelist" />
<span id="spanButtonPlaceHolder"></span>
<input type="button" value="上  传" onclick="upload();" style="margin-left: 2px; font-size: 8pt; height: 29px;" />
<input type="button" value="停  止" onclick="stop();" style="display: none; margin-left: 2px; font-size: 8pt; height: 29px;" />
<!--<input id="btnCancel" type="button" value="取消所有" onclick="swfUpload.cancelQueue();" disabled="disabled" style="margin-left: 2px; font-size: 8pt; height: 29px;" />-->
<!--<input type="button" onclick="javaScript:window.close();" name="bt" style="margin-left: 2px; font-size: 8pt; height: 29px;" value="关  闭" />-->
</div>
</form>
</div>
 

<script type="text/javascript">
var swfUpload;
window.onload = function() {
	var settings = {
	//设置flash文件
	flash_url : "${ctx}/AUTO/SNS/static/js/swfupload/swfupload.swf",
	//设置服务器的上传地址
	upload_url: "${ctx}/upload/uploadFile.action",
	//提交到服务器的参数信息 
	post_params: {"param" : "uploadParams"},
	//上传文件的最大空间
	file_size_limit : "20MB",
	//允许上传文件的类型，*.*是所有，*.txt只能上传文本   *.jpg;*.gif;*.png;*.bmp
	file_types : "*.*",
	//这个就服务器端要获得的文件的属性，相当于file的name
	file_post_name: "file",
	//所有文件夹
	file_types_description : "All Files",
	//上传文件选取的最大队列数
	file_upload_limit : 50,
	file_queue_limit : 2,
	
	// Button settings 下面是上传按钮的设置
	button_image_url: "${ctx}/AUTO/SNS/static/js/swfupload/images/TestImageNoText_65x29.png",
	button_width: "65",
	button_height: "29",
	button_placeholder_id: "spanButtonPlaceHolder",
	button_text: '<span class="theFont">浏  览</span>',
	button_text_style: ".theFont { font-size: 12; }",
	button_text_left_padding: 12,
	button_text_top_padding: 3,
	
	custom_settings : {
		progressTarget : "fsUploadProgress",
		cancelButtonId : "btnCancel"
	},
	debug: false,//是否显示调试的textarea
	
	// The event handler functions are defined in handlers.js 下面是上传事件和函数
	//选择完文件后就触发
	file_queued_handler : fileQueued,
	//上传文件错误时触发
	file_queue_error_handler : fileQueueError,
	//上传文件弹出窗口，窗口关闭触发
	file_dialog_complete_handler : fileDialogComplete,
	//开始上传触发
	upload_start_handler : uploadStart,
	upload_progress_handler : uploadProgress,
	//上传错误触发
	upload_error_handler : uploadError,
	//上传成功
	upload_success_handler : uploadSuccess,
	//完成
	upload_complete_handler : uploadComplete,
	//队列中上传完成
	queue_complete_handler : queueComplete
	 
	};
	
	//自定义属性，是否停止上传
	swfUpload = new SWFUpload(settings);
	swfUpload.stopped = false;
};

function fileDialogComplete(numberselected, numberqueued) {
	if (swfUpload.getStats().files_queued > 0) {
		document.getElementById("btnCancel").disabled = false;
	}
}
function uploadSuccess(file, serverData) {
	try {
		var progress = new FileProgress(file, this.customSettings.progressTarget);
		progress.setComplete();
		var data = eval("(" + serverData + ")");
		if (data.uploadStatus == 0 || data.uploadStatus == "0") {
			progress.setStatus("上传成功!");
			$('#fileGuid').val(data.fileGuid);
			//alert(data.fileGuid);
		} else {
			progress.setError();
			progress.setStatus("上传失败!" + data.message);
		}
		progress.toggleCancel(false);
	} catch (ex) {
		this.debug(ex);
	}
}
function queueComplete(numberselected, numberqueued) {
//alert(numberselected + "-" + numberqueued);
}
function upload() {
	if (swfUpload.getStats().files_queued > 0) {
     //document.getElementById("btnCancel").disabled = true;
		swfUpload.startUpload();
	} else {
		alert("请选择要上传的文件!");
	}
}
function stop() {
	if (swfUpload) {
		swfUpload.stopUpload();
	}
}
 
</script>

</body>
</html>