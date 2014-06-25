package com.auto.sns.core.dao;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.sns.core.domain.SnsCoreMessage;
/**
 * : t_auto_sns_core_message
 * 
 * 
 * @author Gen
 */
public interface ISnsCoreMessageDAO{
	/**
	 * @param bean
	 * @return
	 */
	SnsCoreMessage insertSnsCoreMessage(SnsCoreMessage bean);
	/**
	 * @param scmeGuid
	 * @return
	 */
	boolean deleteSnsCoreMessage(String scmeGuid);	
	/**
	 * @param bean
	 * @return
	 */
	SnsCoreMessage updateSnsCoreMessage(SnsCoreMessage bean);	
	/**
	 * @param scmeGuid
	 * @return
	 */
	SnsCoreMessage loadSnsCoreMessage(String scmeGuid);
	/**
	 * @param param
	 * @param page
	 * @return
	 */
	List<SnsCoreMessage> queryPageListSnsCoreMessage(Map<String,Object> param,Page page);

	/**
	 * @param param
	 * @return
	 */
	List<SnsCoreMessage> queryListSnsCoreMessage(Map<String,Object> param);
	
	/**
	 * @param param
	 * @return
	 */
	List<SnsCoreMessage> queryCoreMessageDialogue(Map<String,Object> param);
	
	/**
	 * @param param
	 * @return
	 */
	List<SnsCoreMessage> queryMyMessage(Map<String,Object> param);
}
