package com.auto.oa.menu.action;

import java.util.List;

import javax.annotation.Resource;

import com.auto.oa.menu.domain.OaMenuRole;
import com.auto.oa.menu.domain.OaMenuRoleUserMap;
import com.auto.oa.menu.service.IOaMenuRoleService;
import com.auto.oa.org.service.IOaOrgInfoService;
import com.auto.oa.user.domain.OaUserOrgMap;
import com.system.common.BaseAction;
import com.system.common.Page;
import com.system.util.BeanUtil;
import com.system.util.JsonUtil;

public class OaMenuRoleAction extends BaseAction {

	private static final long serialVersionUID = 8693340632829477031L;
	
	@Resource(name="oaMenuRoleService")
	private IOaMenuRoleService oaMenuRoleService;
	@Resource(name="oaOrgInfoService")
	private IOaOrgInfoService oaOrgInfoService;
	
	/**
	 * 查询系统角色 OaMenuRole
	 * 树结构显示
	 */
	public void queryTreeOaMenuRole() throws Exception{
		String search = getRequest().getParameter("search");
		
		OaMenuRole oaMenuRole = JsonUtil.jsonToBean(search, OaMenuRole.class);

		List<OaMenuRole> list = oaMenuRoleService.queryTreeOaMenuRole(oaMenuRole);
		
		pageTreeWriteOut(list);
	}
	
	/**
	 * 查询角色配置人员信息 OaMenuRoleExtend
	 * 列别结构显示
	 */
	public void queryPageListOaMenuRoleExtend() throws Exception{
		Page page = getPage();

		String search = getRequest().getParameter("search");
		
		OaMenuRole oaMenuRole = JsonUtil.jsonToBean(search, OaMenuRole.class);
		
		List<OaMenuRole> list = oaMenuRoleService.queryPageListOaMenuRoleUserInfo(oaMenuRole, page);
		
		pageListWriteOut(list, page);
	}

	/**
	 * 查询系统角色 OaMenuRole
	 * 列别结构显示
	 */
	public void queryPageListOaMenuRole() throws Exception{
		Page page = getPage();

		String search = getRequest().getParameter("search");
		
		OaMenuRole oaMenuRole = JsonUtil.jsonToBean(search, OaMenuRole.class);
		
		List<OaMenuRole> list = oaMenuRoleService.queryPageListOaMenuRole(oaMenuRole, page);
		
		pageListWriteOut(list, page);
	}
	
	/**
	 * 保存对象(新增和修改) OaMenuRole
	 * @throws Exception
	 */
	public void saveOrUpdateOaMenuRoleUserMap() throws Exception{
		String aproGuid = getRequest().getParameter("aproGuid");
		String auserGuids = getRequest().getParameter("auserGuids");
		
		String[] auserGuidArry = auserGuids.split(",");
		for (String auserGuid : auserGuidArry) {
			OaMenuRoleUserMap oaMenuRoleUserMap = new OaMenuRoleUserMap();
			oaMenuRoleUserMap.setAproGuid(aproGuid);
			oaMenuRoleUserMap.setAuserGuid(auserGuid);
			
			OaUserOrgMap oaUserOrgMap = oaOrgInfoService.getOaUserOrgMapByUserGuid(auserGuid);
			if(!BeanUtil.isObjectNull(oaUserOrgMap)){
				String orgGuid = oaUserOrgMap.getAuorgGuid();
				
				oaMenuRoleUserMap.setAuorgGuid(orgGuid);
				oaMenuRoleUserMap = getDefaultBean(oaMenuRoleUserMap, getRequest());
				oaMenuRoleService.saveOrUpdateOaMenuRoleUserMap(oaMenuRoleUserMap);
			}
			
		}
	}
	
	/**
	 * 保存对象(新增和修改) OaMenuRole
	 * @throws Exception
	 */
	public void saveOrUpdateOaMenuRole() throws Exception{
		String data = getRequest().getParameter("data");
		
		List<OaMenuRole> list = JsonUtil.jsonToList(data, OaMenuRole.class);
		for (OaMenuRole oaMenuRole : list) {
			oaMenuRoleService.saveOrUpdateOaMenuRole(oaMenuRole);
		}
	}
	
	/**
	 * 删除对象 OaMenuRoleUserMap
	 * @throws Exception
	 */
	public void deleteOaMenuRoleUserMap() throws Exception{
		String aprumGuid = getRequest().getParameter("aprumGuid");
		String[] aprumGuids = aprumGuid.split(",");
		for (String guid : aprumGuids) {
			oaMenuRoleService.deleteOaMenuRoleUserMap(guid);
		}
	}
	
	/**
	 * 删除对象 OaMenuRole
	 * @throws Exception
	 */
	public void deleteOaMenuRole() throws Exception{
		String aproGuid = getRequest().getParameter("aproGuid");
		String[] aproGuids = aproGuid.split(",");
		for (String guid : aproGuids) {
			oaMenuRoleService.deleteOaMenuRole(guid);
		}
	}
	
	/**
	 * 查询对象详细信息
	 * @throws Exception
	 */
	public void getOaMenuRole() throws Exception{
		String aproGuid = getRequest().getParameter("aproGuid");
		OaMenuRole oaMenuRole = oaMenuRoleService.getOaMenuRole(aproGuid);
		detailResultWriteOut(oaMenuRole);
	}
}
