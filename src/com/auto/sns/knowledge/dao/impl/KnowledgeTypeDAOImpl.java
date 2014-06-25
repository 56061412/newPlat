package com.auto.sns.knowledge.dao.impl;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.sns.knowledge.domain.KnowledgeType;
import com.auto.sns.knowledge.dao.IKnowledgeTypeDAO;
import com.system.util.AutoDaoPersistUtil;
import com.auto.sns.knowledge.sql.sqlid.KnowledgeTypeSqlID;
/**
 * : t_auto_sns_knowledge_type
 * 
 * 
 * @author Gen
 */
public class KnowledgeTypeDAOImpl extends AutoDaoPersistUtil implements IKnowledgeTypeDAO{

	public KnowledgeType insertKnowledgeType(KnowledgeType bean){
		return insert(bean, KnowledgeTypeSqlID.INSERT);
	}

	public boolean deleteKnowledgeType(String typeGuid){
		delete(typeGuid, KnowledgeTypeSqlID.DELETE);
		return true;
	}	

	public KnowledgeType updateKnowledgeType(KnowledgeType bean){
		return update(bean, KnowledgeTypeSqlID.UPDATE);
	}	

	public KnowledgeType loadKnowledgeType(String typeGuid){
		return query(new KnowledgeType().getClass(), typeGuid);
	}

	public List<KnowledgeType> queryPageList(Map<String,Object> param,Page page){
		page.setCount(countSpecial(param, KnowledgeTypeSqlID.QUERY));
		return querySpecial(param, KnowledgeTypeSqlID.QUERY, page.getFullOrderBy(), page.getOffset(), page.getLimit());
	}

	public List<KnowledgeType> queryList(Map<String,Object> param){
		return query(param, KnowledgeTypeSqlID.QUERY);
	}

}
