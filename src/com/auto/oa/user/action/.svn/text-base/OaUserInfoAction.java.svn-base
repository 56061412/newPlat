package com.auto.oa.user.action;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import com.auto.oa.user.domain.OaUserInfo;
import com.auto.oa.user.domain.OaUserOrgMap;
import com.auto.oa.user.service.IOaUserInfoService;
import com.system.common.BaseAction;
import com.system.common.Page;
import com.system.util.JsonUtil;
import com.system.util.Md5Util;

public class OaUserInfoAction extends BaseAction {

	private static final long serialVersionUID = -4968192336002287252L;
	
	@Resource(name="oaUserInfoService")
	private IOaUserInfoService oaUserInfoService;

	/**
	 * 通过点击树节点传入组织查询对象列表 OaUserInfo
	 */
	public void queryPageListOaUserInfo() throws Exception{
		Page page = getPage();

		String search = getRequest().getParameter("search");
		OaUserInfo oaUserInfo = (OaUserInfo) JsonUtil.jsonToBean(search, OaUserInfo.class);
		List<OaUserInfo> oaUserInfos = new ArrayList<OaUserInfo>();
		oaUserInfos = oaUserInfoService.queryPageListUserOrg(oaUserInfo, page);
		
		pageListWriteOut(oaUserInfos, page);
	}
	
	/**
	 * 保存对象(新增和修改) OaUserInfo
	 * @throws Exception
	 */
	public void saveOrUpdateOaUserInfo() throws Exception{
		String data = getRequest().getParameter("data");
		List<OaUserInfo> listUserInfo = JsonUtil.jsonToList(data, OaUserInfo.class);
		List<OaUserOrgMap> listUserOrgMap = JsonUtil.jsonToList(data, OaUserOrgMap.class);
		//OaUserOrgMap oaUserOrgMap = JsonUtil.jsonToBean(data, OaUserOrgMap.class);
		for (OaUserInfo oaUserInfo : listUserInfo) {
			oaUserInfo = getDefaultBean(oaUserInfo, getRequest());

			oaUserInfoService.saveOrUpdateOaUserInfo(oaUserInfo, listUserOrgMap.get(0));
		}
	}
	
	/**
	 * 删除对象 OaUserInfo
	 * @throws Exception
	 */
	public void deleteOaUserInfo() throws Exception{
		String auserGuid = getRequest().getParameter("auserGuid");
		String[] auserGuids = auserGuid.split(",");
		for (String guid : auserGuids) {
			boolean b = oaUserInfoService.deleteOaUserInfo(guid);
			System.out.println(b);
		}
	}
	
	/**
	 * 查询对象详细信息
	 * @throws Exception
	 */
	public void getOaUserInfo() throws Exception{
		String auserGuid = getRequest().getParameter("auserGuid");
		OaUserInfo oaUserInfo = oaUserInfoService.getOaUserInfo(auserGuid);
		detailResultWriteOut(oaUserInfo);
	}
	
	/**
	 * 修改密码
	 * @throws Exception
	 */
	public void resetPWDOaUserInfo() throws Exception{
		String userCode = getSessionUserCode();
		System.out.println("userCode===="+userCode);
		String oldpwd = getRequest().getParameter("oldpwds");
		System.out.println("oldpwd===="+oldpwd);
		String newPassword = getRequest().getParameter("newpwds");
		System.out.println("newPassword====" + newPassword);
		
		oaUserInfoService.updateOaUserInfoPWD(userCode, newPassword);
	}
	
	public void resetUserPWD() throws Exception{
		String auserGuid = getRequest().getParameter("auserGuid");
		System.out.println("auserGuid===="+auserGuid);
		String newPassword = getRequest().getParameter("newpwds");
		System.out.println("newPassword====" + newPassword);
		
		OaUserInfo oaUserInfo= new OaUserInfo();
		oaUserInfo.setAuserGuid(auserGuid);
		newPassword = Md5Util.encryptByMD5(newPassword);
		oaUserInfo.setAuserPassword(newPassword);
		
		oaUserInfoService.saveOrUpdateOaUserInfo(oaUserInfo);
	}
	
	
}
