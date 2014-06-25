package com.auto.oa.sys.sql.sqlid;

import com.auto.oa.sys.domain.OaSysUserLog;
import com.system.common.SqlID;

/**
 * : t_auto_oa_sys_user_log
 * 
 * 
 * @author Gen
 */
public interface OaSysUserLogSqlID{
	String NAME_SPACE = OaSysUserLog.class.getName();	
	SqlID QUERY = new SqlID(NAME_SPACE,"query");
	SqlID LOAD = new SqlID(NAME_SPACE,"load");
	SqlID COUNT = new SqlID(NAME_SPACE,"count");
	SqlID INSERT = new SqlID(NAME_SPACE,"insert");
	SqlID UPDATE = new SqlID(NAME_SPACE,"update");
	SqlID DELETE = new SqlID(NAME_SPACE,"delete");

}
