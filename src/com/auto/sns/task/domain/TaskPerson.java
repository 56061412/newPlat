package com.auto.sns.task.domain;

import com.auto.tools.AutoUtils;
import com.system.common.AbstractDomain;
import com.system.util.BeanUtil;

/**
 * : t_auto_sns_task_person
 * 
 * 
 * @author Gen
 */
public class TaskPerson  extends AbstractDomain{

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
	//主键 : ROW_GUID 	
	private String rowGuid; 
	//任务GUID : TASK_GUID 	
	private String taskGuid; 
	//任务人 : TASK_PERSON 	
	private String taskPerson; 
	//状态 : TASK_STATUS 	
	private String taskStatus; 
	//反馈 : CONTENT 	
	private String content; 
	//反馈时间 : FANKUI_TIME 	
	private java.util.Date fankuiTime; 
	//推送手机端消息状态(0.未推送 1.推送失败 2.推送完成 3.没有手机端信息)： TASK_PUSH_STATUS
	private String taskPushStatus;
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
	
	/****ADD COLUMN***/
	//任务人姓名
	private String taskPersonName;

	public String getTaskPushStatus() {
		return taskPushStatus;
	}

	public void setTaskPushStatus(String taskPushStatus) {
		this.taskPushStatus = taskPushStatus;
	}

	public String getTaskPersonName() throws Exception {
		taskPerson = getTaskPerson();
		if(BeanUtil.isNotBlank(taskPerson)){
			taskPersonName = AutoUtils.getUserName(taskPerson);
		}
		return taskPersonName;
	}

	public void setTaskPersonName(String taskPersonName) {
		this.taskPersonName = taskPersonName;
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
	 * 主键 : ROW_GUID
	 * 
	 * @return 
	 */
	public String getRowGuid () {
		return rowGuid;
	}
	
	/**
	 * 主键 : ROW_GUID
	 * 
	 * @return 
	 */
	public void setRowGuid (String rowGuid) {
		this.rowGuid = rowGuid;
	}
	/**
	 * 任务GUID : TASK_GUID
	 * 
	 * @return 
	 */
	public String getTaskGuid () {
		return taskGuid;
	}
	
	/**
	 * 任务GUID : TASK_GUID
	 * 
	 * @return 
	 */
	public void setTaskGuid (String taskGuid) {
		this.taskGuid = taskGuid;
	}
	/**
	 * 任务人 : TASK_PERSON
	 * 
	 * @return 
	 */
	public String getTaskPerson () {
		return taskPerson;
	}
	
	/**
	 * 任务人 : TASK_PERSON
	 * 
	 * @return 
	 */
	public void setTaskPerson (String taskPerson) {
		this.taskPerson = taskPerson;
	}
	/**
	 * 状态 : TASK_STATUS
	 * 
	 * @return 
	 */
	public String getTaskStatus () {
		return taskStatus;
	}
	
	/**
	 * 状态 : TASK_STATUS
	 * 
	 * @return 
	 */
	public void setTaskStatus (String taskStatus) {
		this.taskStatus = taskStatus;
	}
	/**
	 * 反馈 : CONTENT
	 * 
	 * @return 
	 */
	public String getContent () {
		return content;
	}
	
	/**
	 * 反馈 : CONTENT
	 * 
	 * @return 
	 */
	public void setContent (String content) {
		this.content = content;
	}
	/**
	 * 反馈时间 : FANKUI_TIME
	 * 
	 * @return 
	 */
	public java.util.Date getFankuiTime () {
		return fankuiTime;
	}
	
	/**
	 * 反馈时间 : FANKUI_TIME
	 * 
	 * @return 
	 */
	public void setFankuiTime (java.util.Date fankuiTime) {
		this.fankuiTime = fankuiTime;
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


    public TaskPerson (){
        
    }
    
    
    public String ggetRecordGuid() {
				return this.rowGuid;
    }

    public void ssetRecordGuid(String recordGuid) {
				this.rowGuid = recordGuid;
    }
}
