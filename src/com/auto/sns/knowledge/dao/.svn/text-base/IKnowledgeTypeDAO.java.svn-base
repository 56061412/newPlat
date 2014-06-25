package com.auto.sns.knowledge.dao;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.sns.knowledge.domain.KnowledgeType;
/**
 * : t_auto_sns_knowledge_type
 * 
 * 
 * @author Gen
 */
public interface IKnowledgeTypeDAO{
	/**
	 * @param bean
	 * @return
	 */
	KnowledgeType insertKnowledgeType(KnowledgeType bean);
	/**
	 * @param typeGuid
	 * @return
	 */
	boolean deleteKnowledgeType(String typeGuid);	
	/**
	 * @param bean
	 * @return
	 */
	KnowledgeType updateKnowledgeType(KnowledgeType bean);	
	/**
	 * @param typeGuid
	 * @return
	 */
	KnowledgeType loadKnowledgeType(String typeGuid);
	/**
	 * @param param
	 * @param page
	 * @return
	 */
	List<KnowledgeType> queryPageList(Map<String,Object> param,Page page);

	/**
	 * @param param
	 * @return
	 */
	List<KnowledgeType> queryList(Map<String,Object> param);

}
