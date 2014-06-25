package com.auto.sns.post.domain.proxy;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.auto.sns.post.dao.SnsPostDAOFactory;
import com.auto.sns.post.domain.PostHuifu;
import com.auto.sns.post.domain.PostInfo;
import com.auto.sns.post.domain.SnsPostZanLog;
import com.system.util.BeanUtil;

public class PostInfoProxy {
	
	public static PostInfo getSnsPostZanLog(PostInfo postInfo, String userCode) throws IllegalArgumentException, IllegalAccessException{
		if(!BeanUtil.isObjectNull(postInfo)){
			String postGuid = postInfo.getPostGuid();
			String postZanNum = String.valueOf(postInfo.getPostZanNum());
			
			String postInfoZanStatus = getPostInfoZanStatus(postZanNum);
			postInfo.setPostInfoZanStatus(postInfoZanStatus);
			
			String postInfoUserZanStatus = getPostInfoUserZanStatus(postGuid, userCode);
			postInfo.setPostInfoUserZanStatus(postInfoUserZanStatus);
			
			List<SnsPostZanLog> snsPostZanLogs = getSnsPostZanLogs(postGuid);
			postInfo.setSnsPostZanLogs(snsPostZanLogs);
		}
		
		return postInfo;
	}
	
	public static List<PostHuifu> getPostHuifus(String postGuid) throws IllegalArgumentException, IllegalAccessException{
		List<PostHuifu>  postHuifus = new ArrayList<PostHuifu>();
		if(BeanUtil.isNotBlank(postGuid)){
			PostHuifu postHuifu = new PostHuifu();
			postHuifu.setPostGuid(postGuid);
			
			Map<String, Object> param = BeanUtil.convertBeanToMap(postHuifu);
			postHuifus = SnsPostDAOFactory.postHuifuDAO.queryList(param);
		}
			
		return postHuifus;
	}
	
	/**
	 * 获取帖子点赞状态
	 * @param postInfo
	 * @return
	 */
	public static String getPostInfoZanStatus(String postZanNum){
		String postInfoZanStatus = "0";
		if(BeanUtil.isNotBlank(postZanNum)){
			int zanNum = Integer.parseInt(postZanNum);
			if(zanNum > 0){
				postInfoZanStatus  = "1";
			}
		}
		
		return postInfoZanStatus;
	}
	
	/**
	 * 获取人员对帖子的点赞状态
	 * @param postInfo
	 * @param userCode
	 * @return
	 * @throws IllegalArgumentException
	 * @throws IllegalAccessException
	 */
	public static String getPostInfoUserZanStatus(String postGuid, String userCode) throws IllegalArgumentException, IllegalAccessException{
		String postInfoUserZanStatus = "0";
		
		if(BeanUtil.isNotBlank(postGuid) && BeanUtil.isNotBlank(userCode)){
			//查询人员是否对帖子点过赞
			SnsPostZanLog snsPostZanLog = new SnsPostZanLog();
			snsPostZanLog.setZanPostGuid(postGuid);
			snsPostZanLog.setZanUserCode(userCode);
			
			Map<String, Object> param = BeanUtil.convertBeanToMap(snsPostZanLog);
			List<SnsPostZanLog> snsPostZanLogs = SnsPostDAOFactory.snsPostZanLogDAO.queryList(param);
			if(!snsPostZanLogs.isEmpty()){
				postInfoUserZanStatus = "1";
			}
		}
		
		return postInfoUserZanStatus;
	}
	
	/**
	 * 获取帖子的点赞列表
	 * @param postInfo
	 * @return
	 * @throws IllegalArgumentException
	 * @throws IllegalAccessException
	 */
	public static List<SnsPostZanLog> getSnsPostZanLogs(String postGuid) throws IllegalArgumentException, IllegalAccessException{
		List<SnsPostZanLog> snsPostZanLogs = new ArrayList<SnsPostZanLog>();
		if(BeanUtil.isNotBlank(postGuid)){
			SnsPostZanLog snsPostZanLog = new SnsPostZanLog();
			snsPostZanLog.setZanPostGuid(postGuid);
			
			Map<String, Object> param = BeanUtil.convertBeanToMap(snsPostZanLog);
			snsPostZanLogs = SnsPostDAOFactory.snsPostZanLogDAO.queryList(param);
		}
		
		return snsPostZanLogs;
	}

}
