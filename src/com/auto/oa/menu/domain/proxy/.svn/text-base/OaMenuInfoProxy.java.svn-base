package com.auto.oa.menu.domain.proxy;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.auto.oa.menu.dao.IOaMenuInfoDAO;
import com.auto.oa.menu.dao.IOaMenuRoleMapDAO;
import com.auto.oa.menu.domain.OaMenuInfo;
import com.auto.oa.menu.domain.OaMenuRoleMap;
import com.system.common.BeanContext;
import com.system.util.BeanUtil;

public class OaMenuInfoProxy {
	
	public static OaMenuInfo getOaMenuRole(OaMenuInfo oaMenuInfo) throws IllegalArgumentException, IllegalAccessException{
		if(BeanUtil.isObjectNotNull(oaMenuInfo)){
			String oaMenuInfoParentGuid = oaMenuInfo.getApmeParentGuid();
			OaMenuInfo parentOaMenuInfo = getParentOaMenuInfo(oaMenuInfoParentGuid);
			
			oaMenuInfo.setParentOaMenuInfo(parentOaMenuInfo);
			
			String oaMenuInfoGuid = oaMenuInfo.getApmeGuid();
			List<OaMenuInfo> oaMenuInfoChilds = getOaMenuInfoChilds(oaMenuInfoGuid);
			
			oaMenuInfo.setOaMenuInfoChilds(oaMenuInfoChilds);
			
			List<OaMenuRoleMap> oaMenuRoleMaps = getOaMenuRoleMaps(oaMenuInfoGuid);
			
			oaMenuInfo.setOaMenuRoleMaps(oaMenuRoleMaps);
		}
		
		return oaMenuInfo;
	}
	
	private static OaMenuInfo getParentOaMenuInfo(String oaMenuInfoParentGuid) {
		OaMenuInfo parentOaMenuInfo = null;
		if(BeanUtil.isNotBlank(oaMenuInfoParentGuid)){
			IOaMenuInfoDAO oaMenuInfoDAO = (IOaMenuInfoDAO) BeanContext.getBean("oaMenuInfoDAO");
			
			parentOaMenuInfo = oaMenuInfoDAO.loadOaMenuInfo(oaMenuInfoParentGuid);
		}
		
		return parentOaMenuInfo;
	}

	private static List<OaMenuInfo> getOaMenuInfoChilds(String oaMenuInfoGuid) throws IllegalArgumentException, IllegalAccessException {
		List<OaMenuInfo> oaMenuInfoChilds = null;
		if(BeanUtil.isNotBlank(oaMenuInfoGuid)){
			IOaMenuInfoDAO oaMenuInfoDAO = (IOaMenuInfoDAO) BeanContext.getBean("oaMenuInfoDAO");
			
			OaMenuInfo queryMenuInfo = new OaMenuInfo();
			queryMenuInfo.setApmeParentGuid(oaMenuInfoGuid);
			
			Map<String,Object> param = BeanUtil.convertBeanToMap(queryMenuInfo);
			
			oaMenuInfoChilds = oaMenuInfoDAO.queryList(param);
		}else{
			oaMenuInfoChilds = new ArrayList<OaMenuInfo>();
		}
		
		return oaMenuInfoChilds;
	}

	private static List<OaMenuRoleMap> getOaMenuRoleMaps(String oaMenuInfoGuid) throws IllegalArgumentException, IllegalAccessException {
		List<OaMenuRoleMap> oaMenuRoleMaps = null;
		if(BeanUtil.isNotBlank(oaMenuInfoGuid)){
			IOaMenuRoleMapDAO oaMenuRoleMapDAO = (IOaMenuRoleMapDAO) BeanContext.getBean("oaMenuRoleMapDAO");
			
			OaMenuRoleMap queryOaMenuRoleMap = new OaMenuRoleMap();
			queryOaMenuRoleMap.setApmeGuid(oaMenuInfoGuid);
			
			Map<String,Object> param = BeanUtil.convertBeanToMap(queryOaMenuRoleMap);
			
			oaMenuRoleMaps = oaMenuRoleMapDAO.queryList(param);
		}
		
		return oaMenuRoleMaps;
	}

}
