package com.auto.oa.org.sql.sqlid;

import com.auto.oa.org.domain.OaOrgInfo;
import com.system.common.SqlID;

/**
 * : t_auto_oa_org_info
 * 
 * 
 * @author Gen
 */
public interface OaOrgInfoSqlID{
	String NAME_SPACE = OaOrgInfo.class.getName();	
	SqlID QUERY = new SqlID(NAME_SPACE,"query");
	SqlID LOAD = new SqlID(NAME_SPACE,"load");
	SqlID COUNT = new SqlID(NAME_SPACE,"count");
	SqlID INSERT = new SqlID(NAME_SPACE,"insert");
	SqlID UPDATE = new SqlID(NAME_SPACE,"update");
	SqlID DELETE = new SqlID(NAME_SPACE,"delete");

}
