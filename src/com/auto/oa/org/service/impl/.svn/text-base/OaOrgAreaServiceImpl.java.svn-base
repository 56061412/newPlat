package com.auto.oa.org.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.auto.oa.org.dao.IOaOrgAreaDAO;
import com.auto.oa.org.domain.OaOrgArea;
import com.auto.oa.org.service.IOaOrgAreaService;
import com.system.common.Page;
import com.system.util.BeanUtil;

@Service("oaOrgAreaService")
public class OaOrgAreaServiceImpl implements IOaOrgAreaService {
	private static Logger logger = Logger.getLogger(OaOrgAreaServiceImpl.class);
	@Resource(name="oaOrgAreaDAO")
	private IOaOrgAreaDAO oaOrgAreaDAO;
	
	public List<OaOrgArea> queryTreeOaOrgArea(OaOrgArea bean) throws Exception {
		try {
			Map<String, Object> param = BeanUtil.convertBeanToMap(bean);
			List<OaOrgArea> resultList = oaOrgAreaDAO.queryList(param);
			
			return resultList;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	public List<OaOrgArea> queryPageListOaOrgArea(OaOrgArea bean, Page page) throws Exception{
		try {
			Map<String, Object> param = BeanUtil.convertBeanToMap(bean);
			List<OaOrgArea> resultList = oaOrgAreaDAO.queryList(param, page);
			
			return resultList;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}
	
	public List<OaOrgArea> queryListOaOrgArea(OaOrgArea bean) throws Exception{
		try {
			Map<String, Object> param = BeanUtil.convertBeanToMap(bean);
			List<OaOrgArea> resultList = oaOrgAreaDAO.queryList(param);
			
			return resultList;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	public boolean saveOrUpdateOaOrgArea(OaOrgArea bean) throws Exception {
		try {
			boolean bool = true;
			if(BeanUtil.isObjectNotNull(bean)){
				if(BeanUtil.isBlank(bean.getAuarGuid())){
					oaOrgAreaDAO.insertOaOrgArea(bean);
				}else{
					oaOrgAreaDAO.updateOaOrgArea(bean);
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

	public boolean deleteOaOrgArea(String guid) throws Exception {
		try {
			boolean bool = true;
			if(!BeanUtil.isBlank(guid)){
				oaOrgAreaDAO.deleteOaOrgArea(guid);
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

	public OaOrgArea getOaOrgArea(String guid) throws Exception {
		try {
			OaOrgArea result = null;
			if(!BeanUtil.isBlank(guid)){
				result = oaOrgAreaDAO.loadOaOrgArea(guid);
			}
			
			return result;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

}
