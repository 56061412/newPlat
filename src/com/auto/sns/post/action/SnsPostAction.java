package com.auto.sns.post.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import net.sf.json.JSONObject;

import com.auto.oa.user.domain.OaUserLogin;
import com.auto.oa.user.service.IOaUserInfoService;
import com.auto.sns.core.dao.ISnsCoreMessageDAO;
import com.auto.sns.core.domain.SnsCoreMessage;
import com.auto.sns.core.service.ISnsCoreMessageService;
import com.auto.sns.post.dao.SnsPostDAOFactory;
import com.auto.sns.post.domain.PostContent;
import com.auto.sns.post.domain.PostHuifu;
import com.auto.sns.post.domain.PostInfo;
import com.auto.sns.post.service.SnsPostServiceFactory;
import com.auto.sns.util.UserUtil;
import com.opensymphony.xwork2.Action;
import com.system.common.BaseAction;
import com.system.common.Page;
import com.system.util.DateUtil;
import com.system.util.DomainUtil;
import com.system.util.GuidUtil;
import com.system.util.JsonUtil;

/**
 * 帖子action
 * @author 
 *
 */
public class SnsPostAction extends BaseAction {
	
	@Resource(name="oaUserInfoService")
	private IOaUserInfoService oaUserInfoService;
	@Resource(name="snsCoreMessageDAO")
	private ISnsCoreMessageDAO snsCoreMessageDAO;
	@Resource(name="snsCoreMessageService")
	private ISnsCoreMessageService snsCoreMessageService;
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -6528727880343491529L;

	/**
	 * 新增帖子
	 * @throws Exception 
	 */
	public void saveOrUpdateSnsPost() throws Exception{
		String userCode = getSessionUserCode(getRequest());
		String data = getRequest().getParameter("submitData");
		PostInfo postInfo = (PostInfo)JsonUtil.jsonToBean(data, PostInfo.class);//帖子
		String postGuid = GuidUtil.newGuid();
		postInfo.setPostGuid(postGuid);
		postInfo = getDefaultBean(postInfo, getRequest());
		
		PostContent postContent = (PostContent)JsonUtil.jsonToBean(data, PostContent.class);//帖子内容
		postContent = getDefaultBean(postContent, getRequest());
		postContent.setSourceGuid(postGuid);
		postInfo.setPostCreater(userCode);
		
		SnsPostServiceFactory.snsPostInfoService.saveOrUpdatePostInfo(postInfo);
		SnsPostServiceFactory.snsPostContentService.saveOrUpdatePostContent(postContent);
	}
	
	/**
	 * 删除帖子
	 * @throws Exception 
	 */
	public void deletePost() throws Exception{
		String postGuid = getRequest().getParameter("postGuid");
		SnsPostServiceFactory.snsPostInfoService.deletePostInfo(postGuid);
	}
	
	/**
	 * 新增回复
	 * @throws Exception 
	 */
	public void addSnsPostHuifu() throws Exception{
		String userCode = getSessionUserCode(getRequest());
		String postGuid = getRequest().getParameter("postGuid");
		String tieContent = getRequest().getParameter("tieContent");
		
		PostHuifu huifu = new PostHuifu();
		String huifuGuid = GuidUtil.newGuid();
		huifu.setHuifuGuid(huifuGuid);
		huifu.setPostGuid(postGuid);
		huifu.setPostCreater(userCode);
		huifu = getDefaultBean(huifu, getRequest());
		SnsPostServiceFactory.snsPostHuifuService.saveOrUpdatePostHuifu(huifu);
		
		PostContent postContent = new PostContent();
		postContent.setSourceGuid(huifuGuid);	
		postContent.setTieContent(tieContent);
		postContent = getDefaultBean(postContent, getRequest());
		SnsPostServiceFactory.snsPostContentService.saveOrUpdatePostContent(postContent);
	}
	
	/**
	 * 帖子列表
	 * @throws Exception 
	 */
	public String listSnsPost() throws Exception{
		String postType = getRequest().getParameter("postType");
		String postPage = getRequest().getParameter("postPage");
		String offset = getRequest().getParameter("offset");
		
		Map<String,Object> param = new HashMap<String, Object>();
		param.put("postType", postType);
		param.put("postPage", postPage);
		param.put("offset", offset);
		List list = SnsPostServiceFactory.snsPostInfoService.listPost(param);
		getRequest().setAttribute("rtnList", list);
		return Action.SUCCESS;
	}
	
	/**
	 * 
	 * 回复列表
	 * @throws Exception 
	 */
	public String listSnsPostHuifu() throws Exception{
		String postGuid = getRequest().getParameter("postGuid");
		List list = SnsPostServiceFactory.snsPostHuifuService.listPostHuifu(postGuid);
		getRequest().setAttribute("rtnList", list);
		return Action.SUCCESS;
	}
	
