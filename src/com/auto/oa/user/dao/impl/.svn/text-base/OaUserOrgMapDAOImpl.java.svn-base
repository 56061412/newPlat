package com.auto.oa.user.dao.impl;

import java.util.List;
import java.util.Map;

import com.auto.oa.user.domain.OaUserOrgMap;
import com.auto.oa.user.dao.IOaUserOrgMapDAO;
import com.system.util.AutoDaoPersistUtil;
import com.auto.oa.user.sql.sqlid.OaUserOrgMapSqlID;
/**
 * : t_auto_oa_user_org_map
 * 
 * 
 * @author WangYi
 */
public class OaUserOrgMapDAOImpl extends AutoDaoPersistUtil implements IOaUserOrgMapDAO{

	public OaUserOrgMap insertOaUserOrgMap(OaUserOrgMap bean){
		return insert(bean, OaUserOrgMapSqlID.INSERT);
	}

	public boolean deleteOaUserOrgMap(String aoumGuid){
		delete(aoumGuid, OaUserOrgMapSqlID.DELETE);
		return true;
	}	

	public OaUserOrgMap updateOaUserOrgMap(OaUserOrgMap bean){
		return update(bean, OaUserOrgMapSqlID.UPDATE);
	}	

	public OaUserOrgMap loadOaUserOrgMap(String aoumGuid){
		return query(new OaUserOrgMap().getClass(), aoumGuid);
	}

	public List<OaUserOrgMap> queryListOaUserOrgMap(Map<String,Object> param){
		return query(param, OaUserOrgMapSqlID.QUERY);
	}
	
	public boolean deleteOaUserOrgMapByOrgGuid(String auorgGuid) {
		delete(auorgGuid, OaUserOrgMapSqlID.DELETE_AUORG_GUID);
		return true;
	}

	public boolean deleteOaUserOrgMapByUserGuid(String auserGuid) {
		delete(auserGuid, OaUserOrgMapSqlID.DELETE_AUSER_GUID);
		return true;
	}

}
