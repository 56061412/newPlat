package com.auto.sns.task.dao;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.sns.task.domain.TaskInfo;
/**
 * : t_auto_sns_task_info
 * 
 * 
 * @author Gen
 */
public interface ITaskInfoDAO{
	/**
	 * @param bean
	 * @return
	 */
	TaskInfo insertTaskInfo(TaskInfo bean);
	/**
	 * @param taskGuid
	 * @return
	 */
	boolean deleteTaskInfo(String taskGuid);	
	/**
	 * @param bean
	 * @return
	 */
	TaskInfo updateTaskInfo(TaskInfo bean);	
	/**
	 * @param taskGuid
	 * @return
	 */
	TaskInfo loadTaskInfo(String taskGuid);
	/**
	 * @param param
	 * @param page
	 * @return
	 */
	List<TaskInfo> queryPageList(Map<String,Object> param,Page page);

	/**
	 * @param param
	 * @return
	 */
	List<TaskInfo> queryList(Map<String,Object> param);

	
	/**
	 * @param param
	 * @return
	 */
	List<Map> queryListByPerson(Map<String,Object> param);
}
