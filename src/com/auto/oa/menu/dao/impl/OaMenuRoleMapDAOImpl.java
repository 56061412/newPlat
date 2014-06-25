package com.auto.oa.menu.dao.impl;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.oa.menu.domain.OaMenuRoleMap;
import com.auto.oa.menu.dao.IOaMenuRoleMapDAO;
import com.system.util.AutoDaoPersistUtil;
import com.auto.oa.menu.sql.sqlid.OaMenuRoleMapSqlID;
/**
 * : t_auto_oa_menu_role_map
 * 
 * 
 * @author WangYi
 */
public class OaMenuRoleMapDAOImpl extends AutoDaoPersistUtil implements IOaMenuRoleMapDAO{

	public OaMenuRoleMap insertOaMenuRoleMap(OaMenuRoleMap bean){
		return insert(bean, OaMenuRoleMapSqlID.INSERT);
	}

	public boolean deleteOaMenuRoleMap(String aprmmGuid){
		delete(aprmmGuid, OaMenuRoleMapSqlID.DELETE);
		return true;
	}	

	public OaMenuRoleMap updateOaMenuRoleMap(OaMenuRoleMap bean){
		return update(bean, OaMenuRoleMapSqlID.UPDATE);
	}	

	public OaMenuRoleMap loadOaMenuRoleMap(String aprmmGuid){
		return query(new OaMenuRoleMap().getClass(), aprmmGuid);
	}

	public List<OaMenuRoleMap> queryPageList(Map<String,Object> param,Page page){
		page.setCount(countSpecial(param, OaMenuRoleMapSqlID.QUERY));
		return querySpecial(param, OaMenuRoleMapSqlID.QUERY, page.getFullOrderBy(), page.getOffset(), page.getLimit());
	}
	
	public List<OaMenuRoleMap> queryList(Map<String,Object> param){
		return query(param, OaMenuRoleMapSqlID.QUERY);
	}

	public boolean deleteOaMenuRoleMapByApmeGuid(String apmeGuid) {
		delete(apmeGuid, OaMenuRoleMapSqlID.DELETE_BY_APMEGUID);
		return true;
	}

	public boolean deleteOaMenuRoleMapByAproGuid(String aproGuid) {
		delete(aproGuid, OaMenuRoleMapSqlID.DELETE_BY_APROGUID);
		return true;
	}

}
