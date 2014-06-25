package com.auto.sns.task.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;

import com.auto.oa.user.dao.IOaUserInfoDAO;
import com.auto.oa.user.domain.OaUserInfo;
import com.auto.sns.task.cons.TaskConstant;
import com.auto.sns.task.dao.SnsTaskDAOFactory;
import com.auto.sns.task.domain.TaskInfo;
import com.auto.sns.task.domain.TaskPerson;
import com.auto.sns.task.domain.proxy.TaskInfoProxy;
import com.auto.sns.task.service.SnsTaskInfoService;
import com.auto.sns.task.service.SnsTaskServiceFactory;
import com.iospush.sample.IosPushNotificationSample;
import com.system.common.Page;
import com.system.util.BeanUtil;
import com.system.util.DateUtil;
import com.system.util.GuidUtil;

public class SnsTaskInfoServiceImpl implements SnsTaskInfoService {
	private static Logger logger = Logger.getLogger(SnsTaskInfoServiceImpl.class);
	@Resource(name="oaUserInfoDAO")
	private IOaUserInfoDAO oaUserInfoDAO;

	@Override
	public TaskInfo saveTaskInfo(TaskInfo taskInfo) throws Exception {
		try {
			return SnsTaskDAOFactory.taskInfoDAO.insertTaskInfo(taskInfo);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}
	
	@Override
	public TaskInfo saveTaskInfoAndPushMsg(String userCode, TaskInfo taskInfo, List<TaskPerson> taskPersons) throws Exception {
		try {
			String taskGuid = taskInfo.getTaskGuid();
			if(BeanUtil.isBlank(taskGuid)){
				taskGuid = GuidUtil.newGuid();
				taskInfo.setTaskGuid(taskGuid);
				//保存任务 新增任务
				saveTaskInfo(taskInfo);
				//保存任务接收人
				for (TaskPerson taskPerson : taskPersons) {
					taskPerson.setCreateUser(userCode);
					taskPerson.setModifyUser(userCode);
					taskPerson.setTaskGuid(taskGuid);
					taskPerson.setTaskStatus("0");
					SnsTaskServiceFactory.snsTaskPersonService.saveTaskPerson(taskPerson);
				}
			}else{
				//修改任务
				updateTaskInfo(taskInfo);
				
				SnsTaskServiceFactory.snsTaskPersonService.delete(taskGuid);
				for (TaskPerson taskPerson : taskPersons) {
					taskPerson.setCreateUser(userCode);
					taskPerson.setModifyUser(userCode);
					taskPerson.setTaskGuid(taskGuid);
					taskPerson.setTaskStatus("0");
					SnsTaskServiceFactory.snsTaskPersonService.saveTaskPerson(taskPerson);
				}
			}
			//推送任务消息
			SnsTaskServiceFactory.snsTaskInfoService.pushMsgToIos(taskInfo);
			
			return taskInfo;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	@Override
	public List<TaskInfo> listTaskInfo(String userLabel) throws Exception {
		try {
			Map<String,Object> param = new HashMap<String, Object>();
			param.put("publishPerson", userLabel);
			param.put("displayOrder", " CREATE_TIME DESC");

			return SnsTaskDAOFactory.taskInfoDAO.queryList(param);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	@Override
	public TaskInfo updateTaskInfo(TaskInfo taskInfo) throws Exception {
		try {
			return SnsTaskDAOFactory.taskInfoDAO.updateTaskInfo(taskInfo);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	@Override
	public void deleteTaskInfo(String taskGuid) throws Exception {
		try {
			//先删除任务接收人信息
			SnsTaskDAOFactory.taskPersonDAO.deleteTaskPersonByTaskGuid(taskGuid);
			//再删除任务主信息
			SnsTaskDAOFactory.taskInfoDAO.deleteTaskInfo(taskGuid);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	@Override
	public TaskInfo queryTaskInfo(String taskGuid) throws Exception {
		try {
			return SnsTaskDAOFactory.taskInfoDAO.loadTaskInfo(taskGuid);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	@Override
	public List<Map> listTaskInfoByPerson(String userLabel) throws Exception {
		try {
			Map<String,Object> param = new HashMap<String, Object>();
			param.put("taskPerson", userLabel);
			param.put("displayOrder", " A.CREATE_TIME DESC");

			return SnsTaskDAOFactory.taskInfoDAO.queryListByPerson(param);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	@Override
	public List<Map> getTodayTaskInfoByPerson(String userLabel, Date today) throws Exception {
		try {
			String todayString = DateUtil.toDateString(today, DateUtil.DEFAULT_DATE_PATTERN);
			Map<String,Object> param = new HashMap<String, Object>();
			param.put("taskPerson", userLabel);
			param.put("today", todayString);

			return SnsTaskDAOFactory.taskInfoDAO.queryListByPerson(param);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	@Override
	public boolean pushMsgToIos(TaskInfo taskInfo) throws Exception {
		try {
			boolean bool = false;
			if(!BeanUtil.isObjectNull(taskInfo)){
				taskInfo = TaskInfoProxy.getTaskInfo(taskInfo);
				List<TaskPerson> taskPersons = taskInfo.getTaskPersons();
				for (TaskPerson taskPerson : taskPersons) {
					String taskPersonCode = taskPerson.getTaskPerson();
					taskPerson.setTaskPushStatus(TaskConstant.TASK_PUSH_STATUS_UNDO);
					if(BeanUtil.isNotBlank(taskPersonCode)){
						OaUserInfo oaUserInfo = oaUserInfoDAO.loadOaUserInfoByUserCode(taskPersonCode);
						String auserMobileChannelId = "";
						String auserMobileUserId = "";
						if(!BeanUtil.isObjectNull(oaUserInfo)){
							auserMobileChannelId = oaUserInfo.getAuserMobileChannelId();
							auserMobileUserId = oaUserInfo.getAuserMobileUserId();
						}
						//若用户的手机端channelId 或  userId 为空 不推送消息并且修改推送状态
						if(BeanUtil.isBlank(auserMobileChannelId) || BeanUtil.isBlank(auserMobileUserId)){
							taskPerson.setTaskPushStatus(TaskConstant.TASK_PUSH_STATUS_NO_MOBILE);
						}else if("(null)".equals(auserMobileChannelId) || "(null)".equals(auserMobileUserId)){
							taskPerson.setTaskPushStatus(TaskConstant.TASK_PUSH_STATUS_NO_MOBILE);
						}else{
							String publishUserName = taskInfo.getPublishPersonName();
							String taskName = taskInfo.getTaskName();
							String pushMsg = publishUserName + " 发送了"+ taskName + " 任务，请查阅";
							//推送消息至IOS
							bool = IosPushNotificationSample.pushIosInformation(auserMobileChannelId, auserMobileUserId, pushMsg, taskPersonCode);
							System.out.println("推送消息。。内容。。。"+pushMsg);
							//推送成功
							if(bool){
								taskPerson.setTaskPushStatus(TaskConstant.TASK_PUSH_STATUS_SUCCESS);
							}else{//推送失败
								taskPerson.setTaskPushStatus(TaskConstant.TASK_PUSH_STATUS_FAIL);
							}
							
							//更新任务推送状态
							SnsTaskDAOFactory.taskPersonDAO.updateTaskPerson(taskPerson);
						}
						
					}
				}
			}
			
			return bool;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	@Override
	public List<TaskInfo> queryPageListTaskInfo(TaskInfo taskInfo, Page page) throws Exception {
		try {
			Map<String, Object> param = BeanUtil.convertBeanToMap(taskInfo);
			param.put("displayOrder", "CREATE_TIME");
			List<TaskInfo> resultList = SnsTaskDAOFactory.taskInfoDAO.queryPageList(param, page);
			
			return resultList;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

}
