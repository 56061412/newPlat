package com.auto.oa.menu.domain;

import com.system.common.AbstractDomain;

/**
 * : t_auto_oa_menu_role_user_map
 * 
 * 
 * @author WangYi
 */
public class OaMenuRoleUserMap  extends AbstractDomain{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	//用户角色关系表主键 : APRUM_GUID 	
	private String aprumGuid; 
	//用户信息表主键 : AUSER_GUID 	
	private String auserGuid; 
	//系统角色信息表主键 : APRO_GUID 	
	private String aproGuid; 
	//组织结构表主键 : AUORG_GUID 	
	private String auorgGuid; 
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

	private OaMenuRole oaMenuRole;
	//TODO：用户信息
//	private oauserinfo;
	//TODO：组织信息
//	private oaorginfo

	/**
	 * 用户角色关系表主键 : APRUM_GUID
	 * 
	 * @return 
	 */
	public String getAprumGuid () {
		return aprumGuid;
	}
	
	public OaMenuRole getOaMenuRole() {
		return oaMenuRole;
	}

	public void setOaMenuRole(OaMenuRole oaMenuRole) {
		this.oaMenuRole = oaMenuRole;
	}

	/**
	 * 用户角色关系表主键 : APRUM_GUID
	 * 
	 * @return 
	 */
	public void setAprumGuid (String aprumGuid) {
		this.aprumGuid = aprumGuid;
	}
	/**
	 * 用户信息表主键 : AUSER_GUID
	 * 
	 * @return 
	 */
	public String getAuserGuid () {
		return auserGuid;
	}
	
	/**
	 * 用户信息表主键 : AUSER_GUID
	 * 
	 * @return 
	 */
	public void setAuserGuid (String auserGuid) {
		this.auserGuid = auserGuid;
	}
	/**
	 * 系统角色信息表主键 : APRO_GUID
	 * 
	 * @return 
	 */
	public String getAproGuid () {
		return aproGuid;
	}
	
	/**
	 * 系统角色信息表主键 : APRO_GUID
	 * 
	 * @return 
	 */
	public void setAproGuid (String aproGuid) {
		this.aproGuid = aproGuid;
	}
	/**
	 * 组织结构表主键 : AUORG_GUID
	 * 
	 * @return 
	 */
	public String getAuorgGuid () {
		return auorgGuid;
	}
	
	/**
	 * 组织结构表主键 : AUORG_GUID
	 * 
	 * @return 
	 */
	public void setAuorgGuid (String auorgGuid) {
		this.auorgGuid = auorgGuid;
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


    public OaMenuRoleUserMap (){
        
    }
    
    
    public String ggetRecordGuid() {
				return this.aprumGuid;
    }

    public void ssetRecordGuid(String recordGuid) {
				this.aprumGuid = recordGuid;
    }
}
