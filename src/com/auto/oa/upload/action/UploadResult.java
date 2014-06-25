package com.auto.oa.upload.action;

public class UploadResult {
	private String uploadStatus;
	private String fileGuid;
	
	public UploadResult(){
		
	}
	
	public UploadResult(String uploadStatus, String fileGuid) {
		this.uploadStatus = uploadStatus;
		this.fileGuid = fileGuid;
	}
	
	public String getUploadStatus() {
		return uploadStatus;
	}
	public void setUploadStatus(String uploadStatus) {
		this.uploadStatus = uploadStatus;
	}
	public String getFileGuid() {
		return fileGuid;
	}
	public void setFileGuid(String fileGuid) {
		this.fileGuid = fileGuid;
	}

}
