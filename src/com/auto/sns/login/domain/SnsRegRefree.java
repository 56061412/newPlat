package com.auto.sns.login.domain;

import com.system.common.AbstractDomain;

/**
 * : t_auto_sns_reg_refree
 * 
 * 
 * @author Gen
 */
public class SnsRegRefree  extends AbstractDomain{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	//推荐人信息表主键 : SRRE_GUID 	
	private String srreGuid; 
	//推荐人代码 : SRRE_USER_CODE 	
	private String srreUserCode; 
	//推荐人姓名 : SRRE_USER_NAME 	
	private String srreUserName; 
	//注册人代码 : SRRE_REG_USER_CODE 	注册信息无工号 暂时已手机代替
	private String srreRegUserCode; 
	//注册人姓名 : SRRE_REG_USER_NAME 	
	private String srreRegUserName; 
	//修改时间 : UPDATE_TIME 	
	private java.util.Date updateTime; 

	/**
	 * 推荐人信息表主键 : SRRE_GUID
	 * 
	 * @return 
	 */
	public String getSrreGuid () {
		return srreGuid;
	}
	
	/**
	 * 推荐人信息表主键 : SRRE_GUID
	 * 
	 * @return 
	 */
	public void setSrreGuid (String srreGuid) {
		this.srreGuid = srreGuid;
	}
	/**
	 * 推荐人代码 : SRRE_USER_CODE
	 * 
	 * @return 
	 */
	public String getSrreUserCode () {
		return srreUserCode;
	}
	
	/**
	 * 推荐人代码 : SRRE_USER_CODE
	 * 
	 * @return 
	 */
	public void setSrreUserCode (String srreUserCode) {
		this.srreUserCode = srreUserCode;
	}
	/**
	 * 推荐人姓名 : SRRE_USER_NAME
	 * 
	 * @return 
	 */
	public String getSrreUserName () {
		return srreUserName;
	}
	
	/**
	 * 推荐人姓名 : SRRE_USER_NAME
	 * 
	 * @return 
	 */
	public void setSrreUserName (String srreUserName) {
		this.srreUserName = srreUserName;
	}
	/**
	 * 注册人代码 : SRRE_REG_USER_CODE
	 * 
	 * @return 
	 */
	public String getSrreRegUserCode () {
		return srreRegUserCode;
	}
	
	/**
	 * 注册人代码 : SRRE_REG_USER_CODE
	 * 
	 * @return 
	 */
	public void setSrreRegUserCode (String srreRegUserCode) {
		this.srreRegUserCode = srreRegUserCode;
	}
	/**
	 * 注册人姓名 : SRRE_REG_USER_NAME
	 * 
	 * @return 
	 */
	public String getSrreRegUserName () {
		return srreRegUserName;
	}
	
	/**
	 * 注册人姓名 : SRRE_REG_USER_NAME
	 * 
	 * @return 
	 */
	public void setSrreRegUserName (String srreRegUserName) {
		this.srreRegUserName = srreRegUserName;
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


    public SnsRegRefree (){
        
    }
    
    
    public String ggetRecordGuid() {
				return this.srreGuid;
    }

    public void ssetRecordGuid(String recordGuid) {
				this.srreGuid = recordGuid;
    }
}
