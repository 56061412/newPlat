package com.auto.sns.post.dao;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.sns.post.domain.SnsPostZanLog;
/**
 * : t_auto_sns_post_zan_log
 * 
 * 
 * @author Gen
 */
public interface ISnsPostZanLogDAO{
	/**
	 * @param bean
	 * @return
	 */
	SnsPostZanLog insertSnsPostZanLog(SnsPostZanLog bean);
	/**
	 * @param zanGuid
	 * @return
	 */
	boolean deleteSnsPostZanLog(String zanGuid);	
	/**
	 * @param zanGuid
	 * @return
	 */
	boolean deleteSnsPostZanLogByPostGuidAndUserCode(String postGuid, String userCode);	
	/**
	 * @param bean
	 * @return
	 */
	SnsPostZanLog updateSnsPostZanLog(SnsPostZanLog bean);	
	/**
	 * @param zanGuid
	 * @return
	 */
	SnsPostZanLog loadSnsPostZanLog(String zanGuid);
	/**
	 * @param param
	 * @param page
	 * @return
	 */
	List<SnsPostZanLog> queryPageList(Map<String,Object> param,Page page);

	/**
	 * @param param
	 * @return
	 */
	List<SnsPostZanLog> queryList(Map<String,Object> param);

}
