package com.auto.oa.user.sql.sqlid;

import com.auto.oa.user.domain.OaUserLogin;
import com.system.common.SqlID;

/**
 * : t_auto_oa_user_login
 * 
 * 
 * @author Gen
 */
public interface OaUserLoginSqlID{
	String NAME_SPACE = OaUserLogin.class.getName();	
	SqlID QUERY = new SqlID(NAME_SPACE,"query");
	SqlID LOAD = new SqlID(NAME_SPACE,"load");
	SqlID COUNT = new SqlID(NAME_SPACE,"count");
	SqlID INSERT = new SqlID(NAME_SPACE,"insert");
	SqlID UPDATE = new SqlID(NAME_SPACE,"update");
	SqlID DELETE = new SqlID(NAME_SPACE,"delete");

}
