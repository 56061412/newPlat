package com.auto.oa.user.domain;

import com.system.common.AbstractDomain;

/**
 * : t_auto_oa_user_post
 * 
 * 岗位信息维护表（各组织维护自己的岗位信息）
 * @author WangYi
 */
public class OaUserPost  extends AbstractDomain{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	//岗位信息维护表主键 : AUPO_GUID 	
	private String aupoGuid; 
	//岗位代码 : AUPO_POST_CODE 	
	private String aupoPostCode; 
	//岗位名称 : AUPO_POST_NAME 	
	private String aupoPostName; 
	//所属组织代码 : AUPO_ORG_CODE 	
	private String aupoOrgCode; 
	//所属组织名称 : AUPO_ORG_NAME 	
	private String aupoOrgName; 
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
	
	/**ADD Column**/
	//设置排序字段
	private String displayOrder;
	
	public String getDisplayOrder() {
		return displayOrder;
	}

	public void setDisplayOrder(String displayOrder) {
		this.displayOrder = displayOrder;
	}

	/**
	 * 岗位信息维护表主键 : AUPO_GUID
	 * 
	 * @return 
	 */
	public String getAupoGuid () {
		return aupoGuid;
	}
	
	/**
	 * 岗位信息维护表主键 : AUPO_GUID
	 * 
	 * @return 
	 */
	public void setAupoGuid (String aupoGuid) {
		this.aupoGuid = aupoGuid;
	}
	/**
	 * 岗位代码 : AUPO_POST_CODE
	 * 
	 * @return 
	 */
	public String getAupoPostCode () {
		return aupoPostCode;
	}
	
	/**
	 * 岗位代码 : AUPO_POST_CODE
	 * 
	 * @return 
	 */
	public void setAupoPostCode (String aupoPostCode) {
		this.aupoPostCode = aupoPostCode;
	}
	/**
	 * 岗位名称 : AUPO_POST_NAME
	 * 
	 * @return 
	 */
	public String getAupoPostName () {
		return aupoPostName;
	}
	
	/**
	 * 岗位名称 : AUPO_POST_NAME
	 * 
	 * @return 
	 */
	public void setAupoPostName (String aupoPostName) {
		this.aupoPostName = aupoPostName;
	}
	/**
	 * 所属组织代码 : AUPO_ORG_CODE
	 * 
	 * @return 
	 */
	public String getAupoOrgCode () {
		return aupoOrgCode;
	}
	
	/**
	 * 所属组织代码 : AUPO_ORG_CODE
	 * 
	 * @return 
	 */
	public void setAupoOrgCode (String aupoOrgCode) {
		this.aupoOrgCode = aupoOrgCode;
	}
	/**
	 * 所属组织名称 : AUPO_ORG_NAME
	 * 
	 * @return 
	 */
	public String getAupoOrgName () {
		return aupoOrgName;
	}
	
	/**
	 * 所属组织名称 : AUPO_ORG_NAME
	 * 
	 * @return 
	 */
	public void setAupoOrgName (String aupoOrgName) {
		this.aupoOrgName = aupoOrgName;
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


    public OaUserPost (){
        
    }
    
    
    public String ggetRecordGuid() {
				return this.aupoGuid;
    }

    public void ssetRecordGuid(String recordGuid) {
				this.aupoGuid = recordGuid;
    }
}
