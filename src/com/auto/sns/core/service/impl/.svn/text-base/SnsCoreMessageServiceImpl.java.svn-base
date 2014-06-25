package com.auto.sns.core.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.auto.sns.core.dao.ISnsCoreMessageDAO;
import com.auto.sns.core.dao.ISnsCoreMessagePersonDAO;
import com.auto.sns.core.domain.SnsCoreMessage;
import com.auto.sns.core.service.ISnsCoreMessageService;
import com.system.util.BeanUtil;

@Service("snsCoreMessageService")
public class SnsCoreMessageServiceImpl implements ISnsCoreMessageService{
	private static Logger logger = Logger.getLogger(SnsCoreMessageServiceImpl.class);
	@Resource(name="snsCoreMessageDAO")
	private ISnsCoreMessageDAO snsCoreMessageDAO;
	@Resource(name="snsCoreMessagePersonDAO")
	private ISnsCoreMessagePersonDAO snsCoreMessagePersonDAO;

	@Override
	public List<SnsCoreMessage> queryListSnsCoreMessage(SnsCoreMessage snsCoreMessage) throws Exception {
		try {
			Map<String, Object> param = BeanUtil.convertBeanToMap(snsCoreMessage);
			param.put("displayOrder", "CREATE_TIME ASC");
			List<SnsCoreMessage> snsCoreMessages = snsCoreMessageDAO.queryListSnsCoreMessage(param);
			
			return snsCoreMessages;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}
	
	@Override
	public SnsCoreMessage saveOrUpdateSnsCoreMessage(	SnsCoreMessage snsCoreMessage) throws Exception {
		try {
			if(BeanUtil.isObjectNotNull(snsCoreMessage)){
				if(BeanUtil.isBlank(snsCoreMessage.getScmeGuid())){
					snsCoreMessageDAO.insertSnsCoreMessage(snsCoreMessage);
				}else{
					snsCoreMessageDAO.updateSnsCoreMessage(snsCoreMessage);
				}
			}
			
			return snsCoreMessage;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	@Override
	public void deleteSnsCoreMessageByGuid(String scmeGuid) throws Exception {
		try {
			if(BeanUtil.isNotBlank(scmeGuid)){
				//先删除私信收信人信息
				snsCoreMessagePersonDAO.deleteSnsCoreMessagePersonByScmeGuid(scmeGuid);
				//再删除私信信息
				snsCoreMessageDAO.deleteSnsCoreMessage(scmeGuid);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	@Override
	public SnsCoreMessage getSnsCoreMessageByGuid(String scmeGuid) 	throws Exception {
		try {
			SnsCoreMessage snsCoreMessage = null;
			if(BeanUtil.isNotBlank(scmeGuid)){
				snsCoreMessage = snsCoreMessageDAO.loadSnsCoreMessage(scmeGuid);
				//获取私信收信人信息
//				snsCoreMessage = SnsCoreMessageProxy.getSnsCoreMessage(snsCoreMessage);
			}
			
			return snsCoreMessage;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	@Override
	public List<SnsCoreMessage> queryListSnsCoreMessage(String sendUserCode, String recUserCode) throws Exception {
		try {
			SnsCoreMessage snsCoreMessage = new SnsCoreMessage();
			snsCoreMessage.setScmePerson(sendUserCode);
			snsCoreMessage.setScmeRecPerson(recUserCode);
			
			Map<String, Object> param = BeanUtil.convertBeanToMap(snsCoreMessage);
			param.put("displayOrder", "CREATE_TIME ASC");
			List<SnsCoreMessage> snsCoreMessages = snsCoreMessageDAO.queryListSnsCoreMessage(param);
			
			return snsCoreMessages;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	@Override
	public List<SnsCoreMessage> queryCoreMessageDialogue(String sendUserCode, String recUserCode) throws Exception {
		try {
			SnsCoreMessage snsCoreMessage = new SnsCoreMessage();
			snsCoreMessage.setScmePerson(sendUserCode);
			snsCoreMessage.setScmeRecPerson(recUserCode);
			
			Map<String, Object> param = BeanUtil.convertBeanToMap(snsCoreMessage);
			List<SnsCoreMessage> snsCoreMessages = snsCoreMessageDAO.queryCoreMessageDialogue(param);
			
			return snsCoreMessages;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

}
