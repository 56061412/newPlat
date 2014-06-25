package com.auto.sns.knowledge.sql.sqlid;

import com.auto.sns.knowledge.domain.KnowledgeType;
import com.system.common.SqlID;

/**
 * : t_auto_sns_knowledge_type
 * 
 * 
 * @author Gen
 */
public interface KnowledgeTypeSqlID{
	String NAME_SPACE = KnowledgeType.class.getName();	
	SqlID QUERY = new SqlID(NAME_SPACE,"query");
	SqlID LOAD = new SqlID(NAME_SPACE,"load");
	SqlID COUNT = new SqlID(NAME_SPACE,"count");
	SqlID INSERT = new SqlID(NAME_SPACE,"insert");
	SqlID UPDATE = new SqlID(NAME_SPACE,"update");
	SqlID DELETE = new SqlID(NAME_SPACE,"delete");

}
