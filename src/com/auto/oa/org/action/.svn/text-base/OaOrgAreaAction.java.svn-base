package com.auto.oa.org.action;

import java.util.List;

import javax.annotation.Resource;

import com.auto.oa.org.domain.OaOrgArea;
import com.auto.oa.org.service.IOaOrgAreaService;
import com.system.common.BaseAction;
import com.system.common.Page;
import com.system.util.JsonUtil;

public class OaOrgAreaAction extends BaseAction {

	private static final long serialVersionUID = 8985541072137774072L;
	
	@Resource(name="oaOrgAreaService")
	private IOaOrgAreaService oaOrgAreaService;
	
	/**
	 * 查询区域对象
	 * 树结构显示
	 */
	public void queryTreeOaOrgArea() throws Exception{
		String search = getRequest().getParameter("search");
		
		OaOrgArea oaOrgArea = (OaOrgArea) JsonUtil.jsonToBean(search, OaOrgArea.class);

		List<OaOrgArea> list = oaOrgAreaService.queryTreeOaOrgArea(oaOrgArea);
		
		pageTreeWriteOut(list);
	}
	
	/**
	 * 查询区域对象
	 * 列表结构显示
	 */
	public void queryPageListOaOrgArea() throws Exception{
		Page page = getPage();

		String search = getRequest().getParameter("search");
		
		OaOrgArea oaOrgArea = (OaOrgArea) JsonUtil.jsonToBean(search, OaOrgArea.class);
		//设置按修改数据倒排序 最新修改的在最上面
		oaOrgArea.setDisplayOrder("UPDATE_TIME DESC");

		List<OaOrgArea> list = oaOrgAreaService.queryPageListOaOrgArea(oaOrgArea, page);
		
		pageListWriteOut(list, page);
	}
	
	/**
	 * 保存区域对象
	 * @throws Exception
	 */
	public void saveOrUpdateOaOrgArea() throws Exception{
		String data = getRequest().getParameter("data");
		
		List<OaOrgArea> list = JsonUtil.jsonToList(data, OaOrgArea.class);
		for (OaOrgArea oaOrgArea : list) {
			oaOrgArea = getDefaultBean(oaOrgArea, getRequest());
			oaOrgAreaService.saveOrUpdateOaOrgArea(oaOrgArea);
		}

	}
	
	/**
	 * 删除区域对象
	 * @throws Exception
	 */
	public void deleteOaOrgArea() throws Exception{
		String auarGuid = getRequest().getParameter("auarGuid");
		String[] auarGuids = auarGuid.split(",");
		for (String guid : auarGuids) {
			oaOrgAreaService.deleteOaOrgArea(guid);
		}
	}
	
	/**
	 * 获取区域对象详细信息
	 * @throws Exception
	 */
	public void getOaOrgArea() throws Exception{
		String auarGuid = getRequest().getParameter("auarGuid");
		
		OaOrgArea oaOrgArea = oaOrgAreaService.getOaOrgArea(auarGuid);

		detailResultWriteOut(oaOrgArea);
	}

}
