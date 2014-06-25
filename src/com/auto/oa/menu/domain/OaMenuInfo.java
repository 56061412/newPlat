package com.auto.oa.menu.domain;

import java.util.List;

import com.system.common.AbstractDomain;

/**
 * : t_auto_oa_menu_info
 * 
 * 
 * @author WangYi
 */
public class OaMenuInfo  extends AbstractDomain{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	//菜单配置表主键 : APME_GUID 	
	private String apmeGuid; 
	//菜单配置表父主键 : APME_PARENT_GUID 	
	private String apmeParentGuid; 
	//菜单名称 : APME_MENU_NAME 	
	private String apmeMenuName; 
	//菜单说明 : APME_MENU_DESC 	
	private String apmeMenuDesc; 
	//菜单地址 : APME_MENU_URL 	
	private String apmeMenuUrl; 
	//菜单排序 : APME_SORT 	
	private String apmeSort; 
	//菜单树节点深度 : APME_DEPTH 	
	private String apmeDepth; 
	//菜单树结构完整路径 : APME_FULL_PATH 	
	private String apmeFullPath; 
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
	//树结构显示使用 默认为 父节点 是否叶子节点：+和-号
	private boolean isIsLeaf;
	//节点处于收缩状态
	private boolean isExpanded;
	
	private String auserCode;
	
	//父菜单对象
	private OaMenuInfo parentOaMenuInfo;
	
	//子菜单对象集合
	private List<OaMenuInfo> oaMenuInfoChilds;
	
	//菜单角色关系集合
	private List<OaMenuRoleMap> oaMenuRoleMaps;
	
	//设置排序字段
	private String displayOrder;
	
	//菜单角色映射表主键
	private String aprmmGuid;
	//角色表主键
	private String aproGuid;
	//角色代码
	private String aproRoleCode;
	//角色名称
	private String aproRoleName;
	//角色说明
	private String aproRoleDesc;
	
	public String getAprmmGuid() {
		return aprmmGuid;
	}

	public void setAprmmGuid(String aprmmGuid) {
		this.aprmmGuid = aprmmGuid;
	}

	public String getAproGuid() {
		return aproGuid;
	}

	public void setAproGuid(String aproGuid) {
		this.aproGuid = aproGuid;
	}

	public String getAproRoleCode() {
		return aproRoleCode;
	}

	public void setAproRoleCode(String aproRoleCode) {
		this.aproRoleCode = aproRoleCode;
	}

	public String getAproRoleName() {
		return aproRoleName;
	}

	public void setAproRoleName(String aproRoleName) {
		this.aproRoleName = aproRoleName;
	}

	public String getAproRoleDesc() {
		return aproRoleDesc;
	}

	public void setAproRoleDesc(String aproRoleDesc) {
		this.aproRoleDesc = aproRoleDesc;
	}

	public String getDisplayOrder() {
		return displayOrder;
	}

	public void setDisplayOrder(String displayOrder) {
		this.displayOrder = displayOrder;
	}
	
	public OaMenuInfo getParentOaMenuInfo() {
		return parentOaMenuInfo;
	}

	public void setParentOaMenuInfo(OaMenuInfo parentOaMenuInfo) {
		this.parentOaMenuInfo = parentOaMenuInfo;
	}

	public List<OaMenuInfo> getOaMenuInfoChilds() {
		return oaMenuInfoChilds;
	}

	public void setOaMenuInfoChilds(List<OaMenuInfo> oaMenuInfoChilds) {
		this.oaMenuInfoChilds = oaMenuInfoChilds;
	}

	public List<OaMenuRoleMap> getOaMenuRoleMaps() {
		return oaMenuRoleMaps;
	}

	public void setOaMenuRoleMaps(List<OaMenuRoleMap> oaMenuRoleMaps) {
		this.oaMenuRoleMaps = oaMenuRoleMaps;
	}

	public boolean isIsLeaf() {
		return isIsLeaf;
	}

	public void setIsLeaf(boolean isIsLeaf) {
		this.isIsLeaf = isIsLeaf;
	}

	public void setExpanded(boolean isExpanded) {
		this.isExpanded = isExpanded;
	}

	public boolean isExpanded() {
		return isExpanded;
	}

	public String getAuserCode() {
		return auserCode;
	}

	public void setAuserCode(String auserCode) {
		this.auserCode = auserCode;
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
	 * 菜单配置表父主键 : APME_PARENT_GUID
	 * 
	 * @return 
	 */
	public String getApmeParentGuid () {
		return apmeParentGuid;
	}
	
	/**
	 * 菜单配置表父主键 : APME_PARENT_GUID
	 * 
	 * @return 
	 */
	public void setApmeParentGuid (String apmeParentGuid) {
		this.apmeParentGuid = apmeParentGuid;
	}
	/**
	 * 菜单名称 : APME_MENU_NAME
	 * 
	 * @return 
	 */
	public String getApmeMenuName () {
		return apmeMenuName;
	}
	
	/**
	 * 菜单名称 : APME_MENU_NAME
	 * 
	 * @return 
	 */
	public void setApmeMenuName (String apmeMenuName) {
		this.apmeMenuName = apmeMenuName;
	}
	/**
	 * 菜单说明 : APME_MENU_DESC
	 * 
	 * @return 
	 */
	public String getApmeMenuDesc () {
		return apmeMenuDesc;
	}
	
	/**
	 * 菜单说明 : APME_MENU_DESC
	 * 
	 * @return 
	 */
	public void setApmeMenuDesc (String apmeMenuDesc) {
		this.apmeMenuDesc = apmeMenuDesc;
	}
	/**
	 * 菜单地址 : APME_MENU_URL
	 * 
	 * @return 
	 */
	public String getApmeMenuUrl () {
		return apmeMenuUrl;
	}
	
	/**
	 * 菜单地址 : APME_MENU_URL
	 * 
	 * @return 
	 */
	public void setApmeMenuUrl (String apmeMenuUrl) {
		this.apmeMenuUrl = apmeMenuUrl;
	}
	/**
	 * 菜单排序 : APME_SORT
	 * 
	 * @return 
	 */
	public String getApmeSort () {
		return apmeSort;
	}
	
	/**
	 * 菜单排序 : APME_SORT
	 * 
	 * @return 
	 */
	public void setApmeSort (String apmeSort) {
		this.apmeSort = apmeSort;
	}
	/**
	 * 菜单树节点深度 : APME_DEPTH
	 * 
	 * @return 
	 */
	public String getApmeDepth () {
		return apmeDepth;
	}
	
	/**
	 * 菜单树节点深度 : APME_DEPTH
	 * 
	 * @return 
	 */
	public void setApmeDepth (String apmeDepth) {
		this.apmeDepth = apmeDepth;
	}
	/**
	 * 菜单树结构完整路径 : APME_FULL_PATH
	 * 
	 * @return 
	 */
	public String getApmeFullPath () {
		return apmeFullPath;
	}
	
	/**
	 * 菜单树结构完整路径 : APME_FULL_PATH
	 * 
	 * @return 
	 */
	public void setApmeFullPath (String apmeFullPath) {
		this.apmeFullPath = apmeFullPath;
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


    public String getUpdateUser() {
		return updateUser;
	}

	public void setUpdateUser(String updateUser) {
		this.updateUser = updateUser;
	}

	public OaMenuInfo (){
        
    }
    
    
    public String ggetRecordGuid() {
				return this.apmeGuid;
    }

    public void ssetRecordGuid(String recordGuid) {
				this.apmeGuid = recordGuid;
    }
}
