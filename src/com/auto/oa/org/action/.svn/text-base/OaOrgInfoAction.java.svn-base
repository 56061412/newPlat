package com.auto.oa.org.action;

import java.util.List;

import javax.annotation.Resource;

import com.auto.oa.org.domain.OaOrgInfo;
import com.auto.oa.org.service.IOaOrgInfoService;
import com.system.common.BaseAction;
import com.system.util.JsonUtil;

public class OaOrgInfoAction extends BaseAction {

	private static final long serialVersionUID = 6471461180248806508L;
	
	@Resource(name="oaOrgInfoService")
	private IOaOrgInfoService oaOrgInfoService;
	
	/**
	 * @说明
	 * 查询组织信息对象树
	 * 按当前登录人员权限查询组织
	 * 例如：A公司管理员 只能查看A公司组织
	 * 系统管理员可以查看所有组织
	 * 
	 * @throws Exception
	 */
	public void queryTreeOaOrgInfo() throws Exception{
		try {
			String sessionUserCode = getSessionUserCode(getRequest());
			String search = getRequest().getParameter("search");

			OaOrgInfo oaOrgInfo = JsonUtil.jsonToBean(search, OaOrgInfo.class);

			List<OaOrgInfo> list = oaOrgInfoService.queryTreeOaOrgInfo(oaOrgInfo, sessionUserCode);
			
			pageTreeWriteOut(list);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 保存组织信息对象
	 * @throws Exception
	 */
	public void saveOrUpdateOaOrgInfo() throws Exception{
		String data = getRequest().getParameter("data");
		
		List<OaOrgInfo> list = JsonUtil.jsonToList(data, OaOrgInfo.class);
		for (OaOrgInfo oaOrgInfo : list) {
			oaOrgInfo = getDefaultBean(oaOrgInfo, getRequest());
			oaOrgInfoService.saveOrUpdateOaOrgInfo(oaOrgInfo);
		}
	}
	
	/**
	 * 删除组织信息对象
	 * @throws Exception
	 */
	public void deleteOaOrgInfo() throws Exception{
		String auorgGuid = getRequest().getParameter("auorgGuid");
		String[] auorgGuids = auorgGuid.split(",");
		for (String guid : auorgGuids) {
			oaOrgInfoService.deleteOaOrgInfo(guid);
		}
	}
	
	/**
	 * 获取区域对象详细信息
	 * @throws Exception
	 */
	public void getOaOrgInfo() throws Exception{
		String auorgGuid = getRequest().getParameter("auorgGuid");
		OaOrgInfo oaOrgInfo = oaOrgInfoService.getOaOrgInfo(auorgGuid);
		detailResultWriteOut(oaOrgInfo);
	}

}
