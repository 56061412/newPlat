package com.auto.sns.task.dao;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.sns.task.domain.TaskPerson;
/**
 * : t_auto_sns_task_person
 * 
 * 
 * @author Gen
 */
public interface ITaskPersonDAO{
	/**
	 * @param bean
	 * @return
	 */
	TaskPerson insertTaskPerson(TaskPerson bean);
	/**
	 * @param rowGuid
	 * @return
	 */
	boolean deleteTaskPerson(String rowGuid);	
	
	/**
	 * @param taskGuid
	 * @return
	 */
	boolean deleteTaskPersonByTaskGuid(String taskGuid);	
	
	/**
	 * @param bean
	 * @return
	 */
	TaskPerson updateTaskPerson(TaskPerson bean);	
	/**
	 * @param rowGuid
	 * @return
	 */
	TaskPerson loadTaskPerson(String rowGuid);
	/**
	 * @param param
	 * @param page
	 * @return
	 */
	List<TaskPerson> queryPageList(Map<String,Object> param,Page page);

	/**
	 * @param param
	 * @return
	 */
	List<TaskPerson> queryList(Map<String,Object> param);

}
