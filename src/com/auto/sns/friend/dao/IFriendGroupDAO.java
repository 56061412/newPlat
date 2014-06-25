package com.auto.sns.friend.dao;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.sns.friend.domain.FriendGroup;
/**
 * : t_auto_sns_friend_group
 * 
 * 
 * @author Gen
 */
public interface IFriendGroupDAO{
	/**
	 * @param bean
	 * @return
	 */
	FriendGroup insertFriendGroup(FriendGroup bean);
	/**
	 * @param groupGuid
	 * @return
	 */
	boolean deleteFriendGroup(String groupGuid);	
	/**
	 * @param bean
	 * @return
	 */
	FriendGroup updateFriendGroup(FriendGroup bean);	
	/**
	 * @param groupGuid
	 * @return
	 */
	FriendGroup loadFriendGroup(String groupGuid);
	/**
	 * @param param
	 * @param page
	 * @return
	 */
	List<FriendGroup> queryPageList(Map<String,Object> param,Page page);

	/**
	 * @param param
	 * @return
	 */
	List<FriendGroup> queryList(Map<String,Object> param);

}
