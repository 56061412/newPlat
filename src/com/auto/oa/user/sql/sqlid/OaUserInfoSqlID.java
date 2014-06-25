package com.auto.oa.user.sql.sqlid;

import com.auto.oa.user.domain.OaUserInfo;
import com.system.common.SqlID;

/**
 * : t_auto_oa_user_info
 * 
 * 
 * @author WangYi
 */
public interface OaUserInfoSqlID{
	String NAME_SPACE = OaUserInfo.class.getName();	
	SqlID QUERY = new SqlID(NAME_SPACE,"query");
	SqlID LOAD = new SqlID(NAME_SPACE,"load");
	SqlID COUNT = new SqlID(NAME_SPACE,"count");
	SqlID INSERT = new SqlID(NAME_SPACE,"insert");
	SqlID UPDATE = new SqlID(NAME_SPACE,"update");
	SqlID DELETE = new SqlID(NAME_SPACE,"delete");
	SqlID DELETE_USER_CODE = new SqlID(NAME_SPACE,"deleteByUserCode");
	SqlID QUERY_USER_ORG = new SqlID(NAME_SPACE,"queryUserAndOrg");
	
}
