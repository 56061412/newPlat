package com.auto.sns.task.dao;

public class SnsTaskDAOFactory {
	public static ITaskInfoDAO taskInfoDAO;
	public static ITaskPersonDAO taskPersonDAO;
	
	public static void setTaskInfoDAO(ITaskInfoDAO taskInfoDAO){
		SnsTaskDAOFactory.taskInfoDAO = taskInfoDAO;
	}
	public static void setTaskPersonDAO(ITaskPersonDAO taskPersonDAO){
		SnsTaskDAOFactory.taskPersonDAO = taskPersonDAO;
	}
}
