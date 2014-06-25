package com.auto.sns.friend.service;

import java.util.List;

import com.auto.sns.friend.domain.FriendInfo;

public interface SnsFriendInfoService {
	public List<FriendInfo> getFriendListByGroupCreater(String userLabel);
	
	public FriendInfo saveFriendInfo(FriendInfo friendInfo);
	
	public void deleteFriendInfo(String rowGuid);
}
