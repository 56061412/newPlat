package com.auto.sns.core.dao.impl;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.sns.core.domain.SnsCoreMessagePerson;
import com.auto.sns.core.dao.ISnsCoreMessagePersonDAO;
import com.system.util.AutoDaoPersistUtil;
import com.auto.sns.core.sql.sqlid.SnsCoreMessagePersonSqlID;
/**
 * : t_auto_sns_core_message_person
 * 
 * 
 * @author Gen
 */
public class SnsCoreMessagePersonDAOImpl extends AutoDaoPersistUtil implements ISnsCoreMessagePersonDAO{

	public SnsCoreMessagePerson insertSnsCoreMessagePerson(SnsCoreMessagePerson bean){
		return insert(bean, SnsCoreMessagePersonSqlID.INSERT);
	}

	public boolean deleteSnsCoreMessagePerson(String scmpGuid){
		delete(scmpGuid, SnsCoreMessagePersonSqlID.DELETE);
		return true;
	}	

	public SnsCoreMessagePerson updateSnsCoreMessagePerson(SnsCoreMessagePerson bean){
		return update(bean, SnsCoreMessagePersonSqlID.UPDATE);
	}	

	public SnsCoreMessagePerson loadSnsCoreMessagePerson(String scmpGuid){
		return query(new SnsCoreMessagePerson().getClass(), scmpGuid);
	}

	public List<SnsCoreMessagePerson> queryPageListSnsCoreMessagePerson(Map<String,Object> param,Page page){
		page.setCount(countSpecial(param, SnsCoreMessagePersonSqlID.QUERY));
		return querySpecial(param, SnsCoreMessagePersonSqlID.QUERY, page.getFullOrderBy(), page.getOffset(), page.getLimit());
	}

	public List<SnsCoreMessagePerson> queryListSnsCoreMessagePerson(Map<String,Object> param){
		return query(param, SnsCoreMessagePersonSqlID.QUERY);
	}

	@Override
	public boolean deleteSnsCoreMessagePersonByScmeGuid(String scmeGuid) {
		delete(scmeGuid, SnsCoreMessagePersonSqlID.DELETE_BY_SCMEGUID);
		return true;
	}

}
