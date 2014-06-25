package com.auto.oa.menu.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.auto.oa.menu.dao.IOaMenuRoleDAO;
import com.auto.oa.menu.dao.IOaMenuRoleUserMapDAO;
import com.auto.oa.menu.domain.OaMenuRole;
import com.auto.oa.menu.domain.OaMenuRoleUserMap;
import com.auto.oa.menu.service.IOaMenuRoleService;
import com.system.common.Page;
import com.system.util.BeanUtil;

@Service("oaMenuRoleService")
public class OaMenuRoleServiceImpl implements IOaMenuRoleService {
	private static Logger logger = Logger.getLogger(OaMenuRoleServiceImpl.class);
	
	@Resource(name="oaMenuRoleDAO")
	private IOaMenuRoleDAO oaMenuRoleDAO;
	
	@Resource(name="oaMenuRoleUserMapDAO")
	private IOaMenuRoleUserMapDAO oaMenuRoleUserMapDAO;

	public List<OaMenuRole> queryPageListOaMenuRole(OaMenuRole bean, Page page) throws Exception {
		try {
			Map<String, Object> param = BeanUtil.convertBeanToMap(bean);
			List<OaMenuRole> resultList = oaMenuRoleDAO.queryPageList(param, page);
			
			return resultList;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	public List<OaMenuRole> queryTreeOaMenuRole(OaMenuRole bean) throws Exception {
		try {
			Map<String, Object> param = BeanUtil.convertBeanToMap(bean);
			List<OaMenuRole> resultList = oaMenuRoleDAO.queryList(param);
			
			return resultList;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}
	
	@Override
	public List<OaMenuRole> queryPageListOaMenuRoleUserInfo(OaMenuRole bean, Page page) throws Exception {
		try {
			Map<String, Object> param = BeanUtil.convertBeanToMap(bean);
			List<OaMenuRole> resultList = oaMenuRoleDAO.queryPageListOaMenuRoleOrgInfo(param, page);
			
			return resultList;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	public boolean saveOrUpdateOaMenuRole(OaMenuRole bean) throws Exception {
		try {
			boolean bool = false;
			if(BeanUtil.isObjectNotNull(bean)){
				if(BeanUtil.isBlank(bean.getAproGuid())){
					oaMenuRoleDAO.insertOaMenuRole(bean);
					bool = true;
				}else{
					oaMenuRoleDAO.updateOaMenuRole(bean);
					bool = true;
				}
			}
			
			return bool;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	public boolean deleteOaMenuRole(String guid) throws Exception {
		try {
			boolean bool = false;
			if(BeanUtil.isNotBlank(guid)){
				oaMenuRoleDAO.deleteOaMenuRole(guid);
				bool = true;
			}
			
			return bool;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	public OaMenuRole getOaMenuRole(String guid) throws Exception {
		try {
			OaMenuRole result = null;
			if(BeanUtil.isNotBlank(guid)){
				result = oaMenuRoleDAO.loadOaMenuRole(guid);
			}
			
			return result;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	public boolean saveOrUpdateOaMenuRoleUserMap(OaMenuRoleUserMap bean) throws Exception {
		try {
			boolean bool = false;
			if(BeanUtil.isObjectNotNull(bean)){
				if(BeanUtil.isBlank(bean.getAprumGuid())){
					oaMenuRoleUserMapDAO.insertOaMenuRoleUserMap(bean);
					bool = true;
				}else{
					oaMenuRoleUserMapDAO.updateOaMenuRoleUserMap(bean);
					bool = true;
				}
			}
			
			return bool;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	public boolean deleteOaMenuRoleUserMap(String guid) throws Exception {
		try {
			boolean bool = false;
			if(BeanUtil.isNotBlank(guid)){
				oaMenuRoleUserMapDAO.deleteOaMenuRoleUserMap(guid);
				bool = true;
			}
			
			return bool;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	public List<OaMenuRoleUserMap> queryListOaMenuRoleUserMap(OaMenuRoleUserMap bean) throws Exception {
		try {
			Map<String, Object> param = BeanUtil.convertBeanToMap(bean);
			List<OaMenuRoleUserMap> resultList = oaMenuRoleUserMapDAO.queryList(param);
			
			return resultList;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}



}
