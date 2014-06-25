package com.auto.oa.user.domain;

import com.system.common.AbstractDomain;

/**
 * : t_auto_oa_user_info
 * 
 * 用户信息表
 * @author WangYi
 */
public class OaUserInfo  extends AbstractDomain{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	

	//用户信息表主键 : AUSER_GUID 	
	private String auserGuid; 
	//工号 : AUSER_CODE 	
	private String auserCode; 
	//姓名 : AUSER_NAME 	
	private String auserName; 
	//昵称 : AUSER_NICK_NAME 	
	private String auserNickName; 
	//性别(M.男 W.女)从常量库中选择 : AUSER_GENDER 	
	private String auserGender; 
	//年龄 : AUSER_AGE 	
	private String auserAge; 
	//拼音(全拼) : AUSER_PY 	
	private String auserPy; 
	//拼音(缩写) : AUSER_PY_BREF 	
	private String auserPyBref; 
	//出生年月 : AUSER_BIRTHDAY 	
	private java.util.Date auserBirthday; 
	//血型（从常量库中选择） : AUSER_BLOOD_TYPE 	
	private String auserBloodType; 
	//QQ号码 : AUSER_QQ 	
	private String auserQq; 
	//手机号码 : AUSER_MOBILE 	
	private String auserMobile; 
	//电话 : AUSER_PHONE 	
	private String auserPhone; 
	//邮箱 : AUSER_MAIL 	
	private String auserMail; 
	//所在城市(保存区域主键) : AUSER_CITY 	
	private String auserCity; 
	//毕业院校 : AUSER_GRADUATE_SCHOOL 	
	private String auserGraduateSchool; 
	//工作经历(可以上传附件) : AUSER_WORK_EXPERIENCE 	
	private String auserWorkExperience; 
	//地址 : AUSER_ADDRESS 	
	private String auserAddress; 
	//邮编 : AUSER_ZIPCODE 	
	private String auserZipcode; 
	//证件类型（从常量库中选择） : AUSER_ID_TYPE 	
	private String auserIdType; 
	//证件号码 : AUSER_ID_CODE 	
	private String auserIdCode; 
	//登录密码(32位MD5) : AUSER_PASSWORD 	
	private String auserPassword; 
	//登录状态0.未登录 1.登录 默认0：AUSER_LOGIN_STATE
	private String auserLoginState;
	//登录设备0.电脑 1.手机 默认1：AUSER_LOGIN_LOG
	private String auserLoginLog;
	//手机端channelId： AUSER_MOBILE_CHANNEL_ID
	private String auserMobileChannelId;
	//手机端userId： AUSER_MOBILE_USER_ID
	private String auserMobileUserId;
	//是否有效(0.有效 1.无效)（从常量库中选择） : IS_VALIDITY 	
	private String isValidity; 
	//创建人 : CREATE_USER 	
	private String createUser; 
	//修改人 : UPDATE_USER 	
	private String updateUser; 
	//创建时间 : CREATE_TIME 	
	private java.util.Date createTime; 
	//修改时间 : UPDATE_TIME 	
	private java.util.Date updateTime; 
	
	/**	ADD Column 业务字段 */
	//组织结构表主键 : AUORG_GUID 	
	private String auorgGuid; 
	//岗位代码 : AOUM_POST_CODE 	
	private String aoumPostCode; 
	//岗位名称 : AOUM_POST_NAME 	
	private String aoumPostName; 
	//组织结构代码 : AUORG_CODE 	
	private String auorgCode; 
	//组织机构名称 : AUORG_NAME 	
	private String auorgName; 
	
	//是否任务发布人
	private String isPublishTask;
	//用户头像图片路径
	private String userHeadImagePath;
	
	public String getUserHeadImagePath() {
		return userHeadImagePath;
	}

	public void setUserHeadImagePath(String userHeadImagePath) {
		this.userHeadImagePath = userHeadImagePath;
	}

	public String getIsPublishTask() {
		return isPublishTask;
	}

	public void setIsPublishTask(String isPublishTask) {
		this.isPublishTask = isPublishTask;
	}

	//设置排序字段
	private String displayOrder;
	
	public String getDisplayOrder() {
		return displayOrder;
	}

	public void setDisplayOrder(String displayOrder) {
		this.displayOrder = displayOrder;
	}
	
	
	public String getAuserMobileChannelId() {
		return auserMobileChannelId;
	}

	public void setAuserMobileChannelId(String auserMobileChannelId) {
		this.auserMobileChannelId = auserMobileChannelId;
	}

	public String getAuserMobileUserId() {
		return auserMobileUserId;
	}

	public void setAuserMobileUserId(String auserMobileUserId) {
		this.auserMobileUserId = auserMobileUserId;
	}

	public String getAuorgGuid() {
		return auorgGuid;
	}

	public void setAuorgGuid(String auorgGuid) {
		this.auorgGuid = auorgGuid;
	}

	public String getAoumPostCode() {
		return aoumPostCode;
	}

	public void setAoumPostCode(String aoumPostCode) {
		this.aoumPostCode = aoumPostCode;
	}

