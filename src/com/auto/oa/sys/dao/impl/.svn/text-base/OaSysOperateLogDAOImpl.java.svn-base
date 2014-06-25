package com.auto.oa.sys.dao.impl;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.oa.sys.domain.OaSysOperateLog;
import com.auto.oa.sys.dao.IOaSysOperateLogDAO;
import com.system.util.AutoDaoPersistUtil;
import com.auto.oa.sys.sql.sqlid.OaSysOperateLogSqlID;
/**
 * : t_auto_oa_sys_operate_log
 * 
 * 
 * @author Gen
 */
public class OaSysOperateLogDAOImpl extends AutoDaoPersistUtil implements IOaSysOperateLogDAO{

	public OaSysOperateLog insertOaSysOperateLog(OaSysOperateLog bean){
		return insert(bean, OaSysOperateLogSqlID.INSERT);
	}

	public boolean deleteOaSysOperateLog(String osolGuid){
		delete(osolGuid, OaSysOperateLogSqlID.DELETE);
		return true;
	}	

	public OaSysOperateLog updateOaSysOperateLog(OaSysOperateLog bean){
		return update(bean, OaSysOperateLogSqlID.UPDATE);
	}	

	public OaSysOperateLog loadOaSysOperateLog(String osolGuid){
		return query(new OaSysOperateLog().getClass(), osolGuid);
	}

	public List<OaSysOperateLog> queryPageList(Map<String,Object> param,Page page){
		page.setCount(countSpecial(param, OaSysOperateLogSqlID.QUERY));
		return querySpecial(param, OaSysOperateLogSqlID.QUERY, page.getFullOrderBy(), page.getOffset(), page.getLimit());
	}

	public List<OaSysOperateLog> queryList(Map<String,Object> param){
		return query(param, OaSysOperateLogSqlID.QUERY);
	}

}
