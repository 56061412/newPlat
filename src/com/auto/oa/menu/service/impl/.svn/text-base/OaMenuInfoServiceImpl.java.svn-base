package com.auto.oa.menu.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Service;

import com.auto.oa.menu.dao.IOaMenuInfoDAO;
import com.auto.oa.menu.dao.IOaMenuRoleMapDAO;
import com.auto.oa.menu.domain.OaMenuInfo;
import com.auto.oa.menu.domain.OaMenuRoleMap;
import com.auto.oa.menu.service.IOaMenuInfoService;
import com.system.common.Page;
import com.system.util.BeanUtil;

@ComponentScan("oaMenuInfoService")
@Service("oaMenuInfoService")
public class OaMenuInfoServiceImpl implements IOaMenuInfoService {
	private static Logger logger = Logger.getLogger(OaMenuInfoServiceImpl.class);
	
	@Resource(name="oaMenuInfoDAO")
	private IOaMenuInfoDAO oaMenuInfoDAO;
	
	@Resource(name="oaMenuRoleMapDAO")
	private IOaMenuRoleMapDAO oaMenuRoleMapDAO;
	
	public List<OaMenuInfo> queryPageListOaMenuInfo(OaMenuInfo bean, Page page)	throws Exception {
		try {
			Map<String, Object> param = BeanUtil.convertBeanToMap(bean);
			param.put("displayOrder", "APME_SORT");
			List<OaMenuInfo> resultList = oaMenuInfoDAO.queryPageList(param, page);
			return resultList;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	public List<OaMenuInfo> queryTreeOaMenuInfo(OaMenuInfo bean) throws Exception {
		try {
			Map<String, Object> param = BeanUtil.convertBeanToMap(bean);
			param.put("displayOrder", "APME_SORT");
			List<OaMenuInfo> resultList = oaMenuInfoDAO.queryList(param);

			return resultList;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}
	
	public List<OaMenuInfo> queryListOaMenuInfo(OaMenuInfo bean) throws Exception {
		try {
			Map<String, Object> param = BeanUtil.convertBeanToMap(bean);
			param.put("displayOrder", "APME_SORT");
			List<OaMenuInfo> resultList = oaMenuInfoDAO.queryList(param);

			return resultList;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}
	
	public List<OaMenuInfo> queryListOaMenuInfoForUser(OaMenuInfo bean) throws Exception {
		try {
			Map<String, Object> param = BeanUtil.convertBeanToMap(bean);
			param.put("displayOrder", "A.APME_DEPTH ASC, A.APME_SORT ASC");
			List<OaMenuInfo> resultList = oaMenuInfoDAO.queryListOaMenuInfoForUser(param);
			
			return resultList;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}
	
	public List<OaMenuInfo> queryPageListOaMenuInfoForRole(OaMenuInfo bean, Page page) throws Exception {
		try {
			Map<String, Object> param = BeanUtil.convertBeanToMap(bean);
			List<OaMenuInfo> resultList = oaMenuInfoDAO.queryPageListOaMenuInfoForRole(param, page);
			
			return resultList;
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	public boolean saveOrUpdateOaMenuInfo(OaMenuInfo bean) throws Exception {
		try {
			if(BeanUtil.isObjectNotNull(bean)){
				if(BeanUtil.isBlank(bean.getApmeGuid())){
					//初始默认参数 树节点深度和树完整路径
					String apmeParentGuid = bean.getApmeParentGuid();
					if(BeanUtil.isNotBlank(apmeParentGuid)){
						//新增菜单信息
						oaMenuInfoDAO.insertOaMenuInfo(bean);
						
						System.out.println("insertOaMenuInfo.............新增菜单信息...........");
						
						bean = initOaMenuInfo(bean);
						//更新菜单路径等信息
						saveOrUpdateOaMenuInfo(bean);
						System.out.println("saveOrUpdateOaMenuInfo...........更新菜单路径等信息.............");
					}
				}else{
					oaMenuInfoDAO.updateOaMenuInfo(bean);
				}
				return true;
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
	 * 新增时初始化菜单信息对象
	 * 深度字段：父节点深度+1
	 * 完整路径字段：父节点路径+/+当前对象主键
	 * 
	 * @param bean
	 * @return
	 * @throws Exception
	 */
	private OaMenuInfo initOaMenuInfo(OaMenuInfo bean) throws Exception {
		try {
			String apmeGuid = bean.getApmeParentGuid();
			OaMenuInfo oaMenuInfo = getOaMenuInfo(apmeGuid);
			String apmeDepth = oaMenuInfo.getApmeDepth();
			String apmeFullPath = oaMenuInfo.getApmeFullPath();
			int newDepth = Integer.parseInt(apmeDepth) + 1;
			String newFullPath = apmeFullPath + "/" + bean.getApmeGuid();
			
			bean.setApmeDepth(String.valueOf(newDepth));
			bean.setApmeFullPath(newFullPath);
			
			return bean;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}
	
	public boolean saveOrUpdateOaMenuRoleMap(OaMenuRoleMap bean) throws Exception {
		try {
			if(BeanUtil.isObjectNotNull(bean)){
				if(BeanUtil.isBlank(bean.getAprmmGuid())){
					//继承菜单角色配置关系
					OaMenuInfo oaMenuInfo = getOaMenuInfo(bean.getApmeGuid());
					OaMenuInfo queryOaMenuInfo = new OaMenuInfo();
					queryOaMenuInfo.setApmeFullPath(oaMenuInfo.getApmeFullPath());
					
					List<OaMenuInfo> oaMenuInfoList = queryListOaMenuInfo(queryOaMenuInfo);
					
					for (OaMenuInfo oaMenuInfoResult : oaMenuInfoList) {
						OaMenuRoleMap oaMenuRoleMap = new OaMenuRoleMap();
						oaMenuRoleMap.setAproGuid(bean.getAproGuid());
						oaMenuRoleMap.setApmeGuid(oaMenuInfoResult.getApmeGuid());
						
						oaMenuRoleMapDAO.insertOaMenuRoleMap(oaMenuRoleMap);
					}
					
					return true;
				}else{
					oaMenuRoleMapDAO.updateOaMenuRoleMap(bean);
					
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

	public boolean deleteOaMenuInfo(String apmeGuid) throws Exception {
		try {
			if(BeanUtil.isNotBlank(apmeGuid)){
				//删除菜单角色配置
				oaMenuRoleMapDAO.deleteOaMenuRoleMapByApmeGuid(apmeGuid);
				//删除菜单信息
				oaMenuInfoDAO.deleteOaMenuInfo(apmeGuid);
				
				return true;
			}
			
			return false;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}
	
	public boolean deleteOaMenuRoleMap(String guid) throws Exception {
		try {
			if(BeanUtil.isNotBlank(guid)){
				oaMenuRoleMapDAO.deleteOaMenuRoleMap(guid);
				
				return true;
			}
			
			return false;
		} catch (Exception e) {
			e.printStackTrace();
			logger.info(e);
			logger.debug(e);
			throw e;
		}
	}

	public OaMenuInfo getOaMenuInfo(String guid) throws Exception {
		try {
			OaMenuInfo oaMenuInfo = null;
			if(BeanUtil.isNotBlank(guid)){
				oaMenuInfo = oaMenuInfoDAO.loadOaMenuInfo(guid);
			}
			
			return oaMenuInfo;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

}
