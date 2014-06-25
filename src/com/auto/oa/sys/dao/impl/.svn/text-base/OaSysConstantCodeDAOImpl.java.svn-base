package com.auto.oa.sys.dao.impl;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.oa.sys.domain.OaSysConstantCode;
import com.auto.oa.sys.dao.IOaSysConstantCodeDAO;
import com.system.util.AutoDaoPersistUtil;
import com.auto.oa.sys.sql.sqlid.OaSysConstantCodeSqlID;
/**
 * : t_auto_oa_sys_constant_code
 * 
 * 
 * @author Gen
 */
public class OaSysConstantCodeDAOImpl extends AutoDaoPersistUtil implements IOaSysConstantCodeDAO{
	
	public OaSysConstantCode insertOaSysConstantCode(OaSysConstantCode bean){
		return insert(bean, OaSysConstantCodeSqlID.INSERT);
//		return PersistUtil.insert(bean, OaSysConstantCodeSqlID.INSERT);
	}

	public boolean deleteOaSysConstantCode(String osccGuid){
		delete(osccGuid, OaSysConstantCodeSqlID.DELETE);
		return true;
	}	

	public OaSysConstantCode updateOaSysConstantCode(OaSysConstantCode bean){
		return update(bean, OaSysConstantCodeSqlID.UPDATE);
	}	

	public OaSysConstantCode loadOaSysConstantCode(String osccGuid){
		return query(OaSysConstantCode.class, osccGuid);
	}

	public List<OaSysConstantCode> queryList(Map<String,Object> param,Page page){
		page.setCount(countSpecial(param, OaSysConstantCodeSqlID.QUERY));
		return querySpecial(param, OaSysConstantCodeSqlID.QUERY, page.getFullOrderBy(), page.getOffset(), page.getLimit());
	}

	public List<OaSysConstantCode> queryList(Map<String, Object> param) {
		return queryList(OaSysConstantCode.class, param);
	}

	public List<OaSysConstantCode> queryChildren(Map<String, Object> param) {
		return query(param, OaSysConstantCodeSqlID.QUERY_CHILDREN);
	}

}
