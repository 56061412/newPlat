package com.auto.oa.menu.dao.impl;

import java.util.List;
import java.util.Map;


import com.system.common.Page;
import com.auto.oa.menu.domain.OaMenuInfo;
import com.auto.oa.menu.dao.IOaMenuInfoDAO;
import com.system.util.AutoDaoPersistUtil;
import com.auto.oa.menu.sql.sqlid.OaMenuInfoSqlID;

/**
 * : t_auto_oa_menu_info
 * 
 * 
 * @author WangYi
 */
public class OaMenuInfoDAOImpl extends AutoDaoPersistUtil implements IOaMenuInfoDAO{

	public OaMenuInfo insertOaMenuInfo(OaMenuInfo bean){
		return insert(bean, OaMenuInfoSqlID.INSERT);
	}

	public boolean deleteOaMenuInfo(String apmeGuid){
		delete(apmeGuid, OaMenuInfoSqlID.DELETE);
		return true;
	}	

	public OaMenuInfo updateOaMenuInfo(OaMenuInfo bean){
		return update(bean, OaMenuInfoSqlID.UPDATE);
	}	

	public OaMenuInfo loadOaMenuInfo(String apmeGuid){
		return query(new OaMenuInfo().getClass(), apmeGuid);
	}

	public List<OaMenuInfo> queryPageList(Map<String,Object> param,Page page){
		page.setCount(countSpecial(param, OaMenuInfoSqlID.QUERY));
		return querySpecial(param, OaMenuInfoSqlID.QUERY, page.getFullOrderBy(), page.getOffset(), page.getLimit());
	}
	
	public List<OaMenuInfo> queryList(Map<String,Object> param){
		return query(param, OaMenuInfoSqlID.QUERY);
	}
	
	public List<OaMenuInfo> queryListOaMenuInfoForUser(Map<String, Object> param) {
		return query(param, OaMenuInfoSqlID.QUERY_MENU_INFO_FOR_USER);
	}
	
	public List<OaMenuInfo> queryPageListOaMenuInfoForRole(Map<String,Object> param,Page page) {
		page.setCount(countSpecial(param, OaMenuInfoSqlID.QUERY_MENU_INFO_EXTEND));
		return querySpecial(param, OaMenuInfoSqlID.QUERY_MENU_INFO_EXTEND, page.getFullOrderBy(), page.getOffset(), page.getLimit());
	}

}
