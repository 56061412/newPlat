package com.auto.sns.post.sql.sqlid;

import com.auto.sns.post.domain.PostInfo;
import com.system.common.SqlID;

/**
 * : t_auto_sns_post_info
 * 
 * 
 * @author Gen
 */
public interface PostInfoSqlID{
	String NAME_SPACE = PostInfo.class.getName();	
	SqlID QUERY = new SqlID(NAME_SPACE,"query");
	SqlID LOAD = new SqlID(NAME_SPACE,"load");
	SqlID COUNT = new SqlID(NAME_SPACE,"count");
	SqlID INSERT = new SqlID(NAME_SPACE,"insert");
	SqlID UPDATE = new SqlID(NAME_SPACE,"update");
	SqlID DELETE = new SqlID(NAME_SPACE,"delete");

	SqlID LISTPOST = new SqlID(NAME_SPACE,"listPost");
	SqlID UPDATE_POSTINFO_HUIFU_NUM = new SqlID(NAME_SPACE,"updatePostInfoHuifuNum");
	SqlID UPDATE_POSTINFO_ZHUANFA_NUM = new SqlID(NAME_SPACE,"updatePostInfoZhuanfaNum");
	SqlID UPDATE_POSTINFO_ZAN_NUM = new SqlID(NAME_SPACE,"updatePostInfoZanNum");
	SqlID UPDATE_POSTINFO_ZAN_NUM_MINUS = new SqlID(NAME_SPACE,"updatePostInfoZanNumMinus");
}
