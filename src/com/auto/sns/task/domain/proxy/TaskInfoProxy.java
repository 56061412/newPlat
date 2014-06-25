package com.auto.sns.task.domain.proxy;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.auto.sns.task.dao.SnsTaskDAOFactory;
import com.auto.sns.task.domain.TaskInfo;
import com.auto.sns.task.domain.TaskPerson;
import com.system.util.BeanUtil;

public class TaskInfoProxy {
	public static TaskInfo getTaskInfo(TaskInfo taskInfo){
		String taskGuid = taskInfo.getTaskGuid();
		List<TaskPerson> taskPersons = getTaskPersons(taskGuid);
		
		taskInfo.setTaskPersons(taskPersons);
		
		return taskInfo;
	}
	
	private static List<TaskPerson> getTaskPersons(String taskGuid){
		List<TaskPerson> taskPersons = new ArrayList<TaskPerson>();
		if(BeanUtil.isNotBlank(taskGuid)){
			Map<String, Object> param = new HashMap<String, Object>();
			param.put("taskGuid", taskGuid);
			
			taskPersons = SnsTaskDAOFactory.taskPersonDAO.queryList(param);
		}
		
		
		return taskPersons;
	}

}
