package com.auto.sns.knowledge.domain;

import com.system.common.AbstractDomain;

/**
 * : t_auto_sns_knowledge_type
 * 
 * 
 * @author Gen
 */
public class KnowledgeType  extends AbstractDomain{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	//创建人 : CREATE_USER 	
	private String createUser; 
	//修改人 : MODIFY_USER 	
	private String modifyUser; 
	//删除人 : DELETE_USER 	
	private String deleteUser; 
	//创建时间 : CREATE_TIME 	
	private java.util.Date createTime; 
	//修改时间 : UPDATE_TIME 	
	private java.util.Date updateTime; 
	//删除时间 : DELETE_TIME 	
	private java.util.Date deleteTime; 
	//类型GUID : TYPE_GUID 	
	private String typeGuid; 
	//类型名称 : TYPE_NAME 	
	private String typeName; 
	//排序 : TYPE_ORDER 	
	private String typeOrder; 
	//扩展1 : EXTRA1 	
	private String extra1; 
	//扩展2 : EXTRA2 	
	private String extra2; 
	//扩展3 : EXTRA3 	
	private String extra3; 
	//扩展4 : EXTRA4 	
	private String extra4; 
	//扩展5 : EXTRA5 	
	private String extra5; 

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
	 * 修改人 : MODIFY_USER
	 * 
	 * @return 
	 */
	public String getModifyUser () {
		return modifyUser;
	}
	
	/**
	 * 修改人 : MODIFY_USER
	 * 
	 * @return 
	 */
	public void setModifyUser (String modifyUser) {
		this.modifyUser = modifyUser;
	}
	/**
	 * 删除人 : DELETE_USER
	 * 
	 * @return 
	 */
	public String getDeleteUser () {
		return deleteUser;
	}
	
	/**
	 * 删除人 : DELETE_USER
	 * 
	 * @return 
	 */
	public void setDeleteUser (String deleteUser) {
		this.deleteUser = deleteUser;
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
	/**
	 * 删除时间 : DELETE_TIME
	 * 
	 * @return 
	 */
	public java.util.Date getDeleteTime () {
		return deleteTime;
	}
	
	/**
	 * 删除时间 : DELETE_TIME
	 * 
	 * @return 
	 */
	public void setDeleteTime (java.util.Date deleteTime) {
		this.deleteTime = deleteTime;
	}
	/**
	 * 类型GUID : TYPE_GUID
	 * 
	 * @return 
	 */
	public String getTypeGuid () {
		return typeGuid;
	}
	
	/**
	 * 类型GUID : TYPE_GUID
	 * 
	 * @return 
	 */
	public void setTypeGuid (String typeGuid) {
		this.typeGuid = typeGuid;
	}
	/**
	 * 类型名称 : TYPE_NAME
	 * 
	 * @return 
	 */
	public String getTypeName () {
		return typeName;
	}
	
	/**
	 * 类型名称 : TYPE_NAME
	 * 
	 * @return 
	 */
	public void setTypeName (String typeName) {
		this.typeName = typeName;
	}
	/**
	 * 排序 : TYPE_ORDER
	 * 
	 * @return 
	 */
	public String getTypeOrder () {
		return typeOrder;
	}
	
	/**
	 * 排序 : TYPE_ORDER
	 * 
	 * @return 
	 */
	public void setTypeOrder (String typeOrder) {
		this.typeOrder = typeOrder;
	}
	/**
	 * 扩展1 : EXTRA1
	 * 
	 * @return 
	 */
	public String getExtra1 () {
		return extra1;
	}
	
	/**
	 * 扩展1 : EXTRA1
	 * 
	 * @return 
	 */
	public void setExtra1 (String extra1) {
		this.extra1 = extra1;
	}
	/**
	 * 扩展2 : EXTRA2
	 * 
	 * @return 
	 */
	public String getExtra2 () {
		return extra2;
	}
	
	/**
	 * 扩展2 : EXTRA2
	 * 
	 * @return 
	 */
	public void setExtra2 (String extra2) {
		this.extra2 = extra2;
	}
	/**
	 * 扩展3 : EXTRA3
	 * 
	 * @return 
	 */
	public String getExtra3 () {
		return extra3;
	}
	
	/**
	 * 扩展3 : EXTRA3
	 * 
	 * @return 
	 */
	public void setExtra3 (String extra3) {
		this.extra3 = extra3;
	}
	/**
	 * 扩展4 : EXTRA4
	 * 
	 * @return 
	 */
	public String getExtra4 () {
		return extra4;
	}
	
	/**
	 * 扩展4 : EXTRA4
	 * 
	 * @return 
	 */
	public void setExtra4 (String extra4) {
		this.extra4 = extra4;
	}
	/**
	 * 扩展5 : EXTRA5
	 * 
	 * @return 
	 */
	public String getExtra5 () {
		return extra5;
	}
	
	/**
	 * 扩展5 : EXTRA5
	 * 
	 * @return 
	 */
	public void setExtra5 (String extra5) {
		this.extra5 = extra5;
	}


    public KnowledgeType (){
        
    }
    
    
    public String ggetRecordGuid() {
				return this.typeGuid;
    }

    public void ssetRecordGuid(String recordGuid) {
				this.typeGuid = recordGuid;
    }
}
