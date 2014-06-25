package com.auto.oa.upload.action;

import java.io.File;

import com.system.common.BaseAction;

public class UploadAction extends BaseAction {

	private static final long serialVersionUID = -2116417951163185252L;
	private File file;   
    private String fileFileName;   
    private String fileContentType;   
       
    public File getFile() {   
        return file;   
    }   
  
    public void setFile(File file) {   
        this.file = file;   
    }   
  
    public String getFileFileName() {   
        return fileFileName;   
    }   
  
    public void setFileFileName(String fileFileName) {   
        this.fileFileName = fileFileName;   
    }   
  
    public String getFileContentType() {   
        return fileContentType;   
    }   
  
    public void setFileContentType(String fileContentType) {   
        this.fileContentType = fileContentType;   
    } 
	
	public void uploadFile() throws Exception{
		try {
			//实现上传   
	        String filePath = getRequest().getSession().getServletContext().getRealPath("/upload");
//	        UploadResult uploadResult = OaSysServiceFactory.oaSysAttachmentService.uploadFile(file, this.fileFileName, filePath);
	        
//	        detailResultWriteOut(uploadResult);
	        
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
	}

}
