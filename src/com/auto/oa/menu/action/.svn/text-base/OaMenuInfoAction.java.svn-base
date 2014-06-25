package com.auto.oa.menu.action;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;

import com.auto.oa.menu.domain.OaMenuInfo;
import com.auto.oa.menu.domain.OaMenuRoleMap;
import com.auto.oa.menu.service.IOaMenuInfoService;
import com.system.common.BaseAction;
import com.system.common.Page;
import com.system.util.JsonUtil;

public class OaMenuInfoAction extends BaseAction {

	private static final long serialVersionUID = 3298231310884325259L;
	
	@Resource(name="oaMenuInfoService")
	private IOaMenuInfoService oaMenuInfoService;
	
	/**
	 * 查询导航一级菜单
	 * @throws Exception
	 */
	public void queryFirstMenu() throws Exception{
		try {
			String userCode = getSessionUserCode(getRequest());
			List<OaMenuInfo> oaMenuInfos = new ArrayList<OaMenuInfo>();
			OaMenuInfo oaMenuInfo = new OaMenuInfo();
			
			if("admin".equals(userCode)){
				oaMenuInfos = oaMenuInfoService.queryListOaMenuInfo(null);
			}else{
				oaMenuInfo.setAuserCode(userCode);
				oaMenuInfos = oaMenuInfoService.queryListOaMenuInfoForUser(oaMenuInfo);
			}
			
			//去掉根目录信息
			Iterator<OaMenuInfo> iterator = oaMenuInfos.iterator();
			while(iterator.hasNext()){
				OaMenuInfo oaMenuInfoR = iterator.next();
				String apemGuid = oaMenuInfoR.getApmeGuid();
				if("ROOT".equals(apemGuid)){
					oaMenuInfos.remove(oaMenuInfoR);
					break;
				}
			}
			
			pageTreeWriteOut(oaMenuInfos);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 查询菜单对象(OaMenuInfo)</br>
	 * 树结构显示
	 */
	public void queryTreeOaMenuInfo() throws Exception{
		try {
			String search = getRequest().getParameter("search");
			OaMenuInfo oaMenuInfo = JsonUtil.jsonToBean(search, OaMenuInfo.class);
			
			List<OaMenuInfo> oaMenuInfos =oaMenuInfoService.queryTreeOaMenuInfo(oaMenuInfo);
			
			pageTreeWriteOut(oaMenuInfos);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 查询菜单对象(OaMenuInfo)</br>
	 * 列表结构显示
	 */
	public void queryPageListOaMenuInfo() throws Exception{
		Page page = getPage();
		String search = getRequest().getParameter("search");
		
		OaMenuInfo oaMenuInfo = JsonUtil.jsonToBean(search, OaMenuInfo.class);
		
		List<OaMenuInfo> oaMenuInfos =oaMenuInfoService.queryPageListOaMenuInfo(oaMenuInfo, page);
		
		pageListWriteOut(oaMenuInfos, page);
	}
	
	/**
	 * 查询菜单角色扩展对象(OaMenuInfoExtend)</br>
	 * 列表结构显示
	 */
	public void queryPageListOaMenuInfoExtend() throws Exception{
		Page page = getPage();
		String search = getRequest().getParameter("search");
		
		OaMenuInfo oaMenuInfo = JsonUtil.jsonToBean(search, OaMenuInfo.class);
		
		List<OaMenuInfo> list =oaMenuInfoService.queryPageListOaMenuInfoForRole(oaMenuInfo, page);
		
		pageListWriteOut(list, page);
	}
	
	/**
	 * 保存对象(新增和修改) OaMenuInfo
	 * @throws Exception
	 */
	public void saveOrUpdateOaMenuInfo() throws Exception{
		String data = getRequest().getParameter("data");
		
		List<OaMenuInfo> oaMenuInfos = JsonUtil.jsonToList(data, OaMenuInfo.class);
		for (OaMenuInfo oaMenuInfo : oaMenuInfos) {
			oaMenuInfo = getDefaultBean(oaMenuInfo, getRequest());
			
			oaMenuInfoService.saveOrUpdateOaMenuInfo(oaMenuInfo);
		}
	}
	
	/**
	 * 保存对象(新增和修改) OaMenuInfo
	 * @throws Exception
	 */
	public void saveOrUpdateOaMenuRoleMap() throws Exception{
		String apmeGuid = getRequest().getParameter("apmeGuid");
		String aproGuids = getRequest().getParameter("aproGuids");
		String[] aproGuidArray = aproGuids.split(",");
		
		for (String aproGuid : aproGuidArray) {
			OaMenuRoleMap oaMenuRoleMap = new OaMenuRoleMap();
			oaMenuRoleMap.setApmeGuid(apmeGuid);
			oaMenuRoleMap.setAproGuid(aproGuid);
			
			oaMenuInfoService.saveOrUpdateOaMenuRoleMap(oaMenuRoleMap);
		}
	}
	
	/**
	 * 删除对象 OaMenuInfo
	 * @throws Exception
	 */
	public void deleteOaMenuInfo() throws Exception{
		String apmeGuid = getRequest().getParameter("apmeGuid");
		String[] apmeGuids = apmeGuid.split(",");
		for (String guid : apmeGuids) {
			oaMenuInfoService.deleteOaMenuInfo(guid);
		}
	}
	
	/**
	 * 删除对象 OaMenuRoleMap
	 * @throws Exception
	 */
	public void deleteOaMenuRoleMap() throws Exception{
		String aprmmGuid = getRequest().getParameter("aprmmGuid");
		String[] aprmmGuids = aprmmGuid.split(",");
		for (String guid : aprmmGuids) {
			oaMenuInfoService.deleteOaMenuRoleMap(guid);
		}
	}
	
	/**
	 * 查询对象详细信息
	 * @throws Exception
	 */
	public void getOaMenuInfo() throws Exception{
		String apmeGuid = getRequest().getParameter("apmeGuid");
		
		OaMenuInfo oaMenuInfo =oaMenuInfoService.getOaMenuInfo(apmeGuid);

		detailResultWriteOut(oaMenuInfo);
	}

}
