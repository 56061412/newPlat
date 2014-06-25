package com.auto.oa.org.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.oa.org.domain.OaOrgInfo;
import com.auto.oa.org.dao.IOaOrgInfoDAO;
import com.system.util.AutoDaoPersistUtil;
import com.auto.oa.org.sql.sqlid.OaOrgInfoSqlID;
/**
 * : t_auto_oa_org_info
 * 
 * 
 * @author Gen
 */
public class OaOrgInfoDAOImpl extends AutoDaoPersistUtil implements IOaOrgInfoDAO{

	public OaOrgInfo insertOaOrgInfo(OaOrgInfo bean){
		return insert(bean, OaOrgInfoSqlID.INSERT);
	}

	public boolean deleteOaOrgInfo(String auorgGuid){
		delete(auorgGuid, OaOrgInfoSqlID.DELETE);
		return true;
	}	

	public OaOrgInfo updateOaOrgInfo(OaOrgInfo bean){
		return update(bean, OaOrgInfoSqlID.UPDATE);
	}	

	public OaOrgInfo loadOaOrgInfo(String auorgGuid){
		return query(new OaOrgInfo().getClass(), auorgGuid);
	}
	
	public OaOrgInfo loadOaOrgInfoByOrgCode(String auorgCode){
		OaOrgInfo oaOrgInfo = null;
		Map<String,Object> param = new HashMap<String, Object>();
		param.put("auorgCode", auorgCode);
		
		List<OaOrgInfo> resultList = queryList(new OaOrgInfo().getClass(), param);
		
		if(!resultList.isEmpty()){
			oaOrgInfo = resultList.get(0);
		}
		
		return oaOrgInfo;
	}
	
	public List<OaOrgInfo> queryOaOrgInfo(Map<String,Object> param){
		return queryList(new OaOrgInfo().getClass(), param);
	}

	public List<OaOrgInfo> queryList(Map<String,Object> param,Page page){
		page.setCount(countSpecial(param, OaOrgInfoSqlID.QUERY));
		return querySpecial(param, OaOrgInfoSqlID.QUERY, page.getFullOrderBy(), page.getOffset(), page.getLimit());
	}

}
