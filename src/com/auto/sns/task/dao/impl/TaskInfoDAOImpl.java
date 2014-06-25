package com.auto.sns.task.dao.impl;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.sns.task.domain.TaskInfo;
import com.auto.sns.task.dao.ITaskInfoDAO;
import com.system.util.AutoDaoPersistUtil;
import com.auto.sns.task.sql.sqlid.TaskInfoSqlID;
/**
 * : t_auto_sns_task_info
 * 
 * 
 * @author Gen
 */
public class TaskInfoDAOImpl extends AutoDaoPersistUtil implements ITaskInfoDAO{

	public TaskInfo insertTaskInfo(TaskInfo bean){
		return insert(bean, TaskInfoSqlID.INSERT);
	}

	public boolean deleteTaskInfo(String taskGuid){
		delete(taskGuid, TaskInfoSqlID.DELETE);
		return true;
	}	

	public TaskInfo updateTaskInfo(TaskInfo bean){
		return update(bean, TaskInfoSqlID.UPDATE);
	}	

	public TaskInfo loadTaskInfo(String taskGuid){
		return query(new TaskInfo().getClass(), taskGuid);
	}

	public List<TaskInfo> queryPageList(Map<String,Object> param,Page page){
		page.setCount(countSpecial(param, TaskInfoSqlID.QUERY));
		return querySpecial(param, TaskInfoSqlID.QUERY, page.getFullOrderBy(), page.getOffset(), page.getLimit());
	}

	public List<TaskInfo> queryList(Map<String,Object> param){
		return query(param, TaskInfoSqlID.QUERY);
	}

	public List<Map> queryListByPerson(Map<String, Object> param) {
		return query(param, TaskInfoSqlID.queryByPerson);
	}

}
