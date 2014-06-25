package com.auto.oa.org.domain.proxy;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.auto.oa.org.domain.OaOrgInfo;
import com.auto.oa.user.dao.IOaUserInfoDAO;
import com.auto.oa.user.domain.OaUserInfo;
import com.auto.sns.util.UserUtil;
import com.system.common.BeanContext;
import com.system.util.BeanUtil;

public class OaOrgInfoProxy {
	
	public static OaOrgInfo getOaOrgInfo(OaOrgInfo oaOrgInfo) throws IllegalArgumentException, IllegalAccessException{
		if(BeanUtil.isObjectNotNull(oaOrgInfo)){
			String orgGuid = oaOrgInfo.getAuorgGuid();
			String orgCode = oaOrgInfo.getAuorgCode();
			
			List<OaUserInfo> oaUserInfos = new ArrayList<OaUserInfo>();
			if(BeanUtil.isNotBlank(orgGuid)){
				oaUserInfos = getOaUserInfosByOrgGuid(orgGuid);
			}else if(BeanUtil.isNotBlank(orgCode)){
				oaUserInfos = getOaUserInfosByOrgCode(orgCode);
			}
			
			oaOrgInfo.setOaUserInfos(oaUserInfos);
		}
		
		return oaOrgInfo;
	}
	
	/**
	 *  根据组织主键查询组织成员列表信息
	 * @param orgGuid
	 * @return
	 * @throws IllegalArgumentException
	 * @throws IllegalAccessException
	 */
	private static List<OaUserInfo> getOaUserInfosByOrgGuid(String orgGuid) throws IllegalArgumentException, IllegalAccessException{
		List<OaUserInfo> oaUserInfos = new ArrayList<OaUserInfo>();
		if(BeanUtil.isNotBlank(orgGuid)){
			OaUserInfo oaUserInfo = new OaUserInfo();
			oaUserInfo.setAuorgGuid(orgGuid);
			
			oaUserInfos = getOaUserInfos(oaUserInfo);
		}
		
		return oaUserInfos;
	}
	
	/**
	 * 根据组织代码查询组织成员列表信息
	 * @param orgCode
	 * @return
	 * @throws IllegalArgumentException
	 * @throws IllegalAccessException
	 */
	private static List<OaUserInfo> getOaUserInfosByOrgCode(String orgCode) throws IllegalArgumentException, IllegalAccessException{
		List<OaUserInfo> oaUserInfos = new ArrayList<OaUserInfo>();
		if(BeanUtil.isNotBlank(orgCode)){
			OaUserInfo oaUserInfo = new OaUserInfo();
			oaUserInfo.setAuorgCode(orgCode);
			
			oaUserInfos = getOaUserInfos(oaUserInfo);
		}
		
		return oaUserInfos;
	}
	
	/**
	 * 获取用户列表信息
	 * @param oaUserInfo
	 * @return
	 * @throws IllegalArgumentException
	 * @throws IllegalAccessException
	 */
	private static List<OaUserInfo> getOaUserInfos(OaUserInfo oaUserInfo) throws IllegalArgumentException, IllegalAccessException{
		List<OaUserInfo> oaUserInfos = new ArrayList<OaUserInfo>();
		
		IOaUserInfoDAO oaUserInfoDAO = (IOaUserInfoDAO)BeanContext.getBean("oaUserInfoDAO");
		Map<String,Object> param = BeanUtil.convertBeanToMap(oaUserInfo);
		oaUserInfos = oaUserInfoDAO.queryListUserOrg(param);
		
		//用户头像信息
		for (OaUserInfo oaUserInfoRS : oaUserInfos) {
			String userGuid = oaUserInfoRS.getAuserGuid();
			String userHeadImagePath = UserUtil.getUserImgByUserGuid(userGuid);
			oaUserInfoRS.setUserHeadImagePath(userHeadImagePath);
		}
		
		return oaUserInfos;
	}

}
