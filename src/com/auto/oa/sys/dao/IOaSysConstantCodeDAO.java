package com.auto.oa.sys.dao;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.oa.sys.domain.OaSysConstantCode;
/**
 * : t_auto_oa_sys_constant_code
 * 
 * 
 * @author Gen
 */
public interface IOaSysConstantCodeDAO{
	/**
	 * @param bean
	 * @return
	 */
	OaSysConstantCode insertOaSysConstantCode(OaSysConstantCode bean);
	/**
	 * @param osccGuid
	 * @return
	 */
	boolean deleteOaSysConstantCode(String osccGuid);	
	/**
	 * @param bean
	 * @return
	 */
	OaSysConstantCode updateOaSysConstantCode(OaSysConstantCode bean);	
	/**
	 * @param osccGuid
	 * @return
	 */
	OaSysConstantCode loadOaSysConstantCode(String osccGuid);
	/**
	 * @param param
	 * @param page
	 * @return
	 */
	List<OaSysConstantCode> queryList(Map<String,Object> param,Page page);
	
	List<OaSysConstantCode> queryList(Map<String,Object> param);
	
	List<OaSysConstantCode> queryChildren(Map<String,Object> param);

}
