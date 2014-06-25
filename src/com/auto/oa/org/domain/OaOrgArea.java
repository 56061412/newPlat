package com.auto.oa.org.domain;

import com.system.common.AbstractDomain;

/**
 * : t_auto_oa_org_area
 * 
 * 
 * @author Gen
 */
public class OaOrgArea extends AbstractDomain{

	private static final long serialVersionUID = 1L;

	//区域信息表主键 : AUAR_GUID 	
	private String auarGuid; 
	//区域信息表父主键 : AUAR_PARENT_GUID 	
	private String auarParentGuid; 
	//类型代码（大区/省/直辖市/城市） : AUAR_TYPE_CODE 	
	private String auarTypeCode; 
	//类型名称（大区/省/直辖市/城市） : AUAR_TYPE_NAME 	
	private String auarTypeName; 
	//区域名称 : AUAR_NAME 	
	private String auarName; 
	//说明 : AUAR_DESC 	
	private String auarDesc; 
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
	//设置排序字段
	private String displayOrder;
	
	public String getDisplayOrder() {
		return displayOrder;
	}

	public void setDisplayOrder(String displayOrder) {
		this.displayOrder = displayOrder;
	}
	
	
	public boolean isIsLeaf() {
		return isIsLeaf;
	}

	public void setIsLeaf(boolean isIsLeaf) {
		this.isIsLeaf = isIsLeaf;
	}

	public boolean isExpanded() {
		return isExpanded;
	}

	public void setExpanded(boolean isExpanded) {
		this.isExpanded = isExpanded;
	}

	/**
	 * 区域信息表主键 : AUAR_GUID
	 * 
	 * @return 
	 */
	public String getAuarGuid () {
		return auarGuid;
	}
	
	/**
	 * 区域信息表主键 : AUAR_GUID
	 * 
	 * @return 
	 */
	public void setAuarGuid (String auarGuid) {
		this.auarGuid = auarGuid;
	}
	/**
	 * 区域信息表父主键 : AUAR_PARENT_GUID
	 * 
	 * @return 
	 */
	public String getAuarParentGuid () {
		return auarParentGuid;
	}
	
	/**
	 * 区域信息表父主键 : AUAR_PARENT_GUID
	 * 
	 * @return 
	 */
	public void setAuarParentGuid (String auarParentGuid) {
		this.auarParentGuid = auarParentGuid;
	}
	/**
	 * 类型代码（大区/省/直辖市/城市） : AUAR_TYPE_CODE
	 * 
	 * @return 
	 */
	public String getAuarTypeCode () {
		return auarTypeCode;
	}
	
	/**
	 * 类型代码（大区/省/直辖市/城市） : AUAR_TYPE_CODE
	 * 
	 * @return 
	 */
	public void setAuarTypeCode (String auarTypeCode) {
		this.auarTypeCode = auarTypeCode;
	}
	/**
	 * 类型名称（大区/省/直辖市/城市） : AUAR_TYPE_NAME
	 * 
	 * @return 
	 */
	public String getAuarTypeName () {
		return auarTypeName;
	}
	
	/**
	 * 类型名称（大区/省/直辖市/城市） : AUAR_TYPE_NAME
	 * 
	 * @return 
	 */
	public void setAuarTypeName (String auarTypeName) {
		this.auarTypeName = auarTypeName;
	}
	/**
	 * 区域名称 : AUAR_NAME
	 * 
	 * @return 
	 */
	public String getAuarName () {
		return auarName;
	}
	
	/**
	 * 区域名称 : AUAR_NAME
	 * 
	 * @return 
	 */
	public void setAuarName (String auarName) {
		this.auarName = auarName;
	}
	/**
	 * 说明 : AUAR_DESC
	 * 
	 * @return 
	 */
	public String getAuarDesc () {
		return auarDesc;
	}
	
	/**
	 * 说明 : AUAR_DESC
	 * 
	 * @return 
	 */
	public void setAuarDesc (String auarDesc) {
		this.auarDesc = auarDesc;
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


    public OaOrgArea (){
        
    }
    
    
    public String ggetRecordGuid() {
				return this.auarGuid;
    }

    public void ssetRecordGuid(String recordGuid) {
				this.auarGuid = recordGuid;
    }
}
