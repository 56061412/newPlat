package com.auto.sns.task.dao.impl;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.sns.task.domain.TaskPerson;
import com.auto.sns.task.dao.ITaskPersonDAO;
import com.system.util.AutoDaoPersistUtil;
import com.auto.sns.task.sql.sqlid.TaskPersonSqlID;
/**
 * : t_auto_sns_task_person
 * 
 * 
 * @author Gen
 */
public class TaskPersonDAOImpl extends AutoDaoPersistUtil implements ITaskPersonDAO{

	public TaskPerson insertTaskPerson(TaskPerson bean){
		return insert(bean, TaskPersonSqlID.INSERT);
	}

	public boolean deleteTaskPerson(String rowGuid){
		delete(rowGuid, TaskPersonSqlID.DELETE);
		return true;
	}	
	
	public boolean deleteTaskPersonByTaskGuid(String taskGuid){
		delete(taskGuid, TaskPersonSqlID.DELETE_BY_TASKGUID);
		return true;
	}

	public TaskPerson updateTaskPerson(TaskPerson bean){
		return update(bean, TaskPersonSqlID.UPDATE);
	}	

	public TaskPerson loadTaskPerson(String rowGuid){
		return query(new TaskPerson().getClass(), rowGuid);
	}

	public List<TaskPerson> queryPageList(Map<String,Object> param,Page page){
		page.setCount(countSpecial(param, TaskPersonSqlID.QUERY));
		return querySpecial(param, TaskPersonSqlID.QUERY, page.getFullOrderBy(), page.getOffset(), page.getLimit());
	}

	public List<TaskPerson> queryList(Map<String,Object> param){
		return query(param, TaskPersonSqlID.QUERY);
	}

}
