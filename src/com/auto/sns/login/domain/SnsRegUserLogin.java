package com.auto.sns.login.domain;

import com.system.common.AbstractDomain;

/**
 * : t_auto_sns_reg_user_login
 * 
 * 
 * @author Gen
 */
public class SnsRegUserLogin  extends AbstractDomain{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	//用户信息表主键 : SRUL_GUID 	
	private String srulGuid; 
	//用户工号 : SRUL_USER_CODE 	
	private String srulUserCode; 
	//姓名 : SRUL_USER_NAME 	
	private String srulUserName; 
	//昵称 : SRUL_USER_NICK_NAME 	
	private String srulUserNickName; 
	//性别(M.男 W.女) : SRUL_USER_GENDER 	
	private String srulUserGender; 
	//年龄 : SRUL_USER_AGE 	
	private String srulUserAge; 
	//拼音(全拼) : SRUL_USER_PY 	
	private String srulUserPy; 
	//拼音(缩写) : SRUL_USER_PY_BREF 	
	private String srulUserPyBref; 
	//出生年月 : SRUL_USER_BIRTHDAY 	
	private java.util.Date srulUserBirthday; 
	//血型 : SRUL_USER_BLOOD_TYPE 	
	private String srulUserBloodType; 
	//QQ号码 : SRUL_USER_QQ 	
	private String srulUserQq; 
	//手机号码 : SRUL_USER_MOBILE 	
	private String srulUserMobile; 
	//电话 : SRUL_USER_PHONE 	
	private String srulUserPhone; 
	//邮箱 : SRUL_USER_MAIL 	
	private String srulUserMail; 
	//所在城市(保存区域主键) : SRUL_USER_CITY 	
	private String srulUserCity; 
	//毕业院校 : SRUL_USER_GRADUATE_SCHOOL 	
	private String srulUserGraduateSchool; 
	//工作经历(可以上传附件) : SRUL_USER_WORK_EXPERIENCE 	
	private String srulUserWorkExperience; 
	//地址 : SRUL_USER_ADDRESS 	
	private String srulUserAddress; 
	//邮编 : SRUL_USER_ZIPCODE 	
	private String srulUserZipcode; 
	//证件类型 : SRUL_USER_ID_TYPE 	
	private String srulUserIdType; 
	//证件号码 : SRUL_USER_ID_CODE 	
	private String srulUserIdCode; 
	//登录密码(32位MD5) : SRUL_USER_PASSWORD 	
	private String srulUserPassword; 
	//组织代码 : SRUL_ORG_CODE 	
	private String srulOrgCode; 
	//组织名称 : SRUL_ORG_NAME 	
	private String srulOrgName; 
	//工种 : SRUL_POST_WORK_CODE 	
	private String srulPostWorkCode; 
	//职称 : SRUL_POST_DUTY_CODE 	
	private String srulPostDutyCode; 
	//擅长维修 : SRUL_POST_SKILL_REPAIR 	
	private String srulPostSkillRepair; 
	//擅长项目 : SRUL_POST_SKILL_PROJECT 	
	private String srulPostSkillProject; 
	//维修技术简介 : SRUL_POST_DESC 	
	private String srulPostDesc; 
	//状态 : SRUL_STATUS 	
	private String srulStatus; 
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

	/**
	 * 用户信息表主键 : SRUL_GUID
	 * 
	 * @return 
	 */
	public String getSrulGuid () {
		return srulGuid;
	}
	
	/**
	 * 用户信息表主键 : SRUL_GUID
	 * 
	 * @return 
	 */
	public void setSrulGuid (String srulGuid) {
		this.srulGuid = srulGuid;
	}
	/**
	 * 用户工号 : SRUL_USER_CODE
	 * 
	 * @return 
	 */
	public String getSrulUserCode () {
		return srulUserCode;
	}
	
	/**
	 * 用户工号 : SRUL_USER_CODE
	 * 
	 * @return 
	 */
	public void setSrulUserCode (String srulUserCode) {
		this.srulUserCode = srulUserCode;
	}
	/**
	 * 姓名 : SRUL_USER_NAME
	 * 
	 * @return 
	 */
	public String getSrulUserName () {
		return srulUserName;
	}
	
