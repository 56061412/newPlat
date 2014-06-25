package com.auto.oa.sys.domain;

import com.system.common.AbstractDomain;

/**
 * : t_auto_oa_sys_attachment
 * 
 * 
 * @author Gen
 */
public class OaSysAttachment  extends AbstractDomain{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	//附件信息表主键 : FILE_GUID 	
	private String fileGuid; 
	//关联附件的业务表主键 : FILE_BUSI_GUID 	
	private String fileBusiGuid; 
	//附件大小 : FILE_SIZE 	
	private String fileSize; 
	//附件名称 : FILE_NAME 	
	private String fileName; 
	//附件后缀 : FILE_EXT 	
	private String fileExt; 
	//附件保存路径 : FILE_PATH 	
	private String filePath; 
	//是否有效(0.有效 1.无效) : IS_VALIDITY 	
	private String isValidity; 
	//创建人 : CREATE_USER 	
	private String createUser; 
	//修改人 : UPDATE_USER 	
	private String updateUser; 
	//创建时间 : CREATE_TIME 	
	private java.util.Date createTime; 
	//修改时间 : UPDATE_TIME 	
	private java.util.Date updateTime; 
	
	/**ADD Column*/
	//设置排序字段
	private String displayOrder;
	
	public String getDisplayOrder() {
		return displayOrder;
	}

	public void setDisplayOrder(String displayOrder) {
		this.displayOrder = displayOrder;
	}

	/**
	 * 附件信息表主键 : FILE_GUID
	 * 
	 * @return 
	 */
	public String getFileGuid () {
		return fileGuid;
	}
	
	/**
	 * 附件信息表主键 : FILE_GUID
	 * 
	 * @return 
	 */
	public void setFileGuid (String fileGuid) {
		this.fileGuid = fileGuid;
	}
	/**
	 * 关联附件的业务表主键 : FILE_BUSI_GUID
	 * 
	 * @return 
	 */
	public String getFileBusiGuid () {
		return fileBusiGuid;
	}
	
	/**
	 * 关联附件的业务表主键 : FILE_BUSI_GUID
	 * 
	 * @return 
	 */
	public void setFileBusiGuid (String fileBusiGuid) {
		this.fileBusiGuid = fileBusiGuid;
	}
	/**
	 * 附件大小 : FILE_SIZE
	 * 
	 * @return 
	 */
	public String getFileSize () {
		return fileSize;
	}
	
	/**
	 * 附件大小 : FILE_SIZE
	 * 
	 * @return 
	 */
	public void setFileSize (String fileSize) {
		this.fileSize = fileSize;
	}
	/**
	 * 附件名称 : FILE_NAME
	 * 
	 * @return 
	 */
	public String getFileName () {
		return fileName;
	}
	
	/**
	 * 附件名称 : FILE_NAME
	 * 
	 * @return 
	 */
	public void setFileName (String fileName) {
		this.fileName = fileName;
	}
	/**
	 * 附件后缀 : FILE_EXT
	 * 
	 * @return 
	 */
	public String getFileExt () {
		return fileExt;
	}
	
	/**
	 * 附件后缀 : FILE_EXT
	 * 
	 * @return 
	 */
	public void setFileExt (String fileExt) {
		this.fileExt = fileExt;
	}
	/**
	 * 附件保存路径 : FILE_PATH
	 * 
	 * @return 
	 */
	public String getFilePath () {
		return filePath;
	}
	
	/**
	 * 附件保存路径 : FILE_PATH
	 * 
	 * @return 
	 */
	public void setFilePath (String filePath) {
		this.filePath = filePath;
	}
	/**
	 * 是否有效(0.有效 1.无效) : IS_VALIDITY
	 * 
	 * @return 
	 */
	public String getIsValidity () {
		return isValidity;
	}
	
	/**
	 * 是否有效(0.有效 1.无效) : IS_VALIDITY
	 * 
	 * @return 
	 */
	public void setIsValidity (String isValidity) {
		this.isValidity = isValidity;
	}
	/**
	 * 创建人 : CREATE_USER
	 * 
	 * @return 
	 */
	public String getCreateUser () {
		return createUser;
	}
	
	/**
	 * 创建人 : CREATE_USER
	 * 
	 * @return 
	 */
	public void setCreateUser (String createUser) {
		this.createUser = createUser;
	}
	/**
	 * 修改人 : UPDATE_USER
	 * 
	 * @return 
	 */
	public String getUpdateUser () {
		return updateUser;
	}
	
	/**
	 * 修改人 : UPDATE_USER
	 * 
	 * @return 
	 */
	public void setUpdateUser (String updateUser) {
		this.updateUser = updateUser;
	}
	/**
	 * 创建时间 : CREATE_TIME
	 * 
	 * @return 
	 */
	public java.util.Date getCreateTime () {
		return createTime;
	}
	
	/**
	 * 创建时间 : CREATE_TIME
	 * 
	 * @return 
	 */
	public void setCreateTime (java.util.Date createTime) {
		this.createTime = createTime;
	}
	/**
	 * 修改时间 : UPDATE_TIME
	 * 
	 * @return 
	 */
	public java.util.Date getUpdateTime () {
		return updateTime;
	}
	
	/**
	 * 修改时间 : UPDATE_TIME
	 * 
	 * @return 
	 */
	public void setUpdateTime (java.util.Date updateTime) {
		this.updateTime = updateTime;
	}


    public OaSysAttachment (){
        
    }
    
    
    public String ggetRecordGuid() {
				return this.fileGuid;
    }

    public void ssetRecordGuid(String recordGuid) {
				this.fileGuid = recordGuid;
    }
}
