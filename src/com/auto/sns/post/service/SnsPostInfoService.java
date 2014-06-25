package com.auto.sns.post.service;

import java.util.List;
import java.util.Map;

import com.auto.oa.user.domain.OaUserInfo;
import com.auto.sns.post.domain.PostContent;
import com.auto.sns.post.domain.PostHuifu;
import com.auto.sns.post.domain.PostInfo;
import com.auto.sns.post.domain.SnsPostZanLog;
import com.system.common.Page;

public interface SnsPostInfoService {
	
	public boolean savePostInfoAndPostContent(PostInfo postInfo, PostContent postContent) throws Exception;
	
	public boolean savePostInfoAndPostContentForZhuanfa(PostInfo postInfo, PostContent postContent) throws Exception;
	
	public boolean savePostHuiAndPostContentForHuifu(PostHuifu postHuifu, PostContent postContent) throws Exception;
	
	public boolean saveDianZan(SnsPostZanLog snsPostZanLog) throws Exception;
	
	/**
	 * 后台管理使用
	 * 发帖列表--分页
	 * @param param
	 * @return
	 * @throws Exception
	 */
	List<PostInfo> queryPageListPostInfo(PostInfo postInfo, Page page) throws Exception;
	
	/**
	 * 保存帖子信息
	 * @param snsCoreActivity
	 * @return
	 * @throws Exception
	 */
	boolean saveOrUpdatePostInfo(PostInfo postInfo) throws Exception;
	
	/**
	 * 修改帖子信息
	 * @param snsCoreActivity
	 * @return
	 * @throws Exception
	 */
	boolean updatePostInfo(PostInfo postInfo) throws Exception;
	
	/**
	 * 保存帖子点赞信息
	 * @param snsPostZanLog
	 * @return
	 * @throws Exception
	 */
	boolean saveSnsPostZanLog(SnsPostZanLog snsPostZanLog) throws Exception;
	
	/**
	 * 查询点赞记录--唯一
	 * @param userCode 用户账号
	 * @param postGuid 帖子主键
	 * @return
	 * @throws Exception
	 */
	SnsPostZanLog getSnsPostZanLog(String userCode, String postGuid)throws Exception;
	
	/**
	 * 删除赞
	 * @param snsPostZanLog
	 * @return
	 * @throws Exception
	 */
	boolean deleteSnsPostZanLogByPostGuidAndUserCode(String postGuid, String userCode) throws Exception;
	
	/**
	 * 删除帖子信息
	 * @param postGuid
	 * @return
	 * @throws Exception
	 */
	boolean deletePostInfo(String postGuid) throws Exception;

	/**
	 * 帖子信息
	 * @param param
	 * @return
	 * @throws Exception
	 */
	List<Map> listPost(Map<String,Object> param) throws Exception;
	
	/**
	 * 更新帖子回复数 自动加1
	 * @param postGuid
	 * @return
	 */
	void updatePostInfoHuifuNum(String postGuid) throws Exception;	
	
	/**
	 * 更新帖子转发数 自动加1
	 * @param postGuid
	 * @return
	 */
	void updatePostInfoZhuanfaNum(String postGuid) throws Exception;
	
	/**
	 * 更新帖子点赞数 自动加1
	 * @param postGuid
	 * @return
	 */
	void updatePostInfoZanNum(String postGuid) throws Exception;
	
	/**
	 * 更新帖子点赞数 自动减1
	 * @param postGuid
	 * @return
	 */
	void updatePostInfoZanNumMinus(String postGuid) throws Exception;
}
