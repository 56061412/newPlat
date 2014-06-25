package com.auto.sns.friend.service;

import com.auto.sns.friend.domain.FriendGroup;

public interface SnsFriendGroupService {
	
	public FriendGroup saveFriendGroup(FriendGroup friendGroup) throws Exception;
	
	public FriendGroup saveUserDefaultFriendGroup(String userLabel) throws Exception;
}
