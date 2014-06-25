package com.auto.oa.org.dao;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.oa.org.domain.OaOrgArea;
/**
 * : t_auto_oa_org_area
 * 
 * 
 * @author Gen
 */
public interface IOaOrgAreaDAO{
	
	/**
	 * 新增对象DAO
	 * @param bean
	 * @return
	 */
	OaOrgArea insertOaOrgArea(OaOrgArea bean);
	
	/**
	 * 删除对象DAO
	 * @param auarGuid
	 * @return
	 */
	boolean deleteOaOrgArea(String auarGuid);
	
	/**
	 * 修改对象DAO
	 * @param bean
	 * @return
	 */
	OaOrgArea updateOaOrgArea(OaOrgArea bean);
	
	/**
	 * 查询对象详细 DAO
	 * @param auarGuid	主键
	 * @return
	 */
	OaOrgArea loadOaOrgArea(String auarGuid);
	
	/**
	 * 查询对象列表DAO
	 * 分页
	 * @param param
	 * @param page
	 * @return
	 */
	List<OaOrgArea> queryList(Map<String,Object> param,Page page);
	
	/**
	 * 查询对象列表DAO
	 * @param param
	 * @param page
	 * @return
	 */
	List<OaOrgArea> queryList(Map<String,Object> param);

}
