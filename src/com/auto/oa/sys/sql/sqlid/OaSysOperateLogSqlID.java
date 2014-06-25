package com.auto.oa.sys.sql.sqlid;

import com.auto.oa.sys.domain.OaSysOperateLog;
import com.system.common.SqlID;

/**
 * : t_auto_oa_sys_operate_log
 * 
 * 
 * @author Gen
 */
public interface OaSysOperateLogSqlID{
	String NAME_SPACE = OaSysOperateLog.class.getName();	
	SqlID QUERY = new SqlID(NAME_SPACE,"query");
	SqlID LOAD = new SqlID(NAME_SPACE,"load");
	SqlID COUNT = new SqlID(NAME_SPACE,"count");
	SqlID INSERT = new SqlID(NAME_SPACE,"insert");
	SqlID UPDATE = new SqlID(NAME_SPACE,"update");
	SqlID DELETE = new SqlID(NAME_SPACE,"delete");

}