	public String getAoumPostName() {
		return aoumPostName;
	}

	public void setAoumPostName(String aoumPostName) {
		this.aoumPostName = aoumPostName;
	}

	public String getAuorgCode() {
		return auorgCode;
	}

	public void setAuorgCode(String auorgCode) {
		this.auorgCode = auorgCode;
	}

	public String getAuorgName() {
		return auorgName;
	}

	public void setAuorgName(String auorgName) {
		this.auorgName = auorgName;
	}

	/**
	 * 用户信息表主键 : AUSER_GUID
	 * 
	 * @return 
	 */
	public String getAuserGuid () {
		return auserGuid;
	}
	
	/**
	 * 用户信息表主键 : AUSER_GUID
	 * 
	 * @return 
	 */
	public void setAuserGuid (String auserGuid) {
		this.auserGuid = auserGuid;
	}
	/**
	 * 工号 : AUSER_CODE
	 * 
	 * @return 
	 */
	public String getAuserCode () {
		return auserCode;
	}
	
	/**
	 * 工号 : AUSER_CODE
	 * 
	 * @return 
	 */
	public void setAuserCode (String auserCode) {
		this.auserCode = auserCode;
	}
	/**
	 * 姓名 : AUSER_NAME
	 * 
	 * @return 
	 */
	public String getAuserName () {
		return auserName;
	}
	
	/**
	 * 姓名 : AUSER_NAME
	 * 
	 * @return 
	 */
	public void setAuserName (String auserName) {
		this.auserName = auserName;
	}
	/**
	 * 昵称 : AUSER_NICK_NAME
	 * 
	 * @return 
	 */
	public String getAuserNickName () {
		return auserNickName;
	}
	
	/**
	 * 昵称 : AUSER_NICK_NAME
	 * 
	 * @return 
	 */
	public void setAuserNickName (String auserNickName) {
		this.auserNickName = auserNickName;
	}
	/**
	 * 性别(M.男 W.女)从常量库中选择 : AUSER_GENDER
	 * 
	 * @return 
	 */
	public String getAuserGender () {
		return auserGender;
	}
	
	/**
	 * 性别(M.男 W.女)从常量库中选择 : AUSER_GENDER
	 * 
	 * @return 
	 */
	public void setAuserGender (String auserGender) {
		this.auserGender = auserGender;
	}
	/**
	 * 年龄 : AUSER_AGE
	 * 
	 * @return 
	 */
	public String getAuserAge () {
		return auserAge;
	}
	
	/**
	 * 年龄 : AUSER_AGE
	 * 
	 * @return 
	 */
	public void setAuserAge (String auserAge) {
		this.auserAge = auserAge;
	}
	/**
	 * 拼音(全拼) : AUSER_PY
	 * 
	 * @return 
	 */
	public String getAuserPy () {
		return auserPy;
	}
	
	/**
	 * 拼音(全拼) : AUSER_PY
	 * 
	 * @return 
	 */
	public void setAuserPy (String auserPy) {
		this.auserPy = auserPy;
	}
	/**
	 * 拼音(缩写) : AUSER_PY_BREF
	 * 
	 * @return 
	 */
	public String getAuserPyBref () {
		return auserPyBref;
	}
	
	/**
	 * 拼音(缩写) : AUSER_PY_BREF
	 * 
	 * @return 
	 */
	public void setAuserPyBref (String auserPyBref) {
		this.auserPyBref = auserPyBref;
	}
	/**
	 * 出生年月 : AUSER_BIRTHDAY
	 * 
	 * @return 
	 */
	public java.util.Date getAuserBirthday () {
		return auserBirthday;
	}
	
	/**
	 * 出生年月 : AUSER_BIRTHDAY
	 * 
	 * @return 
	 */
	public void setAuserBirthday (java.util.Date auserBirthday) {
		this.auserBirthday = auserBirthday;
	}
	/**
	 * 血型（从常量库中选择） : AUSER_BLOOD_TYPE
	 * 
	 * @return 
	 */
	public String getAuserBloodType () {
		return auserBloodType;
	}
	
	/**
	 * 血型（从常量库中选择） : AUSER_BLOOD_TYPE
	 * 
	 * @return 
	 */
	public void setAuserBloodType (String auserBloodType) {
		this.auserBloodType = auserBloodType;
	}
	/**
	 * QQ号码 : AUSER_QQ
	 * 
	 * @return 
	 */
	public String getAuserQq () {
		return auserQq;
	}
	
	/**
	 * QQ号码 : AUSER_QQ
	 * 
	 * @return 
	 */
	public void setAuserQq (String auserQq) {
		this.auserQq = auserQq;
	}
	/**
	 * 手机号码 : AUSER_MOBILE
	 * 
	 * @return 
	 */
	public String getAuserMobile () {
		return auserMobile;
	}
	
	/**
	 * 手机号码 : AUSER_MOBILE
	 * 
	 * @return 
	 */
	public void setAuserMobile (String auserMobile) {
		this.auserMobile = auserMobile;
	}
	/**
	 * 电话 : AUSER_PHONE
	 * 
	 * @return 
	 */
	public String getAuserPhone () {
		return auserPhone;
	}
	
