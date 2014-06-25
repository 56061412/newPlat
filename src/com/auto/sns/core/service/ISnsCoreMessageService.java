package com.auto.sns.core.service;

import java.util.List;

import com.auto.sns.core.domain.SnsCoreMessage;

public interface ISnsCoreMessageService {
	
	/**
	 * 查询私信列表
	 * @param snsCoreMessage
	 * @return
	 * @throws Exception
	 */
	List<SnsCoreMessage> queryListSnsCoreMessage(SnsCoreMessage snsCoreMessage) throws Exception;
	
	/**
	 * 保存或更新私信信息
	 * @param snsCoreMessage
	 * @param recUserCode
	 * @return
	 * @throws Exception
	 */
	SnsCoreMessage saveOrUpdateSnsCoreMessage(SnsCoreMessage  snsCoreMessage) throws Exception;
	
	/**
	 * 查询私信列表
	 * @param sendUserCode 发起人帐号
	 * @param recUserCode 接收人账号
	 * @return
	 * @throws Exception
	 */
	List<SnsCoreMessage> queryListSnsCoreMessage(String sendUserCode, String recUserCode) throws Exception;
	
	/**
	 * 查询私信列表
	 * 对话方式的结果集 时间正序排序
	 * @param sendUserCode 发起人帐号
	 * @param recUserCode 接收人账号
	 * @return
	 * @throws Exception
	 */
	List<SnsCoreMessage> queryCoreMessageDialogue(String sendUserCode, String recUserCode) throws Exception;
	
	/**
	 * 删除私信信息
	 * 先删除私信收信人信息
	 * 在删除私信信息
	 * @param scmeGuid
	 * @throws Exception
	 */
	void deleteSnsCoreMessageByGuid(String scmeGuid) throws Exception;
	
	/**
	 * 根据主键查询私信信息
	 * 包括私信的收信人信息
	 * @param scmeGuid
	 * @return
	 * @throws Exception
	 */
	SnsCoreMessage getSnsCoreMessageByGuid(String scmeGuid) throws Exception;

}
