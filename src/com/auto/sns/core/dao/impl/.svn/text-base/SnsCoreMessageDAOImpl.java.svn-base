package com.auto.sns.core.dao.impl;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.sns.core.domain.SnsCoreMessage;
import com.auto.sns.core.dao.ISnsCoreMessageDAO;
import com.system.util.AutoDaoPersistUtil;
import com.auto.sns.core.sql.sqlid.SnsCoreMessageSqlID;
/**
 * : t_auto_sns_core_message
 * 
 * 
 * @author Gen
 */
public class SnsCoreMessageDAOImpl extends AutoDaoPersistUtil implements ISnsCoreMessageDAO{

	public SnsCoreMessage insertSnsCoreMessage(SnsCoreMessage bean){
		return insert(bean, SnsCoreMessageSqlID.INSERT);
	}

	public boolean deleteSnsCoreMessage(String scmeGuid){
		delete(scmeGuid, SnsCoreMessageSqlID.DELETE);
		return true;
	}	

	public SnsCoreMessage updateSnsCoreMessage(SnsCoreMessage bean){
		return update(bean, SnsCoreMessageSqlID.UPDATE);
	}	

	public SnsCoreMessage loadSnsCoreMessage(String scmeGuid){
		return query(new SnsCoreMessage().getClass(), scmeGuid);
	}

	public List<SnsCoreMessage> queryPageListSnsCoreMessage(Map<String,Object> param,Page page){
		page.setCount(countSpecial(param, SnsCoreMessageSqlID.QUERY));
		return querySpecial(param, SnsCoreMessageSqlID.QUERY, page.getFullOrderBy(), page.getOffset(), page.getLimit());
	}

	public List<SnsCoreMessage> queryListSnsCoreMessage(Map<String,Object> param){
		return query(param, SnsCoreMessageSqlID.QUERY);
	}

	@Override
	public List<SnsCoreMessage> queryCoreMessageDialogue(Map<String, Object> param) {
		return query(param, SnsCoreMessageSqlID.QUERY_CORE_MESSAGE_DIALOGUE);
	}
	
	@Override
	public List<SnsCoreMessage> queryMyMessage(Map<String, Object> param) {
		return query(param, SnsCoreMessageSqlID.queryMyMessage);
	}

}
