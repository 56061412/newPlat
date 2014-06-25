package com.auto.sns.friend.dao;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.sns.friend.domain.FriendInfo;
/**
 * : t_auto_sns_friend_info
 * 
 * 
 * @author Gen
 */
public interface IFriendInfoDAO{
	/**
	 * @param bean
	 * @return
	 */
	FriendInfo insertFriendInfo(FriendInfo bean);
	/**
	 * @param rowGuid
	 * @return
	 */
	boolean deleteFriendInfo(String rowGuid);	
	/**
	 * @param bean
	 * @return
	 */
	FriendInfo updateFriendInfo(FriendInfo bean);	
	/**
	 * @param rowGuid
	 * @return
	 */
	FriendInfo loadFriendInfo(String rowGuid);
	/**
	 * @param param
	 * @param page
	 * @return
	 */
	List<FriendInfo> queryPageList(Map<String,Object> param,Page page);

	/**
	 * @param param
	 * @return
	 */
	List<FriendInfo> queryList(Map<String,Object> param);
	/**
	 * @param param
	 * @return
	 */
	List<FriendInfo> queryListEx(Map<String,Object> param);
}
