package com.auto.oa.sys.dao;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.oa.sys.domain.OaSysOperateLog;
/**
 * : t_auto_oa_sys_operate_log
 * 
 * 
 * @author Gen
 */
public interface IOaSysOperateLogDAO{
	/**
	 * @param bean
	 * @return
	 */
	OaSysOperateLog insertOaSysOperateLog(OaSysOperateLog bean);
	/**
	 * @param osolGuid
	 * @return
	 */
	boolean deleteOaSysOperateLog(String osolGuid);	
	/**
	 * @param bean
	 * @return
	 */
	OaSysOperateLog updateOaSysOperateLog(OaSysOperateLog bean);	
	/**
	 * @param osolGuid
	 * @return
	 */
	OaSysOperateLog loadOaSysOperateLog(String osolGuid);
	/**
	 * @param param
	 * @param page
	 * @return
	 */
	List<OaSysOperateLog> queryPageList(Map<String,Object> param,Page page);

	/**
	 * @param param
	 * @return
	 */
	List<OaSysOperateLog> queryList(Map<String,Object> param);

}
