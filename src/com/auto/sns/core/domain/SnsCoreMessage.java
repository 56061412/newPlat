package com.auto.sns.core.domain;

import com.system.common.AbstractDomain;

/**
 * : t_auto_sns_core_message
 * 
 * 
 * @author Gen
 */
public class SnsCoreMessage  extends AbstractDomain{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	//私信主键 : SCME_GUID 	
	private String scmeGuid; 
	//私信父主键 : SCME_PARENT_GUID 	
	private String scmeParentGuid; 
	//私信标题 : SCME_TITLE 	
	private String scmeTitle; 
	//私信内容 : SCME_CONTENT 	
	private String scmeContent; 
	//发送人 : SCME_PERSON 	
	private String scmePerson; 
	//接收人：SCME_REC_PERSON
	private String scmeRecPerson;
	//发送时间 : SCME_DATE 	
	private java.util.Date scmeDate; 
	//创建人 : CREATE_USER 	
	private String createUser; 
	//修改人 : MODIFY_USER 	
	private String modifyUser; 
	//创建时间 : CREATE_TIME 	
	private java.util.Date createTime; 
	//修改时间 : UPDATE_TIME 	
	private java.util.Date updateTime; 

	public String getScmeRecPerson() {
		return scmeRecPerson;
	}

	public void setScmeRecPerson(String scmeRecPerson) {
		this.scmeRecPerson = scmeRecPerson;
	}

	/**
	 * 私信主键 : SCME_GUID
	 * 
	 * @return 
	 */
	public String getScmeGuid () {
		return scmeGuid;
	}
	
	/**
	 * 私信主键 : SCME_GUID
	 * 
	 * @return 
	 */
	public void setScmeGuid (String scmeGuid) {
		this.scmeGuid = scmeGuid;
	}
	/**
	 * 私信父主键 : SCME_PARENT_GUID
	 * 
	 * @return 
	 */
	public String getScmeParentGuid () {
		return scmeParentGuid;
	}
	
	/**
	 * 私信父主键 : SCME_PARENT_GUID
	 * 
	 * @return 
	 */
	public void setScmeParentGuid (String scmeParentGuid) {
		this.scmeParentGuid = scmeParentGuid;
	}
	/**
	 * 私信标题 : SCME_TITLE
	 * 
	 * @return 
	 */
	public String getScmeTitle () {
		return scmeTitle;
	}
	
	/**
	 * 私信标题 : SCME_TITLE
	 * 
	 * @return 
	 */
	public void setScmeTitle (String scmeTitle) {
		this.scmeTitle = scmeTitle;
	}
	/**
	 * 私信内容 : SCME_CONTENT
	 * 
	 * @return 
	 */
	public String getScmeContent () {
		return scmeContent;
	}
	
	/**
	 * 私信内容 : SCME_CONTENT
	 * 
	 * @return 
	 */
	public void setScmeContent (String scmeContent) {
		this.scmeContent = scmeContent;
	}
	/**
	 * 发送人 : SCME_PERSON
	 * 
	 * @return 
	 */
	public String getScmePerson () {
		return scmePerson;
	}
	
	/**
	 * 发送人 : SCME_PERSON
	 * 
	 * @return 
	 */
	public void setScmePerson (String scmePerson) {
		this.scmePerson = scmePerson;
	}
	/**
	 * 发送时间 : SCME_DATE
	 * 
	 * @return 
	 */
	public java.util.Date getScmeDate () {
		return scmeDate;
	}
	
	/**
	 * 发送时间 : SCME_DATE
	 * 
	 * @return 
	 */
	public void setScmeDate (java.util.Date scmeDate) {
		this.scmeDate = scmeDate;
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


    public SnsCoreMessage (){
        
    }
    
    
    public String ggetRecordGuid() {
				return this.scmeGuid;
    }

    public void ssetRecordGuid(String recordGuid) {
				this.scmeGuid = recordGuid;
    }
}
