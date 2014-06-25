package com.auto.sns.core.sql.sqlid;

import com.auto.sns.core.domain.SnsCoreMessagePerson;
import com.system.common.SqlID;

/**
 * : t_auto_sns_core_message_person
 * 
 * 
 * @author Gen
 */
public interface SnsCoreMessagePersonSqlID{
	String NAME_SPACE = SnsCoreMessagePerson.class.getName();	
	SqlID QUERY = new SqlID(NAME_SPACE,"query");
	SqlID LOAD = new SqlID(NAME_SPACE,"load");
	SqlID COUNT = new SqlID(NAME_SPACE,"count");
	SqlID INSERT = new SqlID(NAME_SPACE,"insert");
	SqlID UPDATE = new SqlID(NAME_SPACE,"update");
	SqlID DELETE = new SqlID(NAME_SPACE,"delete");
	SqlID DELETE_BY_SCMEGUID = new SqlID(NAME_SPACE, "deleteByScmeGuid");

}
