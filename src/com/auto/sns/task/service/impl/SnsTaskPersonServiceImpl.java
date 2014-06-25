package com.auto.sns.task.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

import com.auto.sns.task.dao.SnsTaskDAOFactory;
import com.auto.sns.task.domain.TaskPerson;
import com.auto.sns.task.service.SnsTaskPersonService;

public class SnsTaskPersonServiceImpl implements SnsTaskPersonService {
	private static Logger logger = Logger.getLogger(SnsTaskPersonServiceImpl.class);
	@Override
	public void saveTaskPerson(TaskPerson taskPerson) throws Exception{
		try {
			SnsTaskDAOFactory.taskPersonDAO.insertTaskPerson(taskPerson);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	@Override
	public TaskPerson updateTaskPerson(TaskPerson taskPerson) throws Exception{
		try {
			return SnsTaskDAOFactory.taskPersonDAO.updateTaskPerson(taskPerson);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	@Override
	public List<TaskPerson> getList(String taskGuid) throws Exception {
		try {
			Map<String,Object> param = new HashMap<String, Object>();
			param.put("taskGuid", taskGuid);

			return SnsTaskDAOFactory.taskPersonDAO.queryList(param);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	@Override
	public void delete(String taskGuid) throws Exception {
		try {
			List<TaskPerson> list = getList(taskGuid);
			for (TaskPerson taskPerson : list) {
				SnsTaskDAOFactory.taskPersonDAO.deleteTaskPerson(taskPerson.getRowGuid());
			}		
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	@Override
	public TaskPerson queryTaskPerson(String rowGuid) throws Exception {
		try {
			return SnsTaskDAOFactory.taskPersonDAO.loadTaskPerson(rowGuid);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

}
