package com.auto.sns.friend.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.auto.sns.friend.dao.SnsFriendDAOFactory;
import com.auto.sns.friend.domain.FriendInfo;
import com.auto.sns.friend.service.SnsFriendInfoService;

public class SnsFriendInfoServiceImpl implements SnsFriendInfoService {

	@Override
	public List<FriendInfo> getFriendListByGroupCreater(String userLabel) {
		if(userLabel==null){
			return null;
		}
		Map<String,Object> param = new HashMap<String, Object>();
		param.put("groupCreater", userLabel);
		return SnsFriendDAOFactory.friendInfoDAO.queryListEx(param);
	}

	@Override
	public FriendInfo saveFriendInfo(FriendInfo friendInfo) {
		return SnsFriendDAOFactory.friendInfoDAO.insertFriendInfo(friendInfo);
	}

	@Override
	public void deleteFriendInfo(String rowGuid) {
		SnsFriendDAOFactory.friendInfoDAO.deleteFriendInfo(rowGuid);		
	}

}
