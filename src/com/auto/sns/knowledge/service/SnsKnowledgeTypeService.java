package com.auto.sns.knowledge.service;

import java.util.List;

import com.auto.sns.knowledge.domain.KnowledgeType;

public interface SnsKnowledgeTypeService {
	
	public void saveType(KnowledgeType knowledgeType);
	
	public List<KnowledgeType> getList();
	
	public boolean checkType(String typeName);
}
