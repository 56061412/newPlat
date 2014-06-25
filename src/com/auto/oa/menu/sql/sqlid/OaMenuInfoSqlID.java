package com.auto.oa.menu.sql.sqlid;

import com.auto.oa.menu.domain.OaMenuInfo;
import com.system.common.SqlID;

/**
 * : t_auto_oa_menu_info
 * 
 * 
 * @author WangYi
 */
public interface OaMenuInfoSqlID{
	String NAME_SPACE = OaMenuInfo.class.getName();	
	SqlID QUERY = new SqlID(NAME_SPACE,"query");
	SqlID LOAD = new SqlID(NAME_SPACE,"load");
	SqlID COUNT = new SqlID(NAME_SPACE,"count");
	SqlID INSERT = new SqlID(NAME_SPACE,"insert");
	SqlID UPDATE = new SqlID(NAME_SPACE,"update");
	SqlID DELETE = new SqlID(NAME_SPACE,"delete");
	SqlID QUERY_MENU_INFO_EXTEND = new SqlID(NAME_SPACE,"queryOaMenuInfoExtend");
	SqlID QUERY_MENU_INFO_FOR_USER = new SqlID(NAME_SPACE,"queryOaMenuInfoForUser");

}
