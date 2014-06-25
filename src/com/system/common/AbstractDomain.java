package com.system.common;

import java.util.Date;

public abstract class AbstractDomain implements IDomain {

	private static final long serialVersionUID = -6266406871138614451L;

	private Date createTime;

	private Date updateTime;

	private Date deleteTime;

	private String createUser;

	private String modifyUser;

	private String deleteUser;
	
	private String updateUser; 

	private Integer recordVersion;

	public String getUpdateUser() {
		return updateUser;
	}

	public void setUpdateUser(String updateUser) {
		this.updateUser = updateUser;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public String getCreateUser() {
		return createUser;
	}

	public void setCreateUser(String createUser) {
		this.createUser = createUser;
	}

	public Date getDeleteTime() {
		return deleteTime;
	}

	public void setDeleteTime(Date deleteTime) {
		this.deleteTime = deleteTime;
	}

	public String getDeleteUser() {
		return deleteUser;
	}

	public void setDeleteUser(String deleteUser) {
		this.deleteUser = deleteUser;
	}

	public Integer getRecordVersion() {
		return recordVersion;
	}

	public void setRecordVersion(Integer recordVersion) {
		this.recordVersion = recordVersion;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public String getModifyUser() {
		return modifyUser;
	}

	public void setModifyUser(String modifyUser) {
		this.modifyUser = modifyUser;
	}

	public static void transfer(AbstractDomain from, AbstractDomain to) {
		to.setCreateTime(from.getCreateTime());
		to.setCreateUser(from.getCreateUser());
		to.setDeleteTime(from.getDeleteTime());
		to.setDeleteUser(from.getDeleteUser());
		to.setUpdateTime(from.getUpdateTime());
		to.setModifyUser(from.getModifyUser());
		to.setRecordVersion(from.getRecordVersion());
	}

	public void initial() {
		this.ssetRecordGuid(null);
		this.setCreateUser(null);
		this.setModifyUser(null);
		this.setDeleteUser(null);
		this.setCreateTime(null);
		this.setUpdateTime(null);
		this.setDeleteTime(null);
	}
}
