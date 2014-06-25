package com.auto.sns.knowledge.dao.impl;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.sns.knowledge.domain.KnowledgeInfo;
import com.auto.sns.knowledge.dao.IKnowledgeInfoDAO;
import com.system.util.AutoDaoPersistUtil;
import com.auto.sns.knowledge.sql.sqlid.KnowledgeInfoSqlID;
/**
 * : t_auto_sns_knowledge_info
 * 
 * 
 * @author Gen
 */
public class KnowledgeInfoDAOImpl extends AutoDaoPersistUtil implements IKnowledgeInfoDAO{

	public KnowledgeInfo insertKnowledgeInfo(KnowledgeInfo bean){
		return insert(bean, KnowledgeInfoSqlID.INSERT);
	}

	public boolean deleteKnowledgeInfo(String knowledgeGuid){
		delete(knowledgeGuid, KnowledgeInfoSqlID.DELETE);
		return true;
	}	

	public KnowledgeInfo updateKnowledgeInfo(KnowledgeInfo bean){
		return update(bean, KnowledgeInfoSqlID.UPDATE);
	}	

	public KnowledgeInfo loadKnowledgeInfo(String knowledgeGuid){
		return query(new KnowledgeInfo().getClass(), knowledgeGuid);
	}

	public List<KnowledgeInfo> queryPageList(Map<String,Object> param,Page page){
		page.setCount(countSpecial(param, KnowledgeInfoSqlID.QUERY));
		return querySpecial(param, KnowledgeInfoSqlID.QUERY, page.getFullOrderBy(), page.getOffset(), page.getLimit());
	}

	public List<KnowledgeInfo> queryList(Map<String,Object> param){
		return query(param, KnowledgeInfoSqlID.QUERY);
	}

}
