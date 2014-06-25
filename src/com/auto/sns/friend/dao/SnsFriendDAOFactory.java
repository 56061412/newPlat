package com.auto.sns.friend.dao;

public class SnsFriendDAOFactory {
	public static IFriendGroupDAO friendGroupDAO;
	public static IFriendInfoDAO friendInfoDAO;
	public static void setFriendGroupDAO(IFriendGroupDAO friendGroupDAO) {
		SnsFriendDAOFactory.friendGroupDAO = friendGroupDAO;
	}
	public static void setFriendInfoDAO(IFriendInfoDAO friendInfoDAO) {
		SnsFriendDAOFactory.friendInfoDAO = friendInfoDAO;
	}
	
}
