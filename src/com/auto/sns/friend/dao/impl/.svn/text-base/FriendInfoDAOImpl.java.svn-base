package com.auto.sns.friend.dao.impl;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.sns.friend.domain.FriendInfo;
import com.auto.sns.friend.dao.IFriendInfoDAO;
import com.system.util.AutoDaoPersistUtil;
import com.auto.sns.friend.sql.sqlid.FriendInfoSqlID;
/**
 * : t_auto_sns_friend_info
 * 
 * 
 * @author Gen
 */
public class FriendInfoDAOImpl extends AutoDaoPersistUtil implements IFriendInfoDAO{

	public FriendInfo insertFriendInfo(FriendInfo bean){
		return insert(bean, FriendInfoSqlID.INSERT);
	}

	public boolean deleteFriendInfo(String rowGuid){
		delete(rowGuid, FriendInfoSqlID.DELETE);
		return true;
	}	

	public FriendInfo updateFriendInfo(FriendInfo bean){
		return update(bean, FriendInfoSqlID.UPDATE);
	}	

	public FriendInfo loadFriendInfo(String rowGuid){
		return query(new FriendInfo().getClass(), rowGuid);
	}

	public List<FriendInfo> queryPageList(Map<String,Object> param,Page page){
		page.setCount(countSpecial(param, FriendInfoSqlID.QUERY));
		return querySpecial(param, FriendInfoSqlID.QUERY, page.getFullOrderBy(), page.getOffset(), page.getLimit());
	}

	public List<FriendInfo> queryList(Map<String,Object> param){
		return query(param, FriendInfoSqlID.QUERY);
	}

	@Override
	public List<FriendInfo> queryListEx(Map<String, Object> param) {
		return query(param, FriendInfoSqlID.queryEx);
	}

}