	/**
	 * 电话 : AUSER_PHONE
	 * 
	 * @return 
	 */
	public void setAuserPhone (String auserPhone) {
		this.auserPhone = auserPhone;
	}
	/**
	 * 邮箱 : AUSER_MAIL
	 * 
	 * @return 
	 */
	public String getAuserMail () {
		return auserMail;
	}
	
	/**
	 * 邮箱 : AUSER_MAIL
	 * 
	 * @return 
	 */
	public void setAuserMail (String auserMail) {
		this.auserMail = auserMail;
	}
	/**
	 * 所在城市(保存区域主键) : AUSER_CITY
	 * 
	 * @return 
	 */
	public String getAuserCity () {
		return auserCity;
	}
	
	/**
	 * 所在城市(保存区域主键) : AUSER_CITY
	 * 
	 * @return 
	 */
	public void setAuserCity (String auserCity) {
		this.auserCity = auserCity;
	}
	/**
	 * 毕业院校 : AUSER_GRADUATE_SCHOOL
	 * 
	 * @return 
	 */
	public String getAuserGraduateSchool () {
		return auserGraduateSchool;
	}
	
	/**
	 * 毕业院校 : AUSER_GRADUATE_SCHOOL
	 * 
	 * @return 
	 */
	public void setAuserGraduateSchool (String auserGraduateSchool) {
		this.auserGraduateSchool = auserGraduateSchool;
	}
	/**
	 * 工作经历(可以上传附件) : AUSER_WORK_EXPERIENCE
	 * 
	 * @return 
	 */
	public String getAuserWorkExperience () {
		return auserWorkExperience;
	}
	
	/**
	 * 工作经历(可以上传附件) : AUSER_WORK_EXPERIENCE
	 * 
	 * @return 
	 */
	public void setAuserWorkExperience (String auserWorkExperience) {
		this.auserWorkExperience = auserWorkExperience;
	}
	/**
	 * 地址 : AUSER_ADDRESS
	 * 
	 * @return 
	 */
	public String getAuserAddress () {
		return auserAddress;
	}
	
	/**
	 * 地址 : AUSER_ADDRESS
	 * 
	 * @return 
	 */
	public void setAuserAddress (String auserAddress) {
		this.auserAddress = auserAddress;
	}
	/**
	 * 邮编 : AUSER_ZIPCODE
	 * 
	 * @return 
	 */
	public String getAuserZipcode () {
		return auserZipcode;
	}
	
	/**
	 * 邮编 : AUSER_ZIPCODE
	 * 
	 * @return 
	 */
	public void setAuserZipcode (String auserZipcode) {
		this.auserZipcode = auserZipcode;
	}
	/**
	 * 证件类型（从常量库中选择） : AUSER_ID_TYPE
	 * 
	 * @return 
	 */
	public String getAuserIdType () {
		return auserIdType;
	}
	
	/**
	 * 证件类型（从常量库中选择） : AUSER_ID_TYPE
	 * 
	 * @return 
	 */
	public void setAuserIdType (String auserIdType) {
		this.auserIdType = auserIdType;
	}
	/**
	 * 证件号码 : AUSER_ID_CODE
	 * 
	 * @return 
	 */
	public String getAuserIdCode () {
		return auserIdCode;
	}
	
	/**
	 * 证件号码 : AUSER_ID_CODE
	 * 
	 * @return 
	 */
	public void setAuserIdCode (String auserIdCode) {
		this.auserIdCode = auserIdCode;
	}
	/**
	 * 登录密码(32位MD5) : AUSER_PASSWORD
	 * 
	 * @return 
	 */
	public String getAuserPassword () {
		return auserPassword;
	}
	
	/**
	 * 登录密码(32位MD5) : AUSER_PASSWORD
	 * 
	 * @return 
	 * @throws Exception 
	 */
	public void setAuserPassword (String auserPassword) throws Exception {
		this.auserPassword = auserPassword;//Md5Util.encryptByMD5(auserPassword);
	}
	
	/**
	 * 是否有效(0.有效 1.无效)（从常量库中选择） : IS_VALIDITY
	 * 
	 * @return 
	 */
	public String getIsValidity () {
		return isValidity;
	}
	
	/**
	 * 是否有效(0.有效 1.无效)（从常量库中选择） : IS_VALIDITY
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


    public String getAuserLoginState() {
		return auserLoginState;
	}

	public void setAuserLoginState(String auserLoginState) {
		this.auserLoginState = auserLoginState;
	}

	public String getAuserLoginLog() {
		return auserLoginLog;
	}

	public void setAuserLoginLog(String auserLoginLog) {
		this.auserLoginLog = auserLoginLog;
	}

	public OaUserInfo (){
        
    }
    
    
    public String ggetRecordGuid() {
				return this.auserGuid;
    }

    public void ssetRecordGuid(String recordGuid) {
				this.auserGuid = recordGuid;
    }
}
