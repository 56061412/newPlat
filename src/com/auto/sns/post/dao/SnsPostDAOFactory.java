package com.auto.sns.post.dao;

public class SnsPostDAOFactory {
	public static IPostContentDAO postContentDAO;
	public static IPostInfoDAO postInfoDAO;
	public static IPostHuifuDAO postHuifuDAO;
	public static ISnsPostZanLogDAO snsPostZanLogDAO;
	
	public static void setPostContentDAO(IPostContentDAO postContentDAO){
		SnsPostDAOFactory.postContentDAO = postContentDAO;
	}
	public static void setPostInfoDAO(IPostInfoDAO postInfoDAO){
		SnsPostDAOFactory.postInfoDAO = postInfoDAO;
	}
	public static void setPostHuifuDAO(IPostHuifuDAO postHuifuDAO){
		SnsPostDAOFactory.postHuifuDAO = postHuifuDAO;
	}
	public static void setSnsPostZanLogDAO(ISnsPostZanLogDAO snsPostZanLogDAO) {
		SnsPostDAOFactory.snsPostZanLogDAO = snsPostZanLogDAO;
	}
	
}
