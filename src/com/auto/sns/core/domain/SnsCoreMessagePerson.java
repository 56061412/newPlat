package com.auto.sns.core.domain;

import com.system.common.AbstractDomain;

/**
 * : t_auto_sns_core_message_person
 * 
 * 
 * @author Gen
 */
public class SnsCoreMessagePerson  extends AbstractDomain{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	//私信人员主键 : SCMP_GUID 	
	private String scmpGuid; 
	//私信主键 : SCME_GUID 	
	private String scmeGuid; 
	//收信人 : SCMP_REC_PERSON 	
	private String scmpRecPerson; 
	//已阅标志 : SCMP_READ_FLAG 	
	private String scmpReadFlag; 
	//已阅时间 : SCMP_READ_DATE 	
	private java.util.Date scmpReadDate; 
	//创建人 : CREATE_USER 	
	private String createUser; 
	//修改人 : MODIFY_USER 	
	private String modifyUser; 
	//创建时间 : CREATE_TIME 	
	private java.util.Date createTime; 
	//修改时间 : UPDATE_TIME 	
	private java.util.Date updateTime; 

	/**
	 * 私信人员主键 : SCMP_GUID
	 * 
	 * @return 
	 */
	public String getScmpGuid () {
		return scmpGuid;
	}
	
	/**
	 * 私信人员主键 : SCMP_GUID
	 * 
	 * @return 
	 */
	public void setScmpGuid (String scmpGuid) {
		this.scmpGuid = scmpGuid;
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
	 * 收信人 : SCMP_REC_PERSON
	 * 
	 * @return 
	 */
	public String getScmpRecPerson () {
		return scmpRecPerson;
	}
	
	/**
	 * 收信人 : SCMP_REC_PERSON
	 * 
	 * @return 
	 */
	public void setScmpRecPerson (String scmpRecPerson) {
		this.scmpRecPerson = scmpRecPerson;
	}
	/**
	 * 已阅标志 : SCMP_READ_FLAG
	 * 
	 * @return 
	 */
	public String getScmpReadFlag () {
		return scmpReadFlag;
	}
	
	/**
	 * 已阅标志 : SCMP_READ_FLAG
	 * 
	 * @return 
	 */
	public void setScmpReadFlag (String scmpReadFlag) {
		this.scmpReadFlag = scmpReadFlag;
	}
	/**
	 * 已阅时间 : SCMP_READ_DATE
	 * 
	 * @return 
	 */
	public java.util.Date getScmpReadDate () {
		return scmpReadDate;
	}
	
	/**
	 * 已阅时间 : SCMP_READ_DATE
	 * 
	 * @return 
	 */
	public void setScmpReadDate (java.util.Date scmpReadDate) {
		this.scmpReadDate = scmpReadDate;
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


    public SnsCoreMessagePerson (){
        
    }
    
    
    public String ggetRecordGuid() {
				return this.scmpGuid;
    }

    public void ssetRecordGuid(String recordGuid) {
				this.scmpGuid = recordGuid;
    }
}
