package com.auto.sns.post.common;

import java.util.ArrayList;
import java.util.List;

import com.auto.sns.friend.domain.FriendInfo;
import com.auto.sns.friend.service.SnsFriendServiceFactory;
import com.auto.tools.AutoUtils;

public class PostUtil {
	/**
	 * 获取当前登录用户
	 * @return
	 */
//	public static String getUserLabel(){
//		
//		return AutoUtils.getUserCode();
//	}
	
	/**
	 * 获取用户公司
	 * @param userLabel
	 * @return
	 * @throws Exception 
	 */
	public static String getUserDept(String userLabel) throws Exception{
		
		try {
			if(AutoUtils.getUserOrgCode(userLabel)==null){
				return "notExist";
			}
		} catch (Exception e) {
			return "notExist";
		}
		return AutoUtils.getUserOrgCode(userLabel);
	}
	
	/**
	 * 获取用户好友
	 * @param userLabel
	 * @return
	 */
	public static List<String> getUserFriends(String userLabel){
		List<String> rtn = new ArrayList<String>();
		rtn.add("notExistLabel");
		List<FriendInfo> listF = SnsFriendServiceFactory.snsFriendInfoService.getFriendListByGroupCreater(userLabel);
		if(listF!=null){
			for (FriendInfo friendInfo : listF) {
				rtn.add(friendInfo.getUserCode());
			}
		}
		return rtn;
	}
}
