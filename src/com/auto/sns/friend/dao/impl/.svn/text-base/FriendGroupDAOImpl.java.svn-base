package com.auto.sns.friend.dao.impl;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.sns.friend.domain.FriendGroup;
import com.auto.sns.friend.dao.IFriendGroupDAO;
import com.system.util.AutoDaoPersistUtil;
import com.auto.sns.friend.sql.sqlid.FriendGroupSqlID;
/**
 * : t_auto_sns_friend_group
 * 
 * 
 * @author Gen
 */
public class FriendGroupDAOImpl extends AutoDaoPersistUtil implements IFriendGroupDAO{

	public FriendGroup insertFriendGroup(FriendGroup bean){
		return insert(bean, FriendGroupSqlID.INSERT);
	}

	public boolean deleteFriendGroup(String groupGuid){
		delete(groupGuid, FriendGroupSqlID.DELETE);
		return true;
	}	

	public FriendGroup updateFriendGroup(FriendGroup bean){
		return update(bean, FriendGroupSqlID.UPDATE);
	}	

	public FriendGroup loadFriendGroup(String groupGuid){
		return query(new FriendGroup().getClass(), groupGuid);
	}

	public List<FriendGroup> queryPageList(Map<String,Object> param,Page page){
		page.setCount(countSpecial(param, FriendGroupSqlID.QUERY));
		return querySpecial(param, FriendGroupSqlID.QUERY, page.getFullOrderBy(), page.getOffset(), page.getLimit());
	}

	public List<FriendGroup> queryList(Map<String,Object> param){
		return query(param, FriendGroupSqlID.QUERY);
	}

}
