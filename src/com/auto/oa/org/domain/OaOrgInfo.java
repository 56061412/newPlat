package com.auto.oa.org.domain;

import java.util.List;

import com.auto.oa.user.domain.OaUserInfo;
import com.system.common.AbstractDomain;

/**
 * : t_auto_oa_org_info
 * 
 * 
 * @author Gen
 */
public class OaOrgInfo  extends AbstractDomain{

	private static final long serialVersionUID = 1L;

	//组织机构表主键 : AUORG_GUID 	
	private String auorgGuid; 
	//组织机构表父主键 : AUORG_PARENT_GUID 	
	private String auorgParentGuid; 
	//组织机构代码 : AUORG_CODE 	
	private String auorgCode; 
	//组织机构名称 : AUORG_NAME 	
	private String auorgName; 
	//品牌代码（从常量库中选择） : AUORG_BRAND_CODE 	
	private String auorgBrandCode; 
	//品牌名称（从常量库中选择） : AUORG_BRAND_NAME 	
	private String auorgBrandName; 
	//组织类型代码(4S站、综合维修厂)（从常量库中选择） : AUORG_TYPE_CODE 	
	private String auorgTypeCode; 
	//组织类型名称(4S站、综合维修厂)（从常量库中选择） : AUORG_TYPE_NAME 	
	private String auorgTypeName; 
	//组织机构完整拼音 : AUORG_FULL_SPELL 	
	private String auorgFullSpell; 
	//组织机构拼音缩写 : AUORG_BRIEF_SPELL 	
	private String auorgBriefSpell; 
	//组织机构所属区域(精确到城市，保存区域主键) : AUORG_AREA 	
	private String auorgArea; 
	//组织机构地址 : AUORG_ADDRESS 	
	private String auorgAddress; 
	//组织机构电话 : AUORG_PHONE 	
	private String auorgPhone; 
	//组织机构邮箱 : AUORG_MAIL 	
	private String auorgMail; 
	//组织机构邮编 : AUORG_ZIPCODE 	
	private String auorgZipcode; 
	//组织机构节点深度 : AUORG_DEPTH 	
	private String auorgDepth; 
	//组织机构完整路径(父组织代码子组织代码..) : AUORG_FULL_PATH 	
	private String auorgFullPath; 
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
	//组织内人员信息
	private List<OaUserInfo> oaUserInfos;
	
	//树结构显示使用 默认为 父节点 是否叶子节点：+和-号
	private boolean isIsLeaf;
	//节点处于收缩状态
	private boolean isExpanded;
	
	//设置排序字段
	private String displayOrder;
	
	public List<OaUserInfo> getOaUserInfos() {
		return oaUserInfos;
	}

	public void setOaUserInfos(List<OaUserInfo> oaUserInfos) {
		this.oaUserInfos = oaUserInfos;
	}

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
	 * 组织机构表主键 : AUORG_GUID
	 * 
	 * @return 
	 */
	public String getAuorgGuid () {
		return auorgGuid;
	}
	
	/**
	 * 组织机构表主键 : AUORG_GUID
	 * 
	 * @return 
	 */
	public void setAuorgGuid (String auorgGuid) {
		this.auorgGuid = auorgGuid;
	}
	/**
	 * 组织机构表父主键 : AUORG_PARENT_GUID
	 * 
	 * @return 
	 */
	public String getAuorgParentGuid () {
		return auorgParentGuid;
	}
	
	/**
	 * 组织机构表父主键 : AUORG_PARENT_GUID
	 * 
	 * @return 
	 */
	public void setAuorgParentGuid (String auorgParentGuid) {
		this.auorgParentGuid = auorgParentGuid;
	}
	/**
	 * 组织机构代码 : AUORG_CODE
	 * 
	 * @return 
	 */
	public String getAuorgCode () {
		return auorgCode;
	}
	
	/**
	 * 组织机构代码 : AUORG_CODE
	 * 
	 * @return 
	 */
	public void setAuorgCode (String auorgCode) {
		this.auorgCode = auorgCode;
	}
	/**
	 * 组织机构名称 : AUORG_NAME
	 * 
	 * @return 
	 */
	public String getAuorgName () {
		return auorgName;
	}
	
	/**
	 * 组织机构名称 : AUORG_NAME
	 * 
	 * @return 
	 */
	public void setAuorgName (String auorgName) {
		this.auorgName = auorgName;
	}
	/**
	 * 品牌代码（从常量库中选择） : AUORG_BRAND_CODE
	 * 
	 * @return 
	 */
	public String getAuorgBrandCode () {
		return auorgBrandCode;
	}
	
	/**
	 * 品牌代码（从常量库中选择） : AUORG_BRAND_CODE
	 * 
	 * @return 
	 */
	public void setAuorgBrandCode (String auorgBrandCode) {
		this.auorgBrandCode = auorgBrandCode;
	}
	/**
	 * 品牌名称（从常量库中选择） : AUORG_BRAND_NAME
	 * 
	 * @return 
	 */
	public String getAuorgBrandName () {
		return auorgBrandName;
	}
	
