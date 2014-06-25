package com.auto.oa.org.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.auto.oa.menu.dao.IOaMenuRoleUserMapDAO;
import com.auto.oa.menu.domain.OaMenuRoleUserMap;
import com.auto.oa.org.dao.IOaOrgInfoDAO;
import com.auto.oa.org.domain.OaOrgInfo;
import com.auto.oa.org.service.IOaOrgInfoService;
import com.auto.oa.user.dao.IOaUserInfoDAO;
import com.auto.oa.user.dao.IOaUserOrgMapDAO;
import com.auto.oa.user.domain.OaUserInfo;
import com.auto.oa.user.domain.OaUserOrgMap;
import com.system.util.BeanUtil;

@Service("oaOrgInfoService")
public class OaOrgInfoServiceImpl implements IOaOrgInfoService {
	private static Logger logger = Logger.getLogger(OaOrgInfoServiceImpl.class);
	@Resource(name="oaOrgInfoDAO")
	private IOaOrgInfoDAO oaOrgInfoDAO;
	@Resource(name="oaUserInfoDAO")
	private IOaUserInfoDAO oaUserInfoDAO;
	@Resource(name="oaUserOrgMapDAO")
	private IOaUserOrgMapDAO oaUserOrgMapDAO;
	
	
	@Resource(name="oaMenuRoleUserMapDAO")
	private IOaMenuRoleUserMapDAO oaMenuRoleUserMapDAO;

	public synchronized List<OaOrgInfo> queryTreeOaOrgInfo(OaOrgInfo bean, String sessionUserCode) throws Exception {
		try {
			Map<String, Object> param = BeanUtil.convertBeanToMap(bean);
			if(null == bean.getAuorgParentGuid() || "".equals(bean.getAuorgParentGuid())){
				//查询登录人所在组织
				String userCode = sessionUserCode;
				OaUserInfo oaUserInfo = oaUserInfoDAO.loadOaUserInfoByUserCode(userCode);
				String auserGuid = oaUserInfo.getAuserGuid();
				
				OaMenuRoleUserMap oaMenuRoleUserMap = new OaMenuRoleUserMap();
				oaMenuRoleUserMap.setAuserGuid(auserGuid);
				Map<String, Object> menuRoleParam = BeanUtil.convertBeanToMap(oaMenuRoleUserMap);
				List<OaMenuRoleUserMap> roleUserMapList = oaMenuRoleUserMapDAO.queryList(menuRoleParam);
				
				param.put("auorgGuidList", roleUserMapList);
			}
			
			//按组织名称排序
			param.put("displayOrder", "AUORG_NAME");
			
			List<OaOrgInfo> resultList = oaOrgInfoDAO.queryOaOrgInfo(param);
			
			return resultList;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}
	
	public List<OaOrgInfo> queryListOaOrgInfo(OaOrgInfo bean) throws Exception {
		try {
			Map<String, Object> param = BeanUtil.convertBeanToMap(bean);
			List<OaOrgInfo> resultList = oaOrgInfoDAO.queryOaOrgInfo(param);
			
			return resultList;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	public synchronized boolean saveOrUpdateOaOrgInfo(OaOrgInfo bean) throws Exception {
		try {
			if(BeanUtil.isObjectNotNull(bean)){
				if(BeanUtil.isBlank(bean.getAuorgGuid())){
					//初始化默认参数 树节点深度和树完整路径
					String auorgParentGuid = bean.getAuorgParentGuid();
					if(!BeanUtil.isBlank(auorgParentGuid)){
						oaOrgInfoDAO.insertOaOrgInfo(bean);
						
						bean = initOaOrgInfo(bean);
						
						saveOrUpdateOaOrgInfo(bean);
						
						return true;
					}else{
						return false;
					}
				}else{
					oaOrgInfoDAO.updateOaOrgInfo(bean);
					
					return true;
				}
			}
			return false;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}
	
	/**
	 * @说明
	 * 新增时初始化组织对象
	 * 深度字段：父节点深度+1
	 * 完整路径字段：父节点路径+/+当前对象主键
	 * 
	 * @param bean
	 * @return
	 * @throws Exception
	 */
	private OaOrgInfo initOaOrgInfo(OaOrgInfo bean) throws Exception {
		try {
			String auorgGuid = bean.getAuorgParentGuid();
			OaOrgInfo oaOrgInfo = getOaOrgInfo(auorgGuid);
			String auorgDepth = oaOrgInfo.getAuorgDepth();
			String auorgFullPath = oaOrgInfo.getAuorgFullPath();
			int newDepth = Integer.parseInt(auorgDepth) + 1;
			String newFullPath = auorgFullPath + "/" + bean.getAuorgGuid();
			
			bean.setAuorgDepth(String.valueOf(newDepth));
			bean.setAuorgFullPath(newFullPath);
			
			return bean;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	public synchronized boolean deleteOaOrgInfo(String guid) throws Exception {
		try {
			if(!BeanUtil.isBlank(guid)){
				oaOrgInfoDAO.deleteOaOrgInfo(guid);
				
				return true;
			}
			return false;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	public synchronized boolean deleteOaOrgInfoByOrgCode(String orgCode) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	public synchronized boolean checkOrgCodeExists(String orgCode) throws Exception {
		try {
			boolean bool = false;
			
			return bool;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	public synchronized OaOrgInfo getOaOrgInfo(String guid) throws Exception {
		try {
			OaOrgInfo oaOrgInfo = null;
			if(!BeanUtil.isBlank(guid)){
				oaOrgInfo = oaOrgInfoDAO.loadOaOrgInfo(guid);
			}
			
			return oaOrgInfo;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	public synchronized OaOrgInfo getOaOrgInfoByOrgCode(String orgCode) throws Exception {
		try {
			OaOrgInfo oaOrgInfo = null;
			if(BeanUtil.isNotBlank(orgCode)){
				oaOrgInfo = oaOrgInfoDAO.loadOaOrgInfoByOrgCode(orgCode);
			}
			
			return oaOrgInfo;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	@Override
	public OaUserOrgMap getOaUserOrgMapByUserGuid(String userGuid) throws Exception {
		try {
			OaUserOrgMap oaUserOrgMapResult = null;
			if(BeanUtil.isNotBlank(userGuid)){
				OaUserOrgMap oaUserOrgMap = new OaUserOrgMap();
				oaUserOrgMap.setAuserGuid(userGuid);
				
				Map<String, Object> oaUserOrgMapParam = BeanUtil.convertBeanToMap(oaUserOrgMap);
				
				List<OaUserOrgMap> oaUserOrgMaps = oaUserOrgMapDAO.queryListOaUserOrgMap(oaUserOrgMapParam);
				if(!oaUserOrgMaps.isEmpty()){
					oaUserOrgMapResult = oaUserOrgMaps.get(0);
				}
			}
			
			return oaUserOrgMapResult;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

}
