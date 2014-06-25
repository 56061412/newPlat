package com.auto.sns.login.dao.impl;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.sns.login.domain.SnsRegRefree;
import com.auto.sns.login.dao.ISnsRegRefreeDAO;
import com.system.util.AutoDaoPersistUtil;
import com.auto.sns.login.sql.sqlid.SnsRegRefreeSqlID;
/**
 * : t_auto_sns_reg_refree
 * 
 * 
 * @author Gen
 */
public class SnsRegRefreeDAOImpl extends AutoDaoPersistUtil implements ISnsRegRefreeDAO{

	public SnsRegRefree insertSnsRegRefree(SnsRegRefree bean){
		return insert(bean, SnsRegRefreeSqlID.INSERT);
	}

	public boolean deleteSnsRegRefree(String srreGuid){
		delete(srreGuid, SnsRegRefreeSqlID.DELETE);
		return true;
	}	

	public SnsRegRefree updateSnsRegRefree(SnsRegRefree bean){
		return update(bean, SnsRegRefreeSqlID.UPDATE);
	}	

	public SnsRegRefree loadSnsRegRefree(String srreGuid){
		return query(new SnsRegRefree().getClass(), srreGuid);
	}

	public List<SnsRegRefree> queryList(Map<String,Object> param,Page page){
		page.setCount(countSpecial(param, SnsRegRefreeSqlID.QUERY));
		return querySpecial(param, SnsRegRefreeSqlID.QUERY, page.getFullOrderBy(), page.getOffset(), page.getLimit());
	}

}
