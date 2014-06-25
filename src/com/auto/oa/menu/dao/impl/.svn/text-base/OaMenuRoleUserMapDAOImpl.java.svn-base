package com.auto.oa.menu.dao.impl;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.oa.menu.domain.OaMenuRoleUserMap;
import com.auto.oa.menu.dao.IOaMenuRoleUserMapDAO;
import com.system.util.AutoDaoPersistUtil;
import com.auto.oa.menu.sql.sqlid.OaMenuRoleUserMapSqlID;
/**
 * : t_auto_oa_menu_role_user_map
 * 
 * 
 * @author WangYi
 */
public class OaMenuRoleUserMapDAOImpl extends AutoDaoPersistUtil implements IOaMenuRoleUserMapDAO{

	public OaMenuRoleUserMap insertOaMenuRoleUserMap(OaMenuRoleUserMap bean){
		return insert(bean, OaMenuRoleUserMapSqlID.INSERT);
	}

	public boolean deleteOaMenuRoleUserMap(String aprumGuid){
		delete(aprumGuid, OaMenuRoleUserMapSqlID.DELETE);
		return true;
	}	

	public OaMenuRoleUserMap updateOaMenuRoleUserMap(OaMenuRoleUserMap bean){
		return update(bean, OaMenuRoleUserMapSqlID.UPDATE);
	}	

	public OaMenuRoleUserMap loadOaMenuRoleUserMap(String aprumGuid){
		return query(new OaMenuRoleUserMap().getClass(), aprumGuid);
	}

	public List<OaMenuRoleUserMap> queryPageList(Map<String,Object> param,Page page){
		page.setCount(countSpecial(param, OaMenuRoleUserMapSqlID.QUERY));
		return querySpecial(param, OaMenuRoleUserMapSqlID.QUERY, page.getFullOrderBy(), page.getOffset(), page.getLimit());
	}

	public List<OaMenuRoleUserMap> queryList(Map<String, Object> param) {
		return query(param, OaMenuRoleUserMapSqlID.QUERY);
	}

}
