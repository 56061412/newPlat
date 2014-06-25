package com.auto.oa.menu.dao;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.oa.menu.domain.OaMenuInfo;
/**
 * : t_auto_oa_menu_info
 * 
 * 
 * @author WangYi
 */
public interface IOaMenuInfoDAO{
	/**
	 * @param bean
	 * @return
	 */
	OaMenuInfo insertOaMenuInfo(OaMenuInfo bean);
	/**
	 * @param apmeGuid
	 * @return
	 */
	boolean deleteOaMenuInfo(String apmeGuid);	
	/**
	 * @param bean
	 * @return
	 */
	OaMenuInfo updateOaMenuInfo(OaMenuInfo bean);	
	/**
	 * @param apmeGuid
	 * @return
	 */
	OaMenuInfo loadOaMenuInfo(String apmeGuid);

	/**
	 * 查询菜单列表
	 * 分页
	 * @param param
	 * @param page
	 * @return
	 */
	List<OaMenuInfo> queryPageList(Map<String,Object> param,Page page);
	
	/**
	 * 查询菜单列表
	 * @param param
	 * @return
	 */
	List<OaMenuInfo> queryList(Map<String,Object> param);
	
	List<OaMenuInfo> queryListOaMenuInfoForUser(Map<String,Object> param);
	
	List<OaMenuInfo> queryPageListOaMenuInfoForRole(Map<String,Object> param,Page page);

}
