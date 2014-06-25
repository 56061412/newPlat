package com.auto.sns.core.dao;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.sns.core.domain.SnsCoreMessagePerson;
/**
 * : t_auto_sns_core_message_person
 * 
 * 
 * @author Gen
 */
public interface ISnsCoreMessagePersonDAO{
	/**
	 * @param bean
	 * @return
	 */
	SnsCoreMessagePerson insertSnsCoreMessagePerson(SnsCoreMessagePerson bean);
	/**
	 * @param scmpGuid
	 * @return
	 */
	boolean deleteSnsCoreMessagePerson(String scmpGuid);	
	
	/**
	 * 根据私信主键删除
	 * @param scmeGuid 私信主键
	 * @return
	 */
	boolean deleteSnsCoreMessagePersonByScmeGuid(String scmeGuid);
	/**
	 * @param bean
	 * @return
	 */
	SnsCoreMessagePerson updateSnsCoreMessagePerson(SnsCoreMessagePerson bean);	
	/**
	 * @param scmpGuid
	 * @return
	 */
	SnsCoreMessagePerson loadSnsCoreMessagePerson(String scmpGuid);
	/**
	 * @param param
	 * @param page
	 * @return
	 */
	List<SnsCoreMessagePerson> queryPageListSnsCoreMessagePerson(Map<String,Object> param,Page page);

	/**
	 * @param param
	 * @return
	 */
	List<SnsCoreMessagePerson> queryListSnsCoreMessagePerson(Map<String,Object> param);

}
