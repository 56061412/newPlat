package com.auto.sns.friend.sql.sqlid;

import com.auto.sns.friend.domain.FriendGroup;
import com.system.common.SqlID;

/**
 * : t_auto_sns_friend_group
 * 
 * 
 * @author Gen
 */
public interface FriendGroupSqlID{
	String NAME_SPACE = FriendGroup.class.getName();	
	SqlID QUERY = new SqlID(NAME_SPACE,"query");
	SqlID LOAD = new SqlID(NAME_SPACE,"load");
	SqlID COUNT = new SqlID(NAME_SPACE,"count");
	SqlID INSERT = new SqlID(NAME_SPACE,"insert");
	SqlID UPDATE = new SqlID(NAME_SPACE,"update");
	SqlID DELETE = new SqlID(NAME_SPACE,"delete");

}
