package com.auto.sns.task.service;

import java.util.List;

import com.auto.sns.task.domain.TaskPerson;

public interface SnsTaskPersonService {
	public void saveTaskPerson(TaskPerson taskPerson) throws Exception;
	
	public TaskPerson updateTaskPerson(TaskPerson taskPerson) throws Exception;
	
	public List<TaskPerson> getList(String taskGuid) throws Exception;
	
	public void delete(String taskGuid) throws Exception;
	
	/**
	 * 任务反馈详细
	 * @param taskInfo
	 * @return
	 */
	public TaskPerson queryTaskPerson(String rowGuid) throws Exception;
}
