package com.auto.oa.user.service.impl;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.auto.oa.menu.dao.IOaMenuRoleUserMapDAO;
import com.auto.oa.menu.domain.OaMenuRoleUserMap;
import com.auto.oa.user.dao.IOaUserInfoDAO;
import com.auto.oa.user.dao.IOaUserLoginDAO;
import com.auto.oa.user.dao.IOaUserOrgMapDAO;
import com.auto.oa.user.domain.OaUserInfo;
import com.auto.oa.user.domain.OaUserLogin;
import com.auto.oa.user.domain.OaUserOrgMap;
import com.auto.oa.user.service.IOaUserInfoService;
import com.system.common.Page;
import com.system.util.BeanUtil;
import com.system.util.JsonUtil;
import com.system.util.Md5Util;

@Service("oaUserInfoService")
public class OaUserInfoServiceImpl implements IOaUserInfoService {
	private Logger logger = Logger.getLogger(this.getClass());
	@Resource(name="oaUserInfoDAO")
	private IOaUserInfoDAO oaUserInfoDAO;
	
	@Resource(name="oaUserOrgMapDAO")
	private IOaUserOrgMapDAO oaUserOrgMapDAO;
	
	@Resource(name="oaMenuRoleUserMapDAO")
	private IOaMenuRoleUserMapDAO oaMenuRoleUserMapDAO;
	
	@Resource(name="oaUserLoginDAO")
	private IOaUserLoginDAO oaUserLoginDAO;
	
