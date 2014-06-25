package com.auto.sns.knowledge.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

import com.auto.sns.knowledge.dao.SnsKnowledgeDAOFactory;
import com.auto.sns.knowledge.domain.KnowledgeInfo;
import com.auto.sns.knowledge.service.SnsKnowledgeInfoService;

public class SnsKnowledgeInfoServiceImpl implements SnsKnowledgeInfoService {
	private static Logger logger = Logger.getLogger(SnsKnowledgeInfoServiceImpl.class);

	@Override
	public void saveInfo(KnowledgeInfo knowledgeInfo) throws Exception {
		try {
			SnsKnowledgeDAOFactory.knowledgeInfoDAO.insertKnowledgeInfo(knowledgeInfo);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	@Override
	public List<KnowledgeInfo> getList(String typeGuid) throws Exception {
		try {
			Map<String, Object> param = new HashMap<String, Object>();
			param.put("typeGuid", typeGuid);

			return SnsKnowledgeDAOFactory.knowledgeInfoDAO.queryList(param);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	@Override
	public void deleteInfo(String knowledgeGuid) throws Exception {
		try {
			SnsKnowledgeDAOFactory.knowledgeInfoDAO.deleteKnowledgeInfo(knowledgeGuid);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	@Override
	public KnowledgeInfo updateInfo(KnowledgeInfo knowledgeInfo) throws Exception {
		try {

			return SnsKnowledgeDAOFactory.knowledgeInfoDAO.updateKnowledgeInfo(knowledgeInfo);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	@Override
	public KnowledgeInfo queryInfo(String knowledgeGuid) throws Exception {
		try {

			return SnsKnowledgeDAOFactory.knowledgeInfoDAO.loadKnowledgeInfo(knowledgeGuid);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

}
