package com.auto.oa.menu.rest;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.auto.oa.menu.domain.OaMenuInfo;
import com.auto.oa.menu.domain.OaMenuRoleMap;
import com.auto.oa.menu.service.IOaMenuInfoService;
import com.auto.tools.AutoUtils;
import com.system.common.Page;
import com.system.util.JsonUtil;

@Path("/oaMenuInfo")
public class OaMenuInfoRest {
	@Resource(name="oaMenuInfoService")
	private IOaMenuInfoService oaMenuInfoService;
	
	@GET
	@Path("/queryFirstMenu/{userCode}")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 查询导航一级菜单
	 * @throws Exception
	 */
	public String queryFirstMenu(@PathParam("userCode") String userCode) throws Exception{
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
		
		return AutoUtils.pageTreeWriteOut(oaMenuInfos);
	}
	
	/**
	 * 查询菜单对象(OaMenuInfo)</br>
	 * 树结构显示
	 */
	public String queryTreeOaMenuInfo(HttpServletRequest request) throws Exception{
		String search = request.getParameter("search");
		OaMenuInfo oaMenuInfo = JsonUtil.jsonToBean(search, OaMenuInfo.class);
		
		List<OaMenuInfo> oaMenuInfos =oaMenuInfoService.queryTreeOaMenuInfo(oaMenuInfo);
		
		return AutoUtils.pageTreeWriteOut(oaMenuInfos);
	}
	
	/**
	 * 查询菜单对象(OaMenuInfo)</br>
	 * 列表结构显示
	 */
	public String queryPageListOaMenuInfo(HttpServletRequest request) throws Exception{
		Page page = AutoUtils.getPage(request);
		String search = request.getParameter("search");
		
		OaMenuInfo oaMenuInfo = JsonUtil.jsonToBean(search, OaMenuInfo.class);
		
		List<OaMenuInfo> oaMenuInfos =oaMenuInfoService.queryPageListOaMenuInfo(oaMenuInfo, page);
		
		return AutoUtils.pageListWriteOut(oaMenuInfos, page);
	}
	
	/**
	 * 查询菜单角色扩展对象(OaMenuInfoExtend)</br>
	 * 列表结构显示
	 */
	public void queryPageListOaMenuInfoExtend() throws Exception{
//		Page page = getPage();
//		String search = request.getParameter("search");
		
//		OaMenuInfoExtend oaMenuInfoExtend = JsonUtil.jsonToBean(search, OaMenuInfoExtend.class);
//		
//		List<OaMenuInfoExtend> list =oaMenuInfoService.queryPageListOaMenuInfoExtend(oaMenuInfoExtend, page);
		
//		pageListWriteOut(list, page);
	}
	
	/**
	 * 保存对象(新增和修改) OaMenuInfo
	 * @throws Exception
	 */
	public void saveOrUpdateOaMenuInfo(HttpServletRequest request) throws Exception{
		String data = request.getParameter("data");
		
		List<OaMenuInfo> oaMenuInfos = JsonUtil.jsonToList(data, OaMenuInfo.class);
		for (OaMenuInfo oaMenuInfo : oaMenuInfos) {
			oaMenuInfoService.saveOrUpdateOaMenuInfo(oaMenuInfo);
		}
	}
	
	/**
	 * 保存对象(新增和修改) OaMenuInfo
	 * @throws Exception
	 */
	public void saveOrUpdateOaMenuRoleMap(HttpServletRequest request) throws Exception{
		String apmeGuid = request.getParameter("apmeGuid");
		String aproGuids = request.getParameter("aproGuids");
		String[] aproGuidArray = aproGuids.split(",");
		
		for (String aproGuid : aproGuidArray) {
			OaMenuRoleMap oaMenuRoleMap = new OaMenuRoleMap();
			oaMenuRoleMap.setApmeGuid(apmeGuid);
			oaMenuRoleMap.setAproGuid(aproGuid);
			
			oaMenuInfoService.saveOrUpdateOaMenuRoleMap(oaMenuRoleMap);
		}
	}
	
	@POST
	@Path("/deleteOaMenuInfo/{apmeGuid}")
	/**
	 * 删除对象 OaMenuInfo
	 * @throws Exception
	 */
	public void deleteOaMenuInfo(@PathParam("apmeGuid")String apmeGuid) throws Exception{
		System.out.println("rest............deleteOaMenuInfo............start.............");
		String[] apmeGuids = apmeGuid.split(",");
		for (String guid : apmeGuids) {
			oaMenuInfoService.deleteOaMenuInfo(guid);
		}
	}
	
	/**
	 * 删除对象 OaMenuRoleMap
	 * @throws Exception
	 */
	public void deleteOaMenuRoleMap(HttpServletRequest request) throws Exception{
		String aprmmGuid = request.getParameter("aprmmGuid");
		String[] aprmmGuids = aprmmGuid.split(",");
		for (String guid : aprmmGuids) {
			oaMenuInfoService.deleteOaMenuRoleMap(guid);
		}
	}
	
	/**
	 * 查询对象详细信息
	 * @throws Exception
	 */
	public String getOaMenuInfo(HttpServletRequest request) throws Exception{
		String apmeGuid = request.getParameter("apmeGuid");
		
		OaMenuInfo oaMenuInfo =oaMenuInfoService.getOaMenuInfo(apmeGuid);

		return AutoUtils.detailResultWriteOut(oaMenuInfo);
	}

}