	/**
	 * 姓名 : SRUL_USER_NAME
	 * 
	 * @return 
	 */
	public void setSrulUserName (String srulUserName) {
		this.srulUserName = srulUserName;
	}
	/**
	 * 昵称 : SRUL_USER_NICK_NAME
	 * 
	 * @return 
	 */
	public String getSrulUserNickName () {
		return srulUserNickName;
	}
	
	/**
	 * 昵称 : SRUL_USER_NICK_NAME
	 * 
	 * @return 
	 */
	public void setSrulUserNickName (String srulUserNickName) {
		this.srulUserNickName = srulUserNickName;
	}
	/**
	 * 性别(M.男 W.女) : SRUL_USER_GENDER
	 * 
	 * @return 
	 */
	public String getSrulUserGender () {
		return srulUserGender;
	}
	
	/**
	 * 性别(M.男 W.女) : SRUL_USER_GENDER
	 * 
	 * @return 
	 */
	public void setSrulUserGender (String srulUserGender) {
		this.srulUserGender = srulUserGender;
	}
	/**
	 * 年龄 : SRUL_USER_AGE
	 * 
	 * @return 
	 */
	public String getSrulUserAge () {
		return srulUserAge;
	}
	
	/**
	 * 年龄 : SRUL_USER_AGE
	 * 
	 * @return 
	 */
	public void setSrulUserAge (String srulUserAge) {
		this.srulUserAge = srulUserAge;
	}
	/**
	 * 拼音(全拼) : SRUL_USER_PY
	 * 
	 * @return 
	 */
	public String getSrulUserPy () {
		return srulUserPy;
	}
	
	/**
	 * 拼音(全拼) : SRUL_USER_PY
	 * 
	 * @return 
	 */
	public void setSrulUserPy (String srulUserPy) {
		this.srulUserPy = srulUserPy;
	}
	/**
	 * 拼音(缩写) : SRUL_USER_PY_BREF
	 * 
	 * @return 
	 */
	public String getSrulUserPyBref () {
		return srulUserPyBref;
	}
	
	/**
	 * 拼音(缩写) : SRUL_USER_PY_BREF
	 * 
	 * @return 
	 */
	public void setSrulUserPyBref (String srulUserPyBref) {
		this.srulUserPyBref = srulUserPyBref;
	}
	/**
	 * 出生年月 : SRUL_USER_BIRTHDAY
	 * 
	 * @return 
	 */
	public java.util.Date getSrulUserBirthday () {
		return srulUserBirthday;
	}
	
	/**
	 * 出生年月 : SRUL_USER_BIRTHDAY
	 * 
	 * @return 
	 */
	public void setSrulUserBirthday (java.util.Date srulUserBirthday) {
		this.srulUserBirthday = srulUserBirthday;
	}
	/**
	 * 血型 : SRUL_USER_BLOOD_TYPE
	 * 
	 * @return 
	 */
	public String getSrulUserBloodType () {
		return srulUserBloodType;
	}
	
	/**
	 * 血型 : SRUL_USER_BLOOD_TYPE
	 * 
	 * @return 
	 */
	public void setSrulUserBloodType (String srulUserBloodType) {
		this.srulUserBloodType = srulUserBloodType;
	}
	/**
	 * QQ号码 : SRUL_USER_QQ
	 * 
	 * @return 
	 */
	public String getSrulUserQq () {
		return srulUserQq;
	}
	
	/**
	 * QQ号码 : SRUL_USER_QQ
	 * 
	 * @return 
	 */
	public void setSrulUserQq (String srulUserQq) {
		this.srulUserQq = srulUserQq;
	}
	/**
	 * 手机号码 : SRUL_USER_MOBILE
	 * 
	 * @return 
	 */
	public String getSrulUserMobile () {
		return srulUserMobile;
	}
	
