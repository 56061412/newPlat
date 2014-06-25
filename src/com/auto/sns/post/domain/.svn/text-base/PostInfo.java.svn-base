package com.auto.sns.post.domain;

import java.util.List;

import com.auto.tools.AutoUtils;
import com.system.common.AbstractDomain;
import com.system.util.BeanUtil;

/**
 * : t_auto_sns_post_info
 * 
 * 
 * @author Gen
 */
public class PostInfo  extends AbstractDomain{

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
	//帖子GUID : POST_GUID 	
	private String postGuid; 
	//帖子类型 : POST_TYPE 	
	private String postType; 
	//帖子状态 : POST_STATE 	
	private String postState; 
	//帖子对象 : POST_OBJECT 	
	private String postObject; 
	//创建人 : POST_CREATER 	
	private String postCreater; 
	///创建人姓名
	private String postCreaterName;
	//回复数 : POST_HUIFU_NUM 	
	private int postHuifuNum; 
	//转发数 : POST_ZHUANFA_NUM 	
	private int postZhuanfaNum; 
	//点赞数 : POST_ZAN_NUM 	
	private int postZanNum; 
	//扩展1 : EXTRA1 	组织
	private String extra1; 
	//扩展2 : EXTRA2 	
	private String extra2; 
	//扩展3 : EXTRA3 	
	private String extra3; 
	//扩展4 : EXTRA4 	
	private String extra4; 
	//扩展5 : EXTRA5 	
	private String extra5; 
	//新增时间 时间戳
	private long createTimes;
	
	//点赞状态 0.没有赞 1.有赞
	private String postInfoZanStatus;
	//是否当前登录人点过赞 0.没有赞 1.有赞
	private String postInfoUserZanStatus;
	//点赞列表
	private List<SnsPostZanLog> snsPostZanLogs;
	//帖子回复列表
	private List<PostHuifu>  postHuifus;
	
	public List<PostHuifu> getPostHuifus() {
		return postHuifus;
	}

	public void setPostHuifus(List<PostHuifu> postHuifus) {
		this.postHuifus = postHuifus;
	}

	public String getPostCreaterName() throws Exception {
		postCreater = getPostCreater();
		if(BeanUtil.isNotBlank(postCreater)){
			postCreaterName = AutoUtils.getUserName(postCreater);
		}
		return postCreaterName;
	}

	public void setPostCreaterName(String postCreaterName) {
		this.postCreaterName = postCreaterName;
	}

	public String getPostInfoZanStatus() {
		return postInfoZanStatus;
	}

	public void setPostInfoZanStatus(String postInfoZanStatus) {
		this.postInfoZanStatus = postInfoZanStatus;
	}

	public String getPostInfoUserZanStatus() {
		return postInfoUserZanStatus;
	}

	public void setPostInfoUserZanStatus(String postInfoUserZanStatus) {
		this.postInfoUserZanStatus = postInfoUserZanStatus;
	}

	public List<SnsPostZanLog> getSnsPostZanLogs() {
		return snsPostZanLogs;
	}

	public void setSnsPostZanLogs(List<SnsPostZanLog> snsPostZanLogs) {
		this.snsPostZanLogs = snsPostZanLogs;
	}

	public int getPostZanNum() {
		return postZanNum;
	}

	public void setPostZanNum(int postZanNum) {
		this.postZanNum = postZanNum;
	}

	public int getPostHuifuNum() {
		return postHuifuNum;
	}

	public void setPostHuifuNum(int postHuifuNum) {
		this.postHuifuNum = postHuifuNum;
	}

	public int getPostZhuanfaNum() {
		return postZhuanfaNum;
	}

	public void setPostZhuanfaNum(int postZhuanfaNum) {
		this.postZhuanfaNum = postZhuanfaNum;
	}

	public long getCreateTimes() {
		createTimes = getCreateTime().getTime();
		return createTimes;
	}

	public void setCreateTimes(long createTimes) {
		this.createTimes = createTimes;
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
	 * 帖子GUID : POST_GUID
	 * 
	 * @return 
	 */
	public String getPostGuid () {
		return postGuid;
	}
	
	/**
	 * 帖子GUID : POST_GUID
	 * 
	 * @return 
	 */
	public void setPostGuid (String postGuid) {
		this.postGuid = postGuid;
	}
	/**
	 * 帖子类型 : POST_TYPE
	 * 
	 * @return 
	 */
	public String getPostType () {
		return postType;
	}
	
	/**
	 * 帖子类型 : POST_TYPE
	 * 
	 * @return 
	 */
	public void setPostType (String postType) {
		this.postType = postType;
	}
	/**
	 * 帖子状态 : POST_STATE
	 * 
	 * @return 
	 */
	public String getPostState () {
		return postState;
	}
	
	/**
	 * 帖子状态 : POST_STATE
	 * 
	 * @return 
	 */
	public void setPostState (String postState) {
		this.postState = postState;
	}
	/**
	 * 帖子对象 : POST_OBJECT
	 * 
	 * @return 
	 */
	public String getPostObject () {
		return postObject;
	}
	
	/**
	 * 帖子对象 : POST_OBJECT
	 * 
	 * @return 
	 */
	public void setPostObject (String postObject) {
		this.postObject = postObject;
	}
	/**
	 * 创建人 : POST_CREATER
	 * 
	 * @return 
	 */
	public String getPostCreater () {
		return postCreater;
	}
	
	/**
	 * 创建人 : POST_CREATER
	 * 
	 * @return 
	 */
	public void setPostCreater (String postCreater) {
		this.postCreater = postCreater;
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


    public PostInfo (){
        
    }
    
    
    public String ggetRecordGuid() {
				return this.postGuid;
    }

    public void ssetRecordGuid(String recordGuid) {
				this.postGuid = recordGuid;
    }
}
