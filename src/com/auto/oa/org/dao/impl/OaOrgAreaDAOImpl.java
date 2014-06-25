package com.auto.oa.org.dao.impl;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.oa.org.domain.OaOrgArea;
import com.auto.oa.org.dao.IOaOrgAreaDAO;
import com.system.util.AutoDaoPersistUtil;
import com.auto.oa.org.sql.sqlid.OaOrgAreaSqlID;
/**
 * : t_auto_oa_org_area
 * 
 * 
 * @author Gen
 */
public class OaOrgAreaDAOImpl extends AutoDaoPersistUtil implements IOaOrgAreaDAO{

	public OaOrgArea insertOaOrgArea(OaOrgArea bean){
		return insert(bean, OaOrgAreaSqlID.INSERT);
	}

	public boolean deleteOaOrgArea(String auarGuid){
		delete(auarGuid, OaOrgAreaSqlID.DELETE);
		return true;
	}	

	public OaOrgArea updateOaOrgArea(OaOrgArea bean){
		return update(bean, OaOrgAreaSqlID.UPDATE);
	}	

	public OaOrgArea loadOaOrgArea(String auarGuid){
		return query(new OaOrgArea().getClass(), auarGuid);
	}

	public List<OaOrgArea> queryList(Map<String,Object> param,Page page){
		page.setCount(countSpecial(param, OaOrgAreaSqlID.QUERY));
		return querySpecial(param, OaOrgAreaSqlID.QUERY, page.getFullOrderBy(), page.getOffset(), page.getLimit());
	}
	
	public List<OaOrgArea> queryList(Map<String,Object> param){
		return queryList(OaOrgArea.class, param);
	}

}