	/**
	 * 品牌名称（从常量库中选择） : AUORG_BRAND_NAME
	 * 
	 * @return 
	 */
	public void setAuorgBrandName (String auorgBrandName) {
		this.auorgBrandName = auorgBrandName;
	}
	/**
	 * 组织类型代码(4S站、综合维修厂)（从常量库中选择） : AUORG_TYPE_CODE
	 * 
	 * @return 
	 */
	public String getAuorgTypeCode () {
		return auorgTypeCode;
	}
	
	/**
	 * 组织类型代码(4S站、综合维修厂)（从常量库中选择） : AUORG_TYPE_CODE
	 * 
	 * @return 
	 */
	public void setAuorgTypeCode (String auorgTypeCode) {
		this.auorgTypeCode = auorgTypeCode;
	}
	/**
	 * 组织类型名称(4S站、综合维修厂)（从常量库中选择） : AUORG_TYPE_NAME
	 * 
	 * @return 
	 */
	public String getAuorgTypeName () {
		return auorgTypeName;
	}
	
	/**
	 * 组织类型名称(4S站、综合维修厂)（从常量库中选择） : AUORG_TYPE_NAME
	 * 
	 * @return 
	 */
	public void setAuorgTypeName (String auorgTypeName) {
		this.auorgTypeName = auorgTypeName;
	}
	/**
	 * 组织机构完整拼音 : AUORG_FULL_SPELL
	 * 
	 * @return 
	 */
	public String getAuorgFullSpell () {
		return auorgFullSpell;
	}
	
	/**
	 * 组织机构完整拼音 : AUORG_FULL_SPELL
	 * 
	 * @return 
	 */
	public void setAuorgFullSpell (String auorgFullSpell) {
		this.auorgFullSpell = auorgFullSpell;
	}
	/**
	 * 组织机构拼音缩写 : AUORG_BRIEF_SPELL
	 * 
	 * @return 
	 */
	public String getAuorgBriefSpell () {
		return auorgBriefSpell;
	}
	
	/**
	 * 组织机构拼音缩写 : AUORG_BRIEF_SPELL
	 * 
	 * @return 
	 */
	public void setAuorgBriefSpell (String auorgBriefSpell) {
		this.auorgBriefSpell = auorgBriefSpell;
	}
	/**
	 * 组织机构所属区域(精确到城市，保存区域主键) : AUORG_AREA
	 * 
	 * @return 
	 */
	public String getAuorgArea () {
		return auorgArea;
	}
	
	/**
	 * 组织机构所属区域(精确到城市，保存区域主键) : AUORG_AREA
	 * 
	 * @return 
	 */
	public void setAuorgArea (String auorgArea) {
		this.auorgArea = auorgArea;
	}
	/**
	 * 组织机构地址 : AUORG_ADDRESS
	 * 
	 * @return 
	 */
	public String getAuorgAddress () {
		return auorgAddress;
	}
	
	/**
	 * 组织机构地址 : AUORG_ADDRESS
	 * 
	 * @return 
	 */
	public void setAuorgAddress (String auorgAddress) {
		this.auorgAddress = auorgAddress;
	}
	/**
	 * 组织机构电话 : AUORG_PHONE
	 * 
	 * @return 
	 */
	public String getAuorgPhone () {
		return auorgPhone;
	}
	
	/**
	 * 组织机构电话 : AUORG_PHONE
	 * 
	 * @return 
	 */
	public void setAuorgPhone (String auorgPhone) {
		this.auorgPhone = auorgPhone;
	}
	/**
	 * 组织机构邮箱 : AUORG_MAIL
	 * 
	 * @return 
	 */
	public String getAuorgMail () {
		return auorgMail;
	}
	
	/**
	 * 组织机构邮箱 : AUORG_MAIL
	 * 
	 * @return 
	 */
	public void setAuorgMail (String auorgMail) {
		this.auorgMail = auorgMail;
	}
	/**
	 * 组织机构邮编 : AUORG_ZIPCODE
	 * 
	 * @return 
	 */
	public String getAuorgZipcode () {
		return auorgZipcode;
	}
	
	/**
	 * 组织机构邮编 : AUORG_ZIPCODE
	 * 
	 * @return 
	 */
	public void setAuorgZipcode (String auorgZipcode) {
		this.auorgZipcode = auorgZipcode;
	}
	/**
	 * 组织机构节点深度 : AUORG_DEPTH
	 * 
	 * @return 
	 */
	public String getAuorgDepth () {
		return auorgDepth;
	}
	
	/**
	 * 组织机构节点深度 : AUORG_DEPTH
	 * 
	 * @return 
	 */
	public void setAuorgDepth (String auorgDepth) {
		this.auorgDepth = auorgDepth;
	}
	/**
	 * 组织机构完整路径(父组织代码子组织代码..) : AUORG_FULL_PATH
	 * 
	 * @return 
	 */
	public String getAuorgFullPath () {
		return auorgFullPath;
	}
	
	/**
	 * 组织机构完整路径(父组织代码子组织代码..) : AUORG_FULL_PATH
	 * 
	 * @return 
	 */
	public void setAuorgFullPath (String auorgFullPath) {
		this.auorgFullPath = auorgFullPath;
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


    public OaOrgInfo (){
        
    }
    
    
    public String ggetRecordGuid() {
				return this.auorgGuid;
    }

    public void ssetRecordGuid(String recordGuid) {
				this.auorgGuid = recordGuid;
    }
}
