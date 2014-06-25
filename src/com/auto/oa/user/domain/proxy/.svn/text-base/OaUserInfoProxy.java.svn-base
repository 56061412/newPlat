package com.auto.oa.user.domain.proxy;

import java.util.List;
import java.util.Map;

import com.auto.oa.menu.dao.IOaMenuRoleDAO;
import com.auto.oa.menu.dao.IOaMenuRoleUserMapDAO;
import com.auto.oa.menu.domain.OaMenuRole;
import com.auto.oa.menu.domain.OaMenuRoleUserMap;
import com.auto.oa.sys.dao.IOaSysAttachmentDAO;
import com.auto.oa.sys.domain.OaSysAttachment;
import com.auto.oa.user.domain.OaUserInfo;
import com.auto.sns.util.UserUtil;
import com.auto.tools.AutoUtils;
import com.system.common.BeanContext;
import com.system.util.BeanUtil;

public class OaUserInfoProxy {
	
	public static OaUserInfo getOaUserInfo(OaUserInfo oaUserInfo) throws Exception{
		if(BeanUtil.isObjectNotNull(oaUserInfo)){
			String userGuid = oaUserInfo.getAuserGuid();
			String userCode = oaUserInfo.getAuserCode();
			String isPublishTask = getPublishTask(userGuid);
			oaUserInfo.setIsPublishTask(isPublishTask);
			
			String userHeadImagePath = getUserHeadIamgePath(userGuid);
			oaUserInfo.setUserHeadImagePath(userHeadImagePath);
			
			String userOrgCode = getOrgCode(userCode);
			oaUserInfo.setAuorgCode(userOrgCode);
			
			String userOrgName = getOrgName(userOrgCode);
			oaUserInfo.setAuorgName(userOrgName);
		}
		
		return oaUserInfo;
	}
	
	
	private static String getPublishTask(String userGuid) throws IllegalArgumentException, IllegalAccessException{
		String rtn = "-1";
		if(BeanUtil.isNotBlank(userGuid)){
			String roleCode = "PUBLISH_TASK";
			IOaMenuRoleDAO oaMenuRoleDAO = (IOaMenuRoleDAO)BeanContext.getBean("oaMenuRoleDAO");
			OaMenuRole oaMenuRole = new OaMenuRole();
			oaMenuRole.setAproRoleCode(roleCode);
			
			Map<String,Object> paramRole = BeanUtil.convertBeanToMap(oaMenuRole);
			List<OaMenuRole> oaMenuRoles = oaMenuRoleDAO.queryList(paramRole);
			if(!oaMenuRoles.isEmpty()){
				oaMenuRole = oaMenuRoles.get(0);
				String roleGuid = oaMenuRole.getAproGuid();
				
				IOaMenuRoleUserMapDAO oaMenuRoleUserMapDAO = (IOaMenuRoleUserMapDAO)BeanContext.getBean("oaMenuRoleUserMapDAO");
				
				OaMenuRoleUserMap oaMenuRoleUserMap = new OaMenuRoleUserMap();
				oaMenuRoleUserMap.setAuserGuid(userGuid);
				oaMenuRoleUserMap.setAproGuid(roleGuid);
				
				Map<String,Object> param = BeanUtil.convertBeanToMap(oaMenuRoleUserMap);
				List<OaMenuRoleUserMap> oaMenuRoleUserMaps = oaMenuRoleUserMapDAO.queryList(param);
				if(!oaMenuRoleUserMaps.isEmpty()){
					rtn = "1";
				}
			}
		}
		
		return rtn;
	}
	
	public static String getUserHeadIamgePath(String userGuid) throws IllegalArgumentException, IllegalAccessException{
		String rtn = UserUtil.getUserImgByUserGuid(userGuid);
		
		return rtn;
	}
	
	public static String getOrgCode(String userCode) throws Exception{
		String rtn = "";
		if(BeanUtil.isNotBlank(userCode)){
			String orgCode = AutoUtils.getUserOrgCode(userCode);
			
			rtn = orgCode;
		}
		
		return rtn;
	}
	
	public static String getOrgName(String orgCode) throws Exception{
		String orgName = "";
		if(BeanUtil.isNotBlank(orgCode)){
			orgName = AutoUtils.getUserOrgName(orgCode);
		}
		
		return orgName;
	}

}
