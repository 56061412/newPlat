package com.auto.oa.user.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.auto.oa.user.dao.IOaUserPostDAO;
import com.auto.oa.user.domain.OaUserPost;
import com.auto.oa.user.service.IOaUserPostService;
import com.system.common.Page;
import com.system.util.BeanUtil;

@Service("oaUserPostService")
public class OaUserPostServiceImpl implements IOaUserPostService {
	private static Logger logger = Logger.getLogger(OaUserPostServiceImpl.class);
	@Resource(name="oaUserPostDAO")
	private IOaUserPostDAO oaUserPostDAO;

	public List<OaUserPost> queryPageListOaUserPost(OaUserPost oaUserPost, Page page) throws Exception {
		try {
			
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
		List<OaUserPost> resultList = null;
		try {
			Map<String, Object> param = BeanUtil.convertBeanToMap(oaUserPost);
			resultList = oaUserPostDAO.queryList(param, page);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		return resultList;
	}

	public boolean saveOrUpdateOaUserPost(OaUserPost oaUserPost) throws Exception {
		try {
			boolean bool = true;
			
			if(BeanUtil.isObjectNotNull(oaUserPost)){
				if(BeanUtil.isBlank(oaUserPost.getAupoGuid())){
					oaUserPostDAO.insertOaUserPost(oaUserPost);
				}else{
					oaUserPostDAO.updateOaUserPost(oaUserPost);
				}
			}
			
			return bool;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	public boolean deleteOaUserPost(String guid) throws Exception {
		try {
			boolean bool = true;
			
			if(!BeanUtil.isBlank(guid)){
				oaUserPostDAO.deleteOaUserPost(guid);
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
	
	public boolean deleteOaUserPostByPostCode(String orgCode, String postCode) throws Exception {
		try {
			// TODO: handle exception

			return false;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	public boolean checkPostCodeExists(String postCode) throws Exception {
		try {
			// TODO: handle exception
			
			boolean bool = true;
			
			return bool;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	public OaUserPost getOaUserPost(String guid) throws Exception {
		try {
			OaUserPost oaUserPost = null;
			oaUserPost = oaUserPostDAO.loadOaUserPost(guid);
			return oaUserPost;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	public OaUserPost getOaUserPostByPostCode(String orgCode, String postCode) throws Exception {
		try {
			
			return null;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

}
