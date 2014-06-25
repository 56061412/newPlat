package com.auto.oa.menu.dao.impl;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.oa.menu.domain.OaMenuRole;
import com.auto.oa.menu.dao.IOaMenuRoleDAO;
import com.system.util.AutoDaoPersistUtil;
import com.auto.oa.menu.sql.sqlid.OaMenuRoleSqlID;
/**
 * : t_auto_oa_menu_role
 * 
 * 
 * @author WangYi
 */
public class OaMenuRoleDAOImpl extends AutoDaoPersistUtil implements IOaMenuRoleDAO{

	public OaMenuRole insertOaMenuRole(OaMenuRole bean){
		return insert(bean, OaMenuRoleSqlID.INSERT);
	}

	public boolean deleteOaMenuRole(String aproGuid){
		delete(aproGuid, OaMenuRoleSqlID.DELETE);
		return true;
	}	

	public OaMenuRole updateOaMenuRole(OaMenuRole bean){
		return update(bean, OaMenuRoleSqlID.UPDATE);
	}	

	public OaMenuRole loadOaMenuRole(String aproGuid){
		return query(new OaMenuRole().getClass(), aproGuid);
	}

	public List<OaMenuRole> queryPageList(Map<String,Object> param,Page page){
		page.setCount(countSpecial(param, OaMenuRoleSqlID.QUERY));
		return querySpecial(param, OaMenuRoleSqlID.QUERY, page.getFullOrderBy(), page.getOffset(), page.getLimit());
	}

	public List<OaMenuRole> queryList(Map<String, Object> param) {
		return query(param, OaMenuRoleSqlID.QUERY);
	}
	
	public List<OaMenuRole> queryPageListOaMenuRoleOrgInfo(Map<String, Object> param, Page page) {
		page.setCount(countSpecial(param, OaMenuRoleSqlID.QUERY_ORG_INFO_EXTEND));
		return querySpecial(param, OaMenuRoleSqlID.QUERY_ORG_INFO_EXTEND, page.getFullOrderBy(), page.getOffset(), page.getLimit());
	}

}
