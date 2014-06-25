package com.auto.sns.post.service.impl;

import org.apache.log4j.Logger;

import com.auto.sns.post.dao.SnsPostDAOFactory;
import com.auto.sns.post.domain.PostContent;
import com.auto.sns.post.service.SnsPostContentService;

public class SnsPostContentServiceImpl implements SnsPostContentService {
	private static Logger logger = Logger.getLogger(SnsPostContentServiceImpl.class);

	public boolean saveOrUpdatePostContent(PostContent postContent)	throws Exception {
		boolean bool = true;
		try {
			SnsPostDAOFactory.postContentDAO.insertPostContent(postContent);
			return bool;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

}
