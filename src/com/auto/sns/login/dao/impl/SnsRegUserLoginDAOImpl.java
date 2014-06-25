package com.auto.sns.login.dao.impl;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.sns.login.domain.SnsRegUserLogin;
import com.auto.sns.login.dao.ISnsRegUserLoginDAO;
import com.system.util.AutoDaoPersistUtil;
import com.auto.sns.login.sql.sqlid.SnsRegUserLoginSqlID;
/**
 * : t_auto_sns_reg_user_login
 * 
 * 
 * @author Gen
 */
public class SnsRegUserLoginDAOImpl extends AutoDaoPersistUtil implements ISnsRegUserLoginDAO{

	public SnsRegUserLogin insertSnsRegUserLogin(SnsRegUserLogin bean){
		return insert(bean, SnsRegUserLoginSqlID.INSERT);
	}

	public boolean deleteSnsRegUserLogin(String srulGuid){
		delete(srulGuid, SnsRegUserLoginSqlID.DELETE);
		return true;
	}	

	public SnsRegUserLogin updateSnsRegUserLogin(SnsRegUserLogin bean){
		return update(bean, SnsRegUserLoginSqlID.UPDATE);
	}	

	public SnsRegUserLogin loadSnsRegUserLogin(String srulGuid){
		return query(new SnsRegUserLogin().getClass(), srulGuid);
	}

	public List<SnsRegUserLogin> queryList(Map<String,Object> param,Page page){
		page.setCount(countSpecial(param, SnsRegUserLoginSqlID.QUERY));
		return querySpecial(param, SnsRegUserLoginSqlID.QUERY, page.getFullOrderBy(), page.getOffset(), page.getLimit());
	}

}
