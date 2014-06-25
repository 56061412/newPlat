package com.auto.sns.post.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

import com.auto.sns.post.common.EnumPostPage;
import com.auto.sns.post.common.PostUtil;
import com.auto.sns.post.dao.SnsPostDAOFactory;
import com.auto.sns.post.domain.PostContent;
import com.auto.sns.post.domain.PostHuifu;
import com.auto.sns.post.domain.PostInfo;
import com.auto.sns.post.domain.SnsPostZanLog;
import com.auto.sns.post.domain.proxy.PostInfoProxy;
import com.auto.sns.post.service.SnsPostInfoService;
import com.auto.sns.post.service.SnsPostServiceFactory;
import com.auto.sns.util.UserUtil;
import com.auto.tools.AutoUtils;
import com.system.common.Page;
import com.system.util.BeanUtil;
import com.system.util.DateUtil;

public class SnsPostInfoServiceImpl implements SnsPostInfoService{
	private static Logger logger = Logger.getLogger(SnsPostInfoServiceImpl.class);
	
	public boolean savePostInfoAndPostContent(PostInfo postInfo, PostContent postContent) throws Exception {
		try {
			saveOrUpdatePostInfo(postInfo);
			
			SnsPostServiceFactory.snsPostContentService.saveOrUpdatePostContent(postContent);
			
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}
	
	public boolean savePostInfoAndPostContentForZhuanfa(PostInfo postInfo, PostContent postContent) throws Exception {
		try {
			String oldPostGuid = postInfo.getExtra3();
			saveOrUpdatePostInfo(postInfo);
			
			SnsPostServiceFactory.snsPostContentService.saveOrUpdatePostContent(postContent);
			
			//更新帖子转发数
			SnsPostServiceFactory.snsPostInfoService.updatePostInfoZhuanfaNum(oldPostGuid);
			
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}
	
	public boolean savePostHuiAndPostContentForHuifu(PostHuifu postHuifu, PostContent postContent) throws Exception {
		try {
			String postGuid = postHuifu.getPostGuid();
			SnsPostServiceFactory.snsPostHuifuService.saveOrUpdatePostHuifu(postHuifu);
			
			SnsPostServiceFactory.snsPostContentService.saveOrUpdatePostContent(postContent);
			
			//更新帖子转发数
			SnsPostServiceFactory.snsPostInfoService.updatePostInfoHuifuNum(postGuid);
			
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}
	
	public boolean saveDianZan(SnsPostZanLog snsPostZanLog) throws Exception {
		try {
			String postGuid = snsPostZanLog.getZanPostGuid();
			
			saveSnsPostZanLog(snsPostZanLog);
			
			//更新帖子点赞数
			updatePostInfoZanNum(postGuid);
			
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}
	
	public boolean saveOrUpdatePostInfo(PostInfo postInfo) throws Exception {
		try {
			boolean bool = true;
			
			String userLabel = postInfo.getPostCreater();
			if(postInfo.getPostCreater()==null){
				postInfo.setPostCreater(userLabel);
			}
			if(postInfo.getExtra1()==null){
				postInfo.setExtra1(PostUtil.getUserDept(userLabel));
			}
			
			SnsPostDAOFactory.postInfoDAO.insertPostInfo(postInfo);
			
			return bool;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}
	
	public boolean updatePostInfo(PostInfo postInfo) throws Exception {
		try {
			boolean bool = true;
			SnsPostDAOFactory.postInfoDAO.updatePostInfo(postInfo);
			
			return bool;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}
	
	public List<Map> listPost(Map<String,Object> param)  throws Exception{
		try {
			if(param==null){
				param = new HashMap<String,Object>();
			}
			String userLabel ="";
			if(param.containsKey("createUser")){
				userLabel = param.get("createUser").toString();
			}
			
			String postPage = (String)param.get("postPage");
			if(postPage!=null&&postPage.equals(EnumPostPage.myPage)){
				if(param.get("postCreater")==null){
					param.put("postCreater", userLabel);
				}				
			}else if(postPage!=null&&postPage.equals(EnumPostPage.comPage)){
				param.put("extra1", PostUtil.getUserDept(userLabel));
			}else if(postPage!=null&&postPage.equals(EnumPostPage.friendPage)){
				param.put("postCreaterS", PostUtil.getUserFriends(userLabel));
			}
			Page page = new Page(param);
			page.setOrder(Page.DESC);
			page.setOrderBy("A.CREATE_TIME");
			List<Map> list = SnsPostDAOFactory.postInfoDAO.listPost(param,page);
			for (Map map : list) {
				map.put("createTime", DateUtil.toDateString((Date)map.get("createTime"), DateUtil.DEFAULT_DATETIME_PATTERN));
				map.put("userImg",UserUtil.getUserImgByUserCode((String)map.get("postCreater")));
				
				String postCreater = (String)map.get("postCreater");
				String postCreaterName = "user";
				if(BeanUtil.isNotBlank(postCreater)){
					postCreaterName = AutoUtils.getUserName(postCreater);
				}
				
				String extra2 = (String)map.get("extra2");
				if(extra2==null){
					map.put("extra2", "");
				}
				
				map.put("postCreaterName", postCreaterName);
			}
			
			return list;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	@Override
	public boolean deletePostInfo(String postGuid) throws Exception {
		try {
			if(BeanUtil.isNotBlank(postGuid)){
				//帖子回复列表
				List<PostHuifu>  postHuifus = PostInfoProxy.getPostHuifus(postGuid);
				
				//删除帖子回复信息 1.删除回复的内容信息 2.删除回复信息
				for (PostHuifu postHuifu : postHuifus) {
					String huifuGuid = postHuifu.getHuifuGuid();
					
					SnsPostDAOFactory.postContentDAO.deletePostContentBySourceGuid(huifuGuid);
					
					SnsPostDAOFactory.postHuifuDAO.deletePostHuifu(huifuGuid);
				}
				
				//先删除帖子内容
				SnsPostDAOFactory.postContentDAO.deletePostContentBySourceGuid(postGuid);
				
				//删除帖子主信息
				SnsPostDAOFactory.postInfoDAO.deletePostInfo(postGuid);
			}

			return true;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	@Override
	public void updatePostInfoHuifuNum(String postGuid) throws Exception {
		try {
			SnsPostDAOFactory.postInfoDAO.updatePostInfoHuifuNum(postGuid);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	@Override
	public void updatePostInfoZhuanfaNum(String postGuid) throws Exception {
		try {
			SnsPostDAOFactory.postInfoDAO.updatePostInfoZhuanfaNum(postGuid);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}
	
	@Override
	public void updatePostInfoZanNum(String postGuid) throws Exception {
		try {
			SnsPostDAOFactory.postInfoDAO.updatePostInfoZanNum(postGuid);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	@Override
	public boolean saveSnsPostZanLog(SnsPostZanLog snsPostZanLog) throws Exception {
		boolean bool = true;
		try {
			SnsPostDAOFactory.snsPostZanLogDAO.insertSnsPostZanLog(snsPostZanLog);
			
			return bool;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	@Override
	public boolean deleteSnsPostZanLogByPostGuidAndUserCode(String postGuid, String userCode) 	throws Exception {
		try {
			boolean bool = true;
			
			SnsPostDAOFactory.snsPostZanLogDAO.deleteSnsPostZanLogByPostGuidAndUserCode(postGuid, userCode);
			
			return bool;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	@Override
	public void updatePostInfoZanNumMinus(String postGuid) throws Exception {
		try {
			SnsPostDAOFactory.postInfoDAO.updatePostInfoZanNumMinus(postGuid);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	@Override
	public SnsPostZanLog getSnsPostZanLog(String userCode, String postGuid)	throws Exception {
		try {
			SnsPostZanLog snsPostZanLog = new SnsPostZanLog();
			snsPostZanLog.setZanPostGuid(postGuid);
			snsPostZanLog.setZanUserCode(userCode);
			
			Map<String, Object> param = BeanUtil.convertBeanToMap(snsPostZanLog);
			List<SnsPostZanLog> snsPostZanLogs = SnsPostDAOFactory.snsPostZanLogDAO.queryList(param);
			if(!snsPostZanLogs.isEmpty()){
				snsPostZanLog = snsPostZanLogs.get(0);
			}
			
			return snsPostZanLog;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	@Override
	public List<PostInfo> queryPageListPostInfo(PostInfo postInfo, Page page) throws Exception {
		try {
			List<PostInfo> resultList = null;
			
			Map<String, Object> param = BeanUtil.convertBeanToMap(postInfo);
			param.put("displayOrder", "CREATE_TIME");
			resultList = SnsPostDAOFactory.postInfoDAO.queryPageList(param, page);
			
			return resultList;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

}
