package com.auto.oa.sys.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.auto.oa.sys.dao.IOaSysConstantCodeDAO;
import com.auto.oa.sys.domain.OaSysConstantCode;
import com.auto.oa.sys.service.IOaSysConstantCodeService;
import com.system.common.Page;
import com.system.util.BeanUtil;

@Service("oaSysConstantCodeService")
public class OaSysConstantCodeServiceImpl implements IOaSysConstantCodeService {
	private static Logger logger = Logger.getLogger(OaSysConstantCodeServiceImpl.class);
	@Resource(name="oaSysConstantCodeDAO")
	private IOaSysConstantCodeDAO oaSysConstantCodeDAO;
	
	public List<OaSysConstantCode> queryListOaSysConstantCode(OaSysConstantCode bean) throws Exception {
		try {
			Map<String, Object> param = BeanUtil.convertBeanToMap(bean);
			List<OaSysConstantCode> resultList = oaSysConstantCodeDAO.queryList(param);
			
			return resultList;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	public List<OaSysConstantCode> queryTreeOaSysConstantCode(OaSysConstantCode bean) throws Exception {
		try {
			Map<String, Object> param = BeanUtil.convertBeanToMap(bean);
			List<OaSysConstantCode> resultList = oaSysConstantCodeDAO.queryList(param);
			
			return resultList;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	public List<OaSysConstantCode> queryPageListOaSysConstantCode(OaSysConstantCode bean, Page page) throws Exception {
		try {
			Map<String, Object> param = BeanUtil.convertBeanToMap(bean);
			List<OaSysConstantCode> resultList = oaSysConstantCodeDAO.queryList(param, page);
			
			return resultList;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	public boolean saveOrUpdateOaSysConstantCode(OaSysConstantCode bean) throws Exception {
		try {
			boolean bool = false;
			if(BeanUtil.isObjectNotNull(bean)){
				if(BeanUtil.isBlank(bean.getOsccGuid())){
					oaSysConstantCodeDAO.insertOaSysConstantCode(bean);
					
					bool = true;
				}else{
					oaSysConstantCodeDAO.updateOaSysConstantCode(bean);
					
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

	public boolean deleteOaSysConstantCode(String guid) throws Exception {
		try {
			boolean bool = false;
			if(!BeanUtil.isBlank(guid)){
				oaSysConstantCodeDAO.deleteOaSysConstantCode(guid);
				
				bool = true;
			}
			
			return bool;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	public OaSysConstantCode getOaSysConstantCode(String guid) throws Exception {
		try {
			OaSysConstantCode oaSysConstantCode = null;
			if(!BeanUtil.isBlank(guid)){
				oaSysConstantCode = oaSysConstantCodeDAO.loadOaSysConstantCode(guid);
			}
			
			return oaSysConstantCode;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	public List<OaSysConstantCode> queryListChildren(OaSysConstantCode bean) throws Exception {
		try {
			Map<String, Object> param = BeanUtil.convertBeanToMap(bean);
			List<OaSysConstantCode> resultList = oaSysConstantCodeDAO.queryChildren(param);
			
			return resultList;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

}
