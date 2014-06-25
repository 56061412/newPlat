package com.auto.sns.knowledge.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.auto.sns.knowledge.dao.SnsKnowledgeDAOFactory;
import com.auto.sns.knowledge.domain.KnowledgeType;
import com.auto.sns.knowledge.service.SnsKnowledgeTypeService;

public class SnsKnowledgeTypeServiceImpl implements SnsKnowledgeTypeService {

	@Override
	public void saveType(KnowledgeType knowledgeType) {
		SnsKnowledgeDAOFactory.knowledgeTypeDAO.insertKnowledgeType(knowledgeType);

	}

	@Override
	public List<KnowledgeType> getList() {
		return SnsKnowledgeDAOFactory.knowledgeTypeDAO.queryList(new HashMap<String, Object>());
	}

	@Override
	public boolean checkType(String typeGuid) {
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("typeGuid", typeGuid);
		List<KnowledgeType> list = SnsKnowledgeDAOFactory.knowledgeTypeDAO.queryList(data);
		if(list!=null&&list.size()>0){
			return true;
		}
		return false;
	}

}
