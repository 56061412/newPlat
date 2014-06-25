package com.auto.oa.sys.domain;

import com.system.common.AbstractDomain;

/**
 * : t_auto_oa_sys_operate_log
 * 
 * 
 * @author Gen
 */
public class OaSysOperateLog  extends AbstractDomain{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	//功能操作日志表主键 : OSOL_GUID 	
	private String osolGuid; 
	//功能代码 : OSOL_FUNC_CODE 	
	private String osolFuncCode; 
	//功能名称 : OSOL_FUNC_NAME 	
	private String osolFuncName; 
	//用户工号 : OSOL_USER_LABEL 	
	private String osolUserLabel; 
	//用户姓名 : OSOL_USER_NAME 	
	private String osolUserName; 
	//组织代码 : OSOL_ORG_CODE 	
	private String osolOrgCode; 
	//组织名称 : OSOL_ORG_NAME 	
	private String osolOrgName; 
	//岗位代码 : OSOL_POST_CODE 	
	private String osolPostCode; 
	//岗位名称 : OSOL_POST_NAME 	
	private String osolPostName; 
	//创建人 : CREATE_USER 	
	private String createUser; 
	//修改人 : UPDATE_USER 	
	private String updateUser; 
	//创建时间 : CREATE_TIME 	
	private java.util.Date createTime; 
	//修改时间 : UPDATE_TIME 	
	private java.util.Date updateTime; 

	/**
	 * 功能操作日志表主键 : OSOL_GUID
	 * 
	 * @return 
	 */
	public String getOsolGuid () {
		return osolGuid;
	}
	
	/**
	 * 功能操作日志表主键 : OSOL_GUID
	 * 
	 * @return 
	 */
	public void setOsolGuid (String osolGuid) {
		this.osolGuid = osolGuid;
	}
	/**
	 * 功能代码 : OSOL_FUNC_CODE
	 * 
	 * @return 
	 */
	public String getOsolFuncCode () {
		return osolFuncCode;
	}
	
	/**
	 * 功能代码 : OSOL_FUNC_CODE
	 * 
	 * @return 
	 */
	public void setOsolFuncCode (String osolFuncCode) {
		this.osolFuncCode = osolFuncCode;
	}
	/**
	 * 功能名称 : OSOL_FUNC_NAME
	 * 
	 * @return 
	 */
	public String getOsolFuncName () {
		return osolFuncName;
	}
	
	/**
	 * 功能名称 : OSOL_FUNC_NAME
	 * 
	 * @return 
	 */
	public void setOsolFuncName (String osolFuncName) {
		this.osolFuncName = osolFuncName;
	}
	/**
	 * 用户工号 : OSOL_USER_LABEL
	 * 
	 * @return 
	 */
	public String getOsolUserLabel () {
		return osolUserLabel;
	}
	
	/**
	 * 用户工号 : OSOL_USER_LABEL
	 * 
	 * @return 
	 */
	public void setOsolUserLabel (String osolUserLabel) {
		this.osolUserLabel = osolUserLabel;
	}
	/**
	 * 用户姓名 : OSOL_USER_NAME
	 * 
	 * @return 
	 */
	public String getOsolUserName () {
		return osolUserName;
	}
	
	/**
	 * 用户姓名 : OSOL_USER_NAME
	 * 
	 * @return 
	 */
	public void setOsolUserName (String osolUserName) {
		this.osolUserName = osolUserName;
	}
	/**
	 * 组织代码 : OSOL_ORG_CODE
	 * 
	 * @return 
	 */
	public String getOsolOrgCode () {
		return osolOrgCode;
	}
	
	/**
	 * 组织代码 : OSOL_ORG_CODE
	 * 
	 * @return 
	 */
	public void setOsolOrgCode (String osolOrgCode) {
		this.osolOrgCode = osolOrgCode;
	}
	/**
	 * 组织名称 : OSOL_ORG_NAME
	 * 
	 * @return 
	 */
	public String getOsolOrgName () {
		return osolOrgName;
	}
	
	/**
	 * 组织名称 : OSOL_ORG_NAME
	 * 
	 * @return 
	 */
	public void setOsolOrgName (String osolOrgName) {
		this.osolOrgName = osolOrgName;
	}
	/**
	 * 岗位代码 : OSOL_POST_CODE
	 * 
	 * @return 
	 */
	public String getOsolPostCode () {
		return osolPostCode;
	}
	
	/**
	 * 岗位代码 : OSOL_POST_CODE
	 * 
	 * @return 
	 */
	public void setOsolPostCode (String osolPostCode) {
		this.osolPostCode = osolPostCode;
	}
	/**
	 * 岗位名称 : OSOL_POST_NAME
	 * 
	 * @return 
	 */
	public String getOsolPostName () {
		return osolPostName;
	}
	
	/**
	 * 岗位名称 : OSOL_POST_NAME
	 * 
	 * @return 
	 */
	public void setOsolPostName (String osolPostName) {
		this.osolPostName = osolPostName;
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


    public OaSysOperateLog (){
        
    }
    
    
    public String ggetRecordGuid() {
				return this.osolGuid;
    }

    public void ssetRecordGuid(String recordGuid) {
				this.osolGuid = recordGuid;
    }
}
