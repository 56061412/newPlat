package com.auto.sns.task.service;

import java.util.Date;
import java.util.List;
import java.util.Map;

import com.auto.sns.task.domain.TaskInfo;
import com.auto.sns.task.domain.TaskPerson;
import com.system.common.Page;

public interface SnsTaskInfoService {
	/**
	 * 新增任务
	 * @param taskInfo
	 */
	public TaskInfo saveTaskInfo(TaskInfo taskInfo) throws Exception;
	
	/**
	 * 任务列表
	 * 分页显示
	 * @param taskInfo
	 * @param page
	 * @return
	 * @throws Exception
	 */
	List<TaskInfo> queryPageListTaskInfo(TaskInfo taskInfo, Page page) throws Exception;
	
	/**
	 * 推送任务信息--推送至移动端设备
	 * @param userCode
	 * @param taskInfo
	 * @param taskPersons
	 */
	public TaskInfo saveTaskInfoAndPushMsg(String userCode, TaskInfo taskInfo,  List<TaskPerson> taskPersons) throws Exception;
	
	/**
	 * 推送任务消息（通知）至IOS
	 * @param taskInfo
	 * @return
	 */
	public boolean pushMsgToIos(TaskInfo taskInfo) throws Exception;
	
	/**
	 * 显示任务（发起）
	 * @param userLabel
	 * @return
	 */
	public List<TaskInfo> listTaskInfo(String userLabel) throws Exception;
	
	/**
	 * 显示任务（接收）
	 * @param userLabel
	 * @return
	 */
	public List<Map> listTaskInfoByPerson(String userLabel) throws Exception;
	
	/**
	 * 显示任务（接收）
	 * @param userLabel
	 * @return
	 */
	public List<Map> getTodayTaskInfoByPerson(String userLabel,Date today) throws Exception;
	
	/**
	 * 修改任务
	 * @param taskInfo
	 * @return
	 */
	public TaskInfo updateTaskInfo(TaskInfo taskInfo) throws Exception;
	
	/**
	 * 删除任务
	 * @param taskGuid
	 */
	public void deleteTaskInfo(String taskGuid) throws Exception;
	
	/**
	 * 任务详细
	 * @param taskInfo
	 * @return
	 */
	public TaskInfo queryTaskInfo(String taskGuid) throws Exception;
}
