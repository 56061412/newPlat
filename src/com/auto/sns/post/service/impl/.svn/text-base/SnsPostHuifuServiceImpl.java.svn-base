package com.auto.sns.post.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

import com.auto.sns.post.dao.SnsPostDAOFactory;
import com.auto.sns.post.domain.PostHuifu;
import com.auto.sns.post.service.SnsPostHuifuService;
import com.auto.sns.util.UserUtil;
import com.auto.tools.AutoUtils;
import com.system.util.BeanUtil;
import com.system.util.DateUtil;

public class SnsPostHuifuServiceImpl implements SnsPostHuifuService{
	private static Logger logger = Logger.getLogger(SnsPostHuifuServiceImpl.class);

	public boolean saveOrUpdatePostHuifu(PostHuifu postHuifu) throws Exception {
		try {
			SnsPostDAOFactory.postHuifuDAO.insertPostHuifu(postHuifu);

			return true;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}
	
	public List<Map> listPostHuifu(String postGuid)  throws Exception{
		try {
			Map<String,Object> param = new HashMap<String,Object>();
			param.put("postGuid", postGuid);
			param.put("displayOrder", "A.CREATE_TIME ");
			
			List<Map> list = SnsPostDAOFactory.postHuifuDAO.listHuifu(param);
			for (Map map : list) {
				map.put("createTime", DateUtil.toDateString((Date)map.get("createTime"), DateUtil.DEFAULT_DATETIME_PATTERN));
				map.put("userImg",UserUtil.getUserImgByUserCode((String)map.get("postCreater")));
				String postCreater = (String)map.get("postCreater");
				String postCreaterName = "userName";
				if(BeanUtil.isNotBlank(postCreater)){
					postCreaterName = AutoUtils.getUserName(postCreater);
				}
				map.put("postCreaterName", postCreaterName);
				
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	@Override
	public boolean deletePostHuifu(String huifuGuid) throws Exception {
		try {
			SnsPostDAOFactory.postHuifuDAO.deletePostHuifu(huifuGuid);

			return true;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

}
