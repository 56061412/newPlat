package com.auto.sns.friend.action;

import java.util.List;

import javax.annotation.Resource;

import com.auto.oa.user.domain.OaUserInfo;
import com.auto.oa.user.service.IOaUserInfoService;
import com.auto.sns.friend.domain.FriendInfo;
import com.auto.sns.friend.service.SnsFriendServiceFactory;
import com.auto.sns.util.UserUtil;
import com.opensymphony.xwork2.Action;
import com.system.common.BaseAction;
import com.system.common.Page;
import com.system.util.JsonUtil;

public class SnsFriendAction extends BaseAction{
	/**
	 * 
	 */
	private static final long serialVersionUID = -3272086202790388143L;

	@Resource(name="oaUserInfoService")
	private IOaUserInfoService oaUserInfoService;
	
	/**
	 * 新增好友
	 * @throws Exception 
	 */
	public void addFriendInfo() throws Exception{
		String jsonFriendInfo = getRequest().getParameter("jsonFriendInfo");
		FriendInfo friendInfo = (FriendInfo)JsonUtil.jsonToBean(jsonFriendInfo, FriendInfo.class);
		friendInfo = getDefaultBean(friendInfo, getRequest());
		String userLabel = getSessionUserCode(getRequest());
		if(friendInfo.getGroupGuid()==null){
			friendInfo.setGroupGuid(SnsFriendServiceFactory.
					snsFriendGroupService.saveUserDefaultFriendGroup(userLabel).getGroupGuid());
		}
		SnsFriendServiceFactory.snsFriendInfoService.saveFriendInfo(friendInfo);
		
	}
	
	/**
	 * 好友列表
	 */
	public String listFriendInfo(){
		String userLabel = getSessionUserCode(getRequest());		
		List list = SnsFriendServiceFactory.snsFriendInfoService.getFriendListByGroupCreater(userLabel);
		getRequest().setAttribute("rtnList", list);
		return Action.SUCCESS;
	}
	
	/**
	 * 删除好友
	 */
	public void deleteFriendInfo(){
		String rowGuid = getRequest().getParameter("rowGuid");
		SnsFriendServiceFactory.snsFriendInfoService.deleteFriendInfo(rowGuid);
	}
	
	/**
	 * 公司成员
	 */
	public String queryOrgMember(){
		Page page = getPage();
		String userLabel = getSessionUserCode(getRequest());		
		try {
			OaUserInfo oaOrgArea = oaUserInfoService.getOaUserInfoByUserCode(userLabel);
			List<OaUserInfo> list = oaUserInfoService.queryPageListUserOrg(oaOrgArea, page);
			for (OaUserInfo oaUserInfo : list) {
				oaUserInfo.setUserHeadImagePath(UserUtil.getUserImgByUserCode(oaUserInfo.getAuserCode()));  
			}
			getRequest().setAttribute("myOrgUserList", list);
			getRequest().setAttribute("page", page);
			//pageListWriteOut(list, page);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		return Action.SUCCESS;
	}
}