	/**
	 * 手机号码 : SRUL_USER_MOBILE
	 * 
	 * @return 
	 */
	public void setSrulUserMobile (String srulUserMobile) {
		this.srulUserMobile = srulUserMobile;
	}
	/**
	 * 电话 : SRUL_USER_PHONE
	 * 
	 * @return 
	 */
	public String getSrulUserPhone () {
		return srulUserPhone;
	}
	
	/**
	 * 电话 : SRUL_USER_PHONE
	 * 
	 * @return 
	 */
	public void setSrulUserPhone (String srulUserPhone) {
		this.srulUserPhone = srulUserPhone;
	}
	/**
	 * 邮箱 : SRUL_USER_MAIL
	 * 
	 * @return 
	 */
	public String getSrulUserMail () {
		return srulUserMail;
	}
	
	/**
	 * 邮箱 : SRUL_USER_MAIL
	 * 
	 * @return 
	 */
	public void setSrulUserMail (String srulUserMail) {
		this.srulUserMail = srulUserMail;
	}
	/**
	 * 所在城市(保存区域主键) : SRUL_USER_CITY
	 * 
	 * @return 
	 */
	public String getSrulUserCity () {
		return srulUserCity;
	}
	
	/**
	 * 所在城市(保存区域主键) : SRUL_USER_CITY
	 * 
	 * @return 
	 */
	public void setSrulUserCity (String srulUserCity) {
		this.srulUserCity = srulUserCity;
	}
	/**
	 * 毕业院校 : SRUL_USER_GRADUATE_SCHOOL
	 * 
	 * @return 
	 */
	public String getSrulUserGraduateSchool () {
		return srulUserGraduateSchool;
	}
	
	/**
	 * 毕业院校 : SRUL_USER_GRADUATE_SCHOOL
	 * 
	 * @return 
	 */
	public void setSrulUserGraduateSchool (String srulUserGraduateSchool) {
		this.srulUserGraduateSchool = srulUserGraduateSchool;
	}
	/**
	 * 工作经历(可以上传附件) : SRUL_USER_WORK_EXPERIENCE
	 * 
	 * @return 
	 */
	public String getSrulUserWorkExperience () {
		return srulUserWorkExperience;
	}
	
	/**
	 * 工作经历(可以上传附件) : SRUL_USER_WORK_EXPERIENCE
	 * 
	 * @return 
	 */
	public void setSrulUserWorkExperience (String srulUserWorkExperience) {
		this.srulUserWorkExperience = srulUserWorkExperience;
	}
	/**
	 * 地址 : SRUL_USER_ADDRESS
	 * 
	 * @return 
	 */
	public String getSrulUserAddress () {
		return srulUserAddress;
	}
	
	/**
	 * 地址 : SRUL_USER_ADDRESS
	 * 
	 * @return 
	 */
	public void setSrulUserAddress (String srulUserAddress) {
		this.srulUserAddress = srulUserAddress;
	}
	/**
	 * 邮编 : SRUL_USER_ZIPCODE
	 * 
	 * @return 
	 */
	public String getSrulUserZipcode () {
		return srulUserZipcode;
	}
	
	/**
	 * 邮编 : SRUL_USER_ZIPCODE
	 * 
	 * @return 
	 */
	public void setSrulUserZipcode (String srulUserZipcode) {
		this.srulUserZipcode = srulUserZipcode;
	}
	/**
	 * 证件类型 : SRUL_USER_ID_TYPE
	 * 
	 * @return 
	 */
	public String getSrulUserIdType () {
		return srulUserIdType;
	}
	
	/**
	 * 证件类型 : SRUL_USER_ID_TYPE
	 * 
	 * @return 
	 */
	public void setSrulUserIdType (String srulUserIdType) {
		this.srulUserIdType = srulUserIdType;
	}
	/**
	 * 证件号码 : SRUL_USER_ID_CODE
	 * 
	 * @return 
	 */
	public String getSrulUserIdCode () {
		return srulUserIdCode;
	}
	
	/**
	 * 证件号码 : SRUL_USER_ID_CODE
	 * 
	 * @return 
	 */
	public void setSrulUserIdCode (String srulUserIdCode) {
		this.srulUserIdCode = srulUserIdCode;
	}
	/**
	 * 登录密码(32位MD5) : SRUL_USER_PASSWORD
	 * 
	 * @return 
	 */
	public String getSrulUserPassword () {
		return srulUserPassword;
	}
	
