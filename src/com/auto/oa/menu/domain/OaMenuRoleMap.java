package com.auto.oa.menu.domain;

import com.system.common.AbstractDomain;

/**
 * : t_auto_oa_menu_role_map
 * 
 * 
 * @author WangYi
 */
public class OaMenuRoleMap  extends AbstractDomain{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	//角色菜单关系表主键 : APRMM_GUID 	
	private String aprmmGuid; 
	//系统角色信息表主键 : APRO_GUID 	
	private String aproGuid; 
	//菜单配置表主键 : APME_GUID 	
	private String apmeGuid; 
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

	//菜单信息对象
	private OaMenuInfo oaMenuInfo;
	
	//角色信息对象
	private OaMenuRole oaMenuRole;

	public OaMenuInfo getOaMenuInfo() {
		return oaMenuInfo;
	}

	public void setOaMenuInfo(OaMenuInfo oaMenuInfo) {
		this.oaMenuInfo = oaMenuInfo;
	}

	public OaMenuRole getOaMenuRole() {
		return oaMenuRole;
	}

	public void setOaMenuRole(OaMenuRole oaMenuRole) {
		this.oaMenuRole = oaMenuRole;
	}

	/**
	 * 角色菜单关系表主键 : APRMM_GUID
	 * 
	 * @return 
	 */
	public String getAprmmGuid () {
		return aprmmGuid;
	}
	
	/**
	 * 角色菜单关系表主键 : APRMM_GUID
	 * 
	 * @return 
	 */
	public void setAprmmGuid (String aprmmGuid) {
		this.aprmmGuid = aprmmGuid;
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
	 * 菜单配置表主键 : APME_GUID
	 * 
	 * @return 
	 */
	public String getApmeGuid () {
		return apmeGuid;
	}
	
	/**
	 * 菜单配置表主键 : APME_GUID
	 * 
	 * @return 
	 */
	public void setApmeGuid (String apmeGuid) {
		this.apmeGuid = apmeGuid;
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


    public OaMenuRoleMap (){
        
    }
    
    
    public String ggetRecordGuid() {
				return this.aprmmGuid;
    }

    public void ssetRecordGuid(String recordGuid) {
				this.aprmmGuid = recordGuid;
    }
}
