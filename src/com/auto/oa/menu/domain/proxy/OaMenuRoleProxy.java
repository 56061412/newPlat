package com.auto.oa.menu.domain.proxy;

import java.util.List;
import java.util.Map;

import com.auto.oa.menu.dao.IOaMenuRoleMapDAO;
import com.auto.oa.menu.domain.OaMenuRole;
import com.auto.oa.menu.domain.OaMenuRoleMap;
import com.system.common.BeanContext;
import com.system.util.BeanUtil;

public class OaMenuRoleProxy {
	
	public static OaMenuRole getOaMenuRole(OaMenuRole oaMenuRole) throws IllegalArgumentException, IllegalAccessException{
		String oaMenuRoleMapGuid = oaMenuRole.getAproGuid();
		List<OaMenuRoleMap> oaMenuRoleMaps = getOaMenuRoleMaps(oaMenuRoleMapGuid);
		
		oaMenuRole.setOaMenuRoleMaps(oaMenuRoleMaps);
		
		return oaMenuRole;
	}
	
	private static List<OaMenuRoleMap> getOaMenuRoleMaps(String oaMenuRoleMapGuid) throws IllegalArgumentException, IllegalAccessException {
		List<OaMenuRoleMap> oaMenuRoleMaps = null;
		if(BeanUtil.isNotBlank(oaMenuRoleMapGuid)){
			IOaMenuRoleMapDAO oaMenuRoleMapDAO = (IOaMenuRoleMapDAO) BeanContext.getBean("OaMenuRoleMapDAO");
			
			OaMenuRoleMap queryOaMenuRoleMap = new OaMenuRoleMap();
			queryOaMenuRoleMap.setAproGuid(oaMenuRoleMapGuid);
			
			Map<String,Object> param = BeanUtil.convertBeanToMap(queryOaMenuRoleMap);
			
			oaMenuRoleMaps = oaMenuRoleMapDAO.queryList(param);
		}
		
		return oaMenuRoleMaps;
	}

}
