package com.auto.oa.user.dao.impl;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.oa.user.domain.OaUserInfo;
import com.auto.oa.user.dao.IOaUserInfoDAO;
import com.system.util.AutoDaoPersistUtil;
import com.system.util.BeanUtil;
import com.auto.oa.user.sql.sqlid.OaUserInfoSqlID;
/**
 * : t_auto_oa_user_info
 * 
 * 
 * @author WangYi
 */
public class OaUserInfoDAOImpl extends AutoDaoPersistUtil implements IOaUserInfoDAO{

	public OaUserInfo insertOaUserInfo(OaUserInfo bean){
		return insert(bean, OaUserInfoSqlID.INSERT);
	}

	public boolean deleteOaUserInfo(String auserGuid){
		delete(auserGuid, OaUserInfoSqlID.DELETE);
		return true;
	}	

	public OaUserInfo updateOaUserInfo(OaUserInfo bean){
		return update(bean, OaUserInfoSqlID.UPDATE);
	}	

	public OaUserInfo loadOaUserInfo(String auserGuid){
		return query(new OaUserInfo().getClass(), auserGuid);
	}

	public List<OaUserInfo> queryPageListOaUserInfo(Map<String,Object> param,Page page){
		page.setCount(countSpecial(param, OaUserInfoSqlID.QUERY));
		return querySpecial(param, OaUserInfoSqlID.QUERY, page.getFullOrderBy(), page.getOffset(), page.getLimit());
	}
	
	public List<OaUserInfo> queryListOaUserInfo(Map<String,Object> param){
		return query(param, OaUserInfoSqlID.QUERY);
	}

	public boolean deleteOaUserInfoByUserCode(String auserCode) {
		delete(auserCode, OaUserInfoSqlID.DELETE_USER_CODE);
		return true;
	}

	public OaUserInfo loadOaUserInfoByUserCode(String auserCode) throws IllegalArgumentException, IllegalAccessException {
		OaUserInfo oaUserInfo = new OaUserInfo();
		oaUserInfo.setAuserCode(auserCode);
		
		return query(OaUserInfo.class, BeanUtil.convertBeanToMap(oaUserInfo));
	}

	public List<OaUserInfo> queryPageListUserOrg(Map<String, Object> param, Page page) {
		page.setCount(countSpecial(param, OaUserInfoSqlID.QUERY));
		return querySpecial(param, OaUserInfoSqlID.QUERY_USER_ORG, page.getFullOrderBy(), page.getOffset(), page.getLimit());
	}

	public List<OaUserInfo> queryListUserOrg(Map<String, Object> param) {
		return query(param, OaUserInfoSqlID.QUERY_USER_ORG);
	}

}
