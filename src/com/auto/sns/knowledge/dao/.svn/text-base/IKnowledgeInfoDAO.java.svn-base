package com.auto.sns.knowledge.dao;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.sns.knowledge.domain.KnowledgeInfo;
/**
 * : t_auto_sns_knowledge_info
 * 
 * 
 * @author Gen
 */
public interface IKnowledgeInfoDAO{
	/**
	 * @param bean
	 * @return
	 */
	KnowledgeInfo insertKnowledgeInfo(KnowledgeInfo bean);
	/**
	 * @param knowledgeGuid
	 * @return
	 */
	boolean deleteKnowledgeInfo(String knowledgeGuid);	
	/**
	 * @param bean
	 * @return
	 */
	KnowledgeInfo updateKnowledgeInfo(KnowledgeInfo bean);	
	/**
	 * @param knowledgeGuid
	 * @return
	 */
	KnowledgeInfo loadKnowledgeInfo(String knowledgeGuid);
	/**
	 * @param param
	 * @param page
	 * @return
	 */
	List<KnowledgeInfo> queryPageList(Map<String,Object> param,Page page);

	/**
	 * @param param
	 * @return
	 */
	List<KnowledgeInfo> queryList(Map<String,Object> param);

}
