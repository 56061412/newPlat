package com.auto.oa.sys.sql.sqlid;

import com.auto.oa.sys.domain.OaSysAttachment;
import com.system.common.SqlID;

/**
 * : t_auto_oa_sys_attachment
 * 
 * 
 * @author Gen
 */
public interface OaSysAttachmentSqlID{
	String NAME_SPACE = OaSysAttachment.class.getName();	
	SqlID QUERY = new SqlID(NAME_SPACE,"query");
	SqlID LOAD = new SqlID(NAME_SPACE,"load");
	SqlID COUNT = new SqlID(NAME_SPACE,"count");
	SqlID INSERT = new SqlID(NAME_SPACE,"insert");
	SqlID UPDATE = new SqlID(NAME_SPACE,"update");
	SqlID DELETE = new SqlID(NAME_SPACE,"delete");

}