	/**
	 * 
	 * 签到
	 * @throws Exception 
	 */
	public void signIn() throws Exception{
		String userCode = getSessionUserCode(getRequest());
		OaUserLogin oaUserLogin = new OaUserLogin();
		oaUserLogin.setAuloUserCode(userCode);
		
		oaUserLogin.setCreateUser(userCode);
		oaUserLogin.setUpdateUser(userCode);
		oaUserLogin = oaUserInfoService.saveOrUpdateOaUserLogin(oaUserLogin);
	}
	
	/**
	 * 
	 * 推荐
	 * @throws Exception 
	 */
	public void tuijian() throws Exception{
		String postGuid = getRequest().getParameter("postGuid");
		SnsPostServiceFactory.snsPostInfoService.updatePostInfoHuifuNum(postGuid);
	}
	
	/**
	 * 
	 * 收藏
	 * @throws Exception 
	 */
	public void shoucang() throws Exception{
		String postGuid = getRequest().getParameter("postGuid");		
		SnsPostServiceFactory.snsPostInfoService.updatePostInfoZanNum(postGuid);
	}
		
	/**
	 * 帖子列表(推荐),推荐最多的
	 * 
	 * @throws Exception 
	 */
	public String listSnsTuiPost() throws Exception{
		String offset = getRequest().getParameter("offset");
		
		Map<String,Object> param = new HashMap<String, Object>();
		
		param.put("postType", "topic");
		param.put("postObject", "all");
		param.put("offset", offset);
		
		Page page = new Page(param);
		page.setOrder(Page.DESC);
		page.setOrderBy("A.POST_HUIFU_NUM");
		List<Map> list = SnsPostDAOFactory.postInfoDAO.listPost(param,page);
		
		getRequest().setAttribute("rtnList", list);
		return Action.SUCCESS;
	}
	
	/**
	 * 帖子列表(收藏)，点赞做多的
	 * @throws Exception 
	 */
	public String listSnsShouPost() throws Exception{
		String offset = getRequest().getParameter("offset");
		
		Map<String,Object> param = new HashMap<String, Object>();
		param.put("postType", "topic");
		param.put("postObject", "all");
		param.put("offset", offset);
		
		Page page = new Page(param);
		page.setOrder(Page.DESC);
		page.setOrderBy("A.POST_ZAN_NUM");
		List<Map> list = SnsPostDAOFactory.postInfoDAO.listPost(param,page);
		
		getRequest().setAttribute("rtnList", list);
		return Action.SUCCESS;
	}
	
	
	/**
	 * 
	 * 新增私信
	 * @throws Exception 
	 */
	public void addMessageInfo() throws Exception{
		String userCode = getSessionUserCode(getRequest());
		String json = getRequest().getParameter("jsonMessageInfo");
		JSONObject jsonObject = JSONObject.fromObject(json);
		String scmeContent = jsonObject.getString("content");
		String messagePersonS = jsonObject.getString("messagePersonS");
		try {
			if(messagePersonS!=null){	
				String[] ps = messagePersonS.split(",");
				for (int i = 0; i < ps.length; i++) {
					SnsCoreMessage snsCoreMessage = new SnsCoreMessage();
					snsCoreMessage.setScmeDate(new Date());
					snsCoreMessage.setScmeParentGuid(null);
					snsCoreMessage.setScmeRecPerson(ps[i]);
					snsCoreMessage.setScmePerson(userCode);
					snsCoreMessage.setScmeContent(scmeContent);
					snsCoreMessageService.saveOrUpdateSnsCoreMessage(snsCoreMessage);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 
	 * 私信列表
	 * @throws Exception 
	 */
	public String listMessageInfo() throws Exception{
		String userCode = getSessionUserCode(getRequest());
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("scmeRecPerson", userCode);
		param.put("displayOrder", " CREATE_TIME DESC");
		
		List<SnsCoreMessage> snsCoreMessages = snsCoreMessageDAO.queryListSnsCoreMessage(param);
		List rtnList = new ArrayList();
		for (SnsCoreMessage snsCoreMessage : snsCoreMessages) {
			Map data = DomainUtil.DomainToMap(snsCoreMessage);
			String scmePerson = (String)data.get("scmePerson");
			data.put("userImg", UserUtil.getUserImgByUserCode(scmePerson));
			data.put("createTime", DateUtil.toDateString(snsCoreMessage.getCreateTime(), DateUtil.DEFAULT_DATEMIN_PATTERN));
			String scmePersonName = UserUtil.getUserName(userCode);
			data.put("scmePersonName", scmePersonName);
			rtnList.add(data);
		}
		getRequest().setAttribute("rtnList", rtnList);
		return Action.SUCCESS;
	}
}