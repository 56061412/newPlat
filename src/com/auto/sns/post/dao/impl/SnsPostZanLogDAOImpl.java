package com.auto.sns.post.dao.impl;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.sns.post.domain.SnsPostZanLog;
import com.auto.sns.post.dao.ISnsPostZanLogDAO;
import com.system.util.AutoDaoPersistUtil;
import com.auto.sns.post.sql.sqlid.SnsPostZanLogSqlID;
/**
 * : t_auto_sns_post_zan_log
 * 
 * 
 * @author Gen
 */
public class SnsPostZanLogDAOImpl extends AutoDaoPersistUtil implements ISnsPostZanLogDAO{

	public SnsPostZanLog insertSnsPostZanLog(SnsPostZanLog bean){
		return insert(bean, SnsPostZanLogSqlID.INSERT);
	}

	public boolean deleteSnsPostZanLog(String zanGuid){
		delete(zanGuid, SnsPostZanLogSqlID.DELETE);
		return true;
	}	

	public SnsPostZanLog updateSnsPostZanLog(SnsPostZanLog bean){
		return update(bean, SnsPostZanLogSqlID.UPDATE);
	}	

	public SnsPostZanLog loadSnsPostZanLog(String zanGuid){
		return query(new SnsPostZanLog().getClass(), zanGuid);
	}

	public List<SnsPostZanLog> queryPageList(Map<String,Object> param,Page page){
		page.setCount(countSpecial(param, SnsPostZanLogSqlID.QUERY));
		return querySpecial(param, SnsPostZanLogSqlID.QUERY, page.getFullOrderBy(), page.getOffset(), page.getLimit());
	}

	public List<SnsPostZanLog> queryList(Map<String,Object> param){
		return query(param, SnsPostZanLogSqlID.QUERY);
	}

	@Override
	public boolean deleteSnsPostZanLogByPostGuidAndUserCode(String postGuid,	String userCode) {
		SnsPostZanLog snsPostZanLog = new SnsPostZanLog();
		snsPostZanLog.setZanPostGuid(postGuid);
		snsPostZanLog.setZanUserCode(userCode);
		
		delete(snsPostZanLog, SnsPostZanLogSqlID.DELETE_BY_POSTGUID_AND_USERCODE);
		return true;
	}

}
