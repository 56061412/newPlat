package com.auto.oa.sys.domain;

import com.system.common.AbstractDomain;

/**
 * : t_auto_oa_sys_user_log
 * 
 * 
 * @author Gen
 */
public class OaSysUserLog  extends AbstractDomain{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	//用户访问系统日志表主键 : OSUL_GUID 	
	private String osulGuid; 
	//用户工号 : OSUL_USER_LABEL 	
	private String osulUserLabel; 
	//用户姓名 : OSUL_USER_NAME 	
	private String osulUserName; 
	//组织代码 : OSUL_ORG_CODE 	
	private String osulOrgCode; 
	//组织名称 : OSUL_ORG_NAME 	
	private String osulOrgName; 
	//岗位代码 : OSUL_POST_CODE 	
	private String osulPostCode; 
	//岗位名称 : OSUL_POST_NAME 	
	private String osulPostName; 
	//登录次数 : OSUL_LOGIN_NUMBER 	
	private String osulLoginNumber; 
	//最后一次登录时间 : OSUL_LOGIN_LAST_TIME 	
	private java.util.Date osulLoginLastTime; 
	//创建人 : CREATE_USER 	
	private String createUser; 
	//修改人 : UPDATE_USER 	
	private String updateUser; 
	//创建时间 : CREATE_TIME 	
	private java.util.Date createTime; 
	//修改时间 : UPDATE_TIME 	
	private java.util.Date updateTime; 

	/**
	 * 用户访问系统日志表主键 : OSUL_GUID
	 * 
	 * @return 
	 */
	public String getOsulGuid () {
		return osulGuid;
	}
	
	/**
	 * 用户访问系统日志表主键 : OSUL_GUID
	 * 
	 * @return 
	 */
	public void setOsulGuid (String osulGuid) {
		this.osulGuid = osulGuid;
	}
	/**
	 * 用户工号 : OSUL_USER_LABEL
	 * 
	 * @return 
	 */
	public String getOsulUserLabel () {
		return osulUserLabel;
	}
	
	/**
	 * 用户工号 : OSUL_USER_LABEL
	 * 
	 * @return 
	 */
	public void setOsulUserLabel (String osulUserLabel) {
		this.osulUserLabel = osulUserLabel;
	}
	/**
	 * 用户姓名 : OSUL_USER_NAME
	 * 
	 * @return 
	 */
	public String getOsulUserName () {
		return osulUserName;
	}
	
	/**
	 * 用户姓名 : OSUL_USER_NAME
	 * 
	 * @return 
	 */
	public void setOsulUserName (String osulUserName) {
		this.osulUserName = osulUserName;
	}
	/**
	 * 组织代码 : OSUL_ORG_CODE
	 * 
	 * @return 
	 */
	public String getOsulOrgCode () {
		return osulOrgCode;
	}
	
	/**
	 * 组织代码 : OSUL_ORG_CODE
	 * 
	 * @return 
	 */
	public void setOsulOrgCode (String osulOrgCode) {
		this.osulOrgCode = osulOrgCode;
	}
	/**
	 * 组织名称 : OSUL_ORG_NAME
	 * 
	 * @return 
	 */
	public String getOsulOrgName () {
		return osulOrgName;
	}
	
	/**
	 * 组织名称 : OSUL_ORG_NAME
	 * 
	 * @return 
	 */
	public void setOsulOrgName (String osulOrgName) {
		this.osulOrgName = osulOrgName;
	}
	/**
	 * 岗位代码 : OSUL_POST_CODE
	 * 
	 * @return 
	 */
	public String getOsulPostCode () {
		return osulPostCode;
	}
	
	/**
	 * 岗位代码 : OSUL_POST_CODE
	 * 
	 * @return 
	 */
	public void setOsulPostCode (String osulPostCode) {
		this.osulPostCode = osulPostCode;
	}
	/**
	 * 岗位名称 : OSUL_POST_NAME
	 * 
	 * @return 
	 */
	public String getOsulPostName () {
		return osulPostName;
	}
	
	/**
	 * 岗位名称 : OSUL_POST_NAME
	 * 
	 * @return 
	 */
	public void setOsulPostName (String osulPostName) {
		this.osulPostName = osulPostName;
	}
	/**
	 * 登录次数 : OSUL_LOGIN_NUMBER
	 * 
	 * @return 
	 */
	public String getOsulLoginNumber () {
		return osulLoginNumber;
	}
	
	/**
	 * 登录次数 : OSUL_LOGIN_NUMBER
	 * 
	 * @return 
	 */
	public void setOsulLoginNumber (String osulLoginNumber) {
		this.osulLoginNumber = osulLoginNumber;
	}
	/**
	 * 最后一次登录时间 : OSUL_LOGIN_LAST_TIME
	 * 
	 * @return 
	 */
	public java.util.Date getOsulLoginLastTime () {
		return osulLoginLastTime;
	}
	
	/**
	 * 最后一次登录时间 : OSUL_LOGIN_LAST_TIME
	 * 
	 * @return 
	 */
	public void setOsulLoginLastTime (java.util.Date osulLoginLastTime) {
		this.osulLoginLastTime = osulLoginLastTime;
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


    public OaSysUserLog (){
        
    }
    
    
    public String ggetRecordGuid() {
				return this.osulGuid;
    }

    public void ssetRecordGuid(String recordGuid) {
				this.osulGuid = recordGuid;
    }
}
