package com.auto.oa.sys.dao;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.oa.sys.domain.OaSysUserLog;
/**
 * : t_auto_oa_sys_user_log
 * 
 * 
 * @author Gen
 */
public interface IOaSysUserLogDAO{
	/**
	 * @param bean
	 * @return
	 */
	OaSysUserLog insertOaSysUserLog(OaSysUserLog bean);
	/**
	 * @param osulGuid
	 * @return
	 */
	boolean deleteOaSysUserLog(String osulGuid);	
	/**
	 * @param bean
	 * @return
	 */
	OaSysUserLog updateOaSysUserLog(OaSysUserLog bean);	
	/**
	 * @param osulGuid
	 * @return
	 */
	OaSysUserLog loadOaSysUserLog(String osulGuid);
	/**
	 * @param param
	 * @param page
	 * @return
	 */
	List<OaSysUserLog> queryPageList(Map<String,Object> param,Page page);

	/**
	 * @param param
	 * @return
	 */
	List<OaSysUserLog> queryList(Map<String,Object> param);

}
