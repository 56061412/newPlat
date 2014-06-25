package com.auto.oa.user.sql.sqlid;

import com.auto.oa.user.domain.OaUserPost;
import com.system.common.SqlID;

/**
 * : t_auto_oa_user_post
 * 
 * 
 * @author WangYi
 */
public interface OaUserPostSqlID{
	String NAME_SPACE = OaUserPost.class.getName();	
	SqlID QUERY = new SqlID(NAME_SPACE,"query");
	SqlID LOAD = new SqlID(NAME_SPACE,"load");
	SqlID COUNT = new SqlID(NAME_SPACE,"count");
	SqlID INSERT = new SqlID(NAME_SPACE,"insert");
	SqlID UPDATE = new SqlID(NAME_SPACE,"update");
	SqlID DELETE = new SqlID(NAME_SPACE,"delete");

}