	public List<OaUserInfo> queryPageListOaUserInfo(OaUserInfo bean, Page page) throws Exception {
		try {
			List<OaUserInfo> resultList = null;
			
			Map<String, Object> param = BeanUtil.convertBeanToMap(bean);
			resultList = oaUserInfoDAO.queryPageListOaUserInfo(param, page);
			
			return resultList;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}
	
	public List<OaUserInfo> queryOaUserInfoList(OaUserInfo oaUserInfo) throws Exception {
		try {
			List<OaUserInfo> resultList = null;
			
			Map<String, Object> param = BeanUtil.convertBeanToMap(oaUserInfo);
			resultList = oaUserInfoDAO.queryListOaUserInfo(param);
			
			return resultList;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}

	}

	public boolean saveOrUpdateOaUserInfo(OaUserInfo oaUserInfo) throws Exception {
		try {
			boolean bool = true;
			
			if(BeanUtil.isObjectNotNull(oaUserInfo)){
				if(BeanUtil.isBlank(oaUserInfo.getAuserGuid())){
					oaUserInfoDAO.insertOaUserInfo(oaUserInfo);
				}else{
					oaUserInfoDAO.updateOaUserInfo(oaUserInfo);
				}
			}
			
			return bool;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}
	
	public boolean saveOrUpdateOaUserInfo(OaUserInfo oaUserInfo, OaUserOrgMap oaUserOrgMap) throws Exception {
		try {
			boolean bool = true;
			
			if(BeanUtil.isObjectNotNull(oaUserInfo)){
				if(BeanUtil.isBlank(oaUserInfo.getAuserGuid())){
					//没有设置密码则初始密码与工号一样
					if(BeanUtil.isBlank(oaUserInfo.getAuserPassword())){
						String password = oaUserInfo.getAuserCode();
						oaUserInfo.setAuserPassword(Md5Util.encryptByMD5(password));
					}
					oaUserInfoDAO.insertOaUserInfo(oaUserInfo);
					
					//用户组织关系对象 插入用户主键
					oaUserOrgMap.setAuserGuid(oaUserInfo.getAuserGuid());
					oaUserOrgMapDAO.insertOaUserOrgMap(oaUserOrgMap);
				}else{
					oaUserInfoDAO.updateOaUserInfo(oaUserInfo);
				}
			}
			
			return bool;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	public boolean deleteOaUserInfo(String guid) throws Exception {
		try {
			boolean bool = true;
			
			if(BeanUtil.isNotBlank(guid)){
				oaUserOrgMapDAO.deleteOaUserOrgMapByUserGuid(guid);
				oaUserInfoDAO.deleteOaUserInfo(guid);
			}else{
				bool = false;
			}
			
			return bool;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	public boolean deleteOaUserInfoByUserCode(String userCode) throws Exception {
		try {
			boolean bool = true;
			
			if(BeanUtil.isNotBlank(userCode)){
				OaUserInfo oaUserInfo = getOaUserInfoByUserCode(userCode);
				if(BeanUtil.isObjectNotNull(oaUserInfo)){
					String auserGuid = oaUserInfo.getAuserGuid();
					
					deleteOaUserInfo(auserGuid);
				}
			}else{
				bool = false;
			}
			
			return bool;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	public boolean checkUserCodeExists(String userCode) throws Exception {
		try {
			boolean bool = true;
			
			if(BeanUtil.isObjectNotNull(userCode)){
				OaUserInfo resultUserInfo = oaUserInfoDAO.loadOaUserInfoByUserCode(userCode);
				if(BeanUtil.isObjectNull(resultUserInfo)){
					bool = false;
				}
			}else{
				bool = false;
			}
			
			return bool;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
		
	}

	public OaUserInfo getOaUserInfo(String guid) throws Exception {
		try {
			OaUserInfo oaUserInfo = null;
			
			if(BeanUtil.isObjectNotNull(guid)){
				oaUserInfo = oaUserInfoDAO.loadOaUserInfo(guid);
			}
			
			return oaUserInfo;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	public OaUserInfo getOaUserInfoByUserCode(String userCode) throws Exception {
		try {
			OaUserInfo oaUserInfo = null;
			
			if(BeanUtil.isObjectNotNull(userCode)){
				oaUserInfo = oaUserInfoDAO.loadOaUserInfoByUserCode(userCode);
			}
			
			return oaUserInfo;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	public List<OaUserInfo> queryPageListUserOrg(OaUserInfo bean, Page page) throws Exception {
		try {
			List<OaUserInfo> resultList = null;
			
			Map<String, Object> param = BeanUtil.convertBeanToMap(bean);
			resultList = oaUserInfoDAO.queryPageListUserOrg(param, page);
			
			return resultList;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	public OaUserInfo getOaUserInfoForLogin(String userCode, String password) throws Exception {
		try {
			OaUserInfo oaUserInfo = null;
			if(BeanUtil.isNotBlank(userCode) && BeanUtil.isNotBlank(password)){
				OaUserInfo queryUser = new OaUserInfo();
				queryUser.setAuserCode(userCode);
				queryUser.setAuserPassword(Md5Util.encryptByMD5(password));
				
				Map<String, Object> param = BeanUtil.convertBeanToMap(queryUser);
				
				List<OaUserInfo> resultList = oaUserInfoDAO.queryListOaUserInfo(param);
				
				if(!resultList.isEmpty() && resultList.size()==1){
					oaUserInfo = resultList.get(0);
				}
			}
			System.out.println(JsonUtil.beanToJsonObject(oaUserInfo));
			logger.info(JsonUtil.beanToJsonObject(oaUserInfo));
			return oaUserInfo;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
		
	}

	public boolean isRoleUser(OaUserInfo oaUserInfo) throws Exception {
		try {
			boolean bool = false;
			
			String auserGuid = oaUserInfo.getAuserGuid();
			OaMenuRoleUserMap oaMenuRoleUserMap = new OaMenuRoleUserMap();
			oaMenuRoleUserMap.setAuserGuid(auserGuid);
			
			Map<String, Object> param = BeanUtil.convertBeanToMap(oaMenuRoleUserMap);
			List<OaMenuRoleUserMap> oaMenuRoleUserMaps = oaMenuRoleUserMapDAO.queryList(param);
			
			if(!oaMenuRoleUserMaps.isEmpty()){
				bool = true;
			}
			
			return bool;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	public OaUserInfo getUserOrg(String userCode) throws Exception {
		try {
			OaUserInfo oaUserInfo = new OaUserInfo();
			oaUserInfo.setAuserCode(userCode);
			
			Map<String, Object> param = BeanUtil.convertBeanToMap(oaUserInfo);
			List<OaUserInfo> list = oaUserInfoDAO.queryListUserOrg(param);
			
			OaUserInfo result = null;
			
			if(!list.isEmpty()){
				result = list.get(0);
			}
			
			return result;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	@Override
	public OaUserLogin saveOrUpdateOaUserLogin(OaUserLogin oaUserLogin) throws Exception {
		try {
			if(BeanUtil.isObjectNotNull(oaUserLogin)){
				Date auloLoginTime = new Date();
				String auloPoint = "100";
				oaUserLogin.setAuloLoginTime(auloLoginTime);
				oaUserLogin.setAuloPoint(auloPoint);
				oaUserLoginDAO.insertOaUserLogin(oaUserLogin);
			}
			
			return oaUserLogin;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	@Override
	public List<OaUserLogin> queryOaUserLoginList(OaUserLogin oaUserLogin) throws Exception {
		try {
			List<OaUserLogin> resultList = null;
			Map<String, Object> param = BeanUtil.convertBeanToMap(oaUserLogin);
			resultList = oaUserLoginDAO.queryList(param);
			
			return resultList;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	@Override
	public OaUserInfo updateOaUserInfoPWD(String userCode, String newPassword)	throws Exception {
		try {
			OaUserInfo oaUserInfo = getOaUserInfoByUserCode(userCode);
			newPassword = Md5Util.encryptByMD5(newPassword);
			oaUserInfo.setAuserPassword(newPassword);
			saveOrUpdateOaUserInfo(oaUserInfo);
			
			return oaUserInfo;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

}
