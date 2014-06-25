package com.auto.sns.post.sql.sqlid;

import com.auto.sns.post.domain.SnsPostZanLog;
import com.system.common.SqlID;

/**
 * : t_auto_sns_post_zan_log
 * 
 * 
 * @author Gen
 */
public interface SnsPostZanLogSqlID{
	String NAME_SPACE = SnsPostZanLog.class.getName();	
	SqlID QUERY = new SqlID(NAME_SPACE,"query");
	SqlID LOAD = new SqlID(NAME_SPACE,"load");
	SqlID COUNT = new SqlID(NAME_SPACE,"count");
	SqlID INSERT = new SqlID(NAME_SPACE,"insert");
	SqlID UPDATE = new SqlID(NAME_SPACE,"update");
	SqlID DELETE = new SqlID(NAME_SPACE,"delete");
	
	SqlID DELETE_BY_POSTGUID_AND_USERCODE = new SqlID(NAME_SPACE,"deleteByPostGuidAndUserCode");
	
}
