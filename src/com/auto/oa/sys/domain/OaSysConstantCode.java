package com.auto.oa.sys.domain;

import com.system.common.AbstractDomain;

/**
 * : t_auto_oa_sys_constant_code
 * 
 * 
 * @author Gen
 */
public class OaSysConstantCode  extends AbstractDomain{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	//常量代码维护表主键 : OSCC_GUID 	
	private String osccGuid; 
	//常量代码维护表父键 : OSCC_PARENT_GUID 	
	private String osccParentGuid; 
	//常量代码 : OSCC_CODE 	
	private String osccCode; 
	//常量名称 : OSCC_NAME 	
	private String osccName; 
	//常量排序 : OSCC_DISPLAY_ORDER 	
	private String osccDisplayOrder; 
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
	 * 常量代码维护表主键 : OSCC_GUID
	 * 
	 * @return 
	 */
	public String getOsccGuid () {
		return osccGuid;
	}
	
	/**
	 * 常量代码维护表主键 : OSCC_GUID
	 * 
	 * @return 
	 */
	public void setOsccGuid (String osccGuid) {
		this.osccGuid = osccGuid;
	}
	/**
	 * 常量代码维护表父键 : OSCC_PARENT_GUID
	 * 
	 * @return 
	 */
	public String getOsccParentGuid () {
		return osccParentGuid;
	}
	
	/**
	 * 常量代码维护表父键 : OSCC_PARENT_GUID
	 * 
	 * @return 
	 */
	public void setOsccParentGuid (String osccParentGuid) {
		this.osccParentGuid = osccParentGuid;
	}
	/**
	 * 常量代码 : OSCC_CODE
	 * 
	 * @return 
	 */
	public String getOsccCode () {
		return osccCode;
	}
	
	/**
	 * 常量代码 : OSCC_CODE
	 * 
	 * @return 
	 */
	public void setOsccCode (String osccCode) {
		this.osccCode = osccCode;
	}
	/**
	 * 常量名称 : OSCC_NAME
	 * 
	 * @return 
	 */
	public String getOsccName () {
		return osccName;
	}
	
	/**
	 * 常量名称 : OSCC_NAME
	 * 
	 * @return 
	 */
	public void setOsccName (String osccName) {
		this.osccName = osccName;
	}
	/**
	 * 常量排序 : OSCC_DISPLAY_ORDER
	 * 
	 * @return 
	 */
	public String getOsccDisplayOrder () {
		return osccDisplayOrder;
	}
	
	/**
	 * 常量排序 : OSCC_DISPLAY_ORDER
	 * 
	 * @return 
	 */
	public void setOsccDisplayOrder (String osccDisplayOrder) {
		this.osccDisplayOrder = osccDisplayOrder;
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


    public OaSysConstantCode (){
        
    }
    
    
    public String ggetRecordGuid() {
				return this.osccGuid;
    }

    public void ssetRecordGuid(String recordGuid) {
				this.osccGuid = recordGuid;
    }
}
