package com.auto.sns.friend.service.impl;

import org.apache.log4j.Logger;

import com.auto.sns.friend.dao.SnsFriendDAOFactory;
import com.auto.sns.friend.domain.FriendGroup;
import com.auto.sns.friend.service.SnsFriendGroupService;

public class SnsFriendGroupServiceImpl implements SnsFriendGroupService {
	private static Logger logger = Logger.getLogger(SnsFriendGroupServiceImpl.class);
	@Override
	public FriendGroup saveFriendGroup(FriendGroup friendGroup) throws Exception {
		try {
			return SnsFriendDAOFactory.friendGroupDAO.insertFriendGroup(friendGroup);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	@Override
	public FriendGroup saveUserDefaultFriendGroup(String userLabel) throws Exception {
		try {
			FriendGroup friendGroup = SnsFriendDAOFactory.friendGroupDAO.loadFriendGroup("defaultFriendGroup-"+userLabel);
			if(friendGroup==null){
				friendGroup = new FriendGroup();
				friendGroup.setGroupGuid("defaultFriendGroup-"+userLabel);
				friendGroup.setGroupName("我的好友");
				friendGroup.setGroupCreater(userLabel);
				return SnsFriendDAOFactory.friendGroupDAO.insertFriendGroup(friendGroup);
			}
			
			return friendGroup;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}
	
}
