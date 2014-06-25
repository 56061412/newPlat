package com.auto.sns.login.sql.sqlid;

import com.auto.sns.login.domain.SnsRegRefree;
import com.system.common.SqlID;

/**
 * : t_auto_sns_reg_refree
 * 
 * 
 * @author Gen
 */
public interface SnsRegRefreeSqlID{
	String NAME_SPACE = SnsRegRefree.class.getName();	
	SqlID QUERY = new SqlID(NAME_SPACE,"query");
	SqlID LOAD = new SqlID(NAME_SPACE,"load");
	SqlID COUNT = new SqlID(NAME_SPACE,"count");
	SqlID INSERT = new SqlID(NAME_SPACE,"insert");
	SqlID UPDATE = new SqlID(NAME_SPACE,"update");
	SqlID DELETE = new SqlID(NAME_SPACE,"delete");

}
