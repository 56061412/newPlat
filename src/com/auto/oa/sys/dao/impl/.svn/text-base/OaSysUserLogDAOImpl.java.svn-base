package com.auto.oa.sys.dao.impl;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.oa.sys.domain.OaSysUserLog;
import com.auto.oa.sys.dao.IOaSysUserLogDAO;
import com.system.util.AutoDaoPersistUtil;
import com.auto.oa.sys.sql.sqlid.OaSysUserLogSqlID;
/**
 * : t_auto_oa_sys_user_log
 * 
 * 
 * @author Gen
 */
public class OaSysUserLogDAOImpl extends AutoDaoPersistUtil implements IOaSysUserLogDAO{

	public OaSysUserLog insertOaSysUserLog(OaSysUserLog bean){
		return insert(bean, OaSysUserLogSqlID.INSERT);
	}

	public boolean deleteOaSysUserLog(String osulGuid){
		delete(osulGuid, OaSysUserLogSqlID.DELETE);
		return true;
	}	

	public OaSysUserLog updateOaSysUserLog(OaSysUserLog bean){
		return update(bean, OaSysUserLogSqlID.UPDATE);
	}	

	public OaSysUserLog loadOaSysUserLog(String osulGuid){
		return query(new OaSysUserLog().getClass(), osulGuid);
	}

	public List<OaSysUserLog> queryPageList(Map<String,Object> param,Page page){
		page.setCount(countSpecial(param, OaSysUserLogSqlID.QUERY));
		return querySpecial(param, OaSysUserLogSqlID.QUERY, page.getFullOrderBy(), page.getOffset(), page.getLimit());
	}

	public List<OaSysUserLog> queryList(Map<String,Object> param){
		return query(param, OaSysUserLogSqlID.QUERY);
	}

}