	/**
	 * 登录密码(32位MD5) : SRUL_USER_PASSWORD
	 * 
	 * @return 
	 */
	public void setSrulUserPassword (String srulUserPassword) {
		this.srulUserPassword = srulUserPassword;
	}
	/**
	 * 组织代码 : SRUL_ORG_CODE
	 * 
	 * @return 
	 */
	public String getSrulOrgCode () {
		return srulOrgCode;
	}
	
	/**
	 * 组织代码 : SRUL_ORG_CODE
	 * 
	 * @return 
	 */
	public void setSrulOrgCode (String srulOrgCode) {
		this.srulOrgCode = srulOrgCode;
	}
	/**
	 * 组织名称 : SRUL_ORG_NAME
	 * 
	 * @return 
	 */
	public String getSrulOrgName () {
		return srulOrgName;
	}
	
	/**
	 * 组织名称 : SRUL_ORG_NAME
	 * 
	 * @return 
	 */
	public void setSrulOrgName (String srulOrgName) {
		this.srulOrgName = srulOrgName;
	}
	/**
	 * 工种 : SRUL_POST_WORK_CODE
	 * 
	 * @return 
	 */
	public String getSrulPostWorkCode () {
		return srulPostWorkCode;
	}
	
	/**
	 * 工种 : SRUL_POST_WORK_CODE
	 * 
	 * @return 
	 */
	public void setSrulPostWorkCode (String srulPostWorkCode) {
		this.srulPostWorkCode = srulPostWorkCode;
	}
	/**
	 * 职称 : SRUL_POST_DUTY_CODE
	 * 
	 * @return 
	 */
	public String getSrulPostDutyCode () {
		return srulPostDutyCode;
	}
	
	/**
	 * 职称 : SRUL_POST_DUTY_CODE
	 * 
	 * @return 
	 */
	public void setSrulPostDutyCode (String srulPostDutyCode) {
		this.srulPostDutyCode = srulPostDutyCode;
	}
	/**
	 * 擅长维修 : SRUL_POST_SKILL_REPAIR
	 * 
	 * @return 
	 */
	public String getSrulPostSkillRepair () {
		return srulPostSkillRepair;
	}
	
	/**
	 * 擅长维修 : SRUL_POST_SKILL_REPAIR
	 * 
	 * @return 
	 */
	public void setSrulPostSkillRepair (String srulPostSkillRepair) {
		this.srulPostSkillRepair = srulPostSkillRepair;
	}
	/**
	 * 擅长项目 : SRUL_POST_SKILL_PROJECT
	 * 
	 * @return 
	 */
	public String getSrulPostSkillProject () {
		return srulPostSkillProject;
	}
	
	/**
	 * 擅长项目 : SRUL_POST_SKILL_PROJECT
	 * 
	 * @return 
	 */
	public void setSrulPostSkillProject (String srulPostSkillProject) {
		this.srulPostSkillProject = srulPostSkillProject;
	}
	/**
	 * 维修技术简介 : SRUL_POST_DESC
	 * 
	 * @return 
	 */
	public String getSrulPostDesc () {
		return srulPostDesc;
	}
	
	/**
	 * 维修技术简介 : SRUL_POST_DESC
	 * 
	 * @return 
	 */
	public void setSrulPostDesc (String srulPostDesc) {
		this.srulPostDesc = srulPostDesc;
	}
	/**
	 * 状态 : SRUL_STATUS
	 * 
	 * @return 
	 */
	public String getSrulStatus () {
		return srulStatus;
	}
	
	/**
	 * 状态 : SRUL_STATUS
	 * 
	 * @return 
	 */
	public void setSrulStatus (String srulStatus) {
		this.srulStatus = srulStatus;
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


    public SnsRegUserLogin (){
        
    }
    
    
    public String ggetRecordGuid() {
				return this.srulGuid;
    }

    public void ssetRecordGuid(String recordGuid) {
				this.srulGuid = recordGuid;
    }
}
