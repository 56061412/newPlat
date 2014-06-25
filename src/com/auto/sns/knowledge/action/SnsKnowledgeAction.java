package com.auto.sns.knowledge.action;

import java.util.List;

import com.auto.sns.knowledge.domain.KnowledgeInfo;
import com.auto.sns.knowledge.domain.KnowledgeType;
import com.auto.sns.knowledge.service.SnsKnowledgeServiceFactory;
import com.opensymphony.xwork2.Action;
import com.system.common.BaseAction;
import com.system.util.JsonUtil;

public class SnsKnowledgeAction extends BaseAction{
	/**
	 * 
	 */
	private static final long serialVersionUID = -896228998306727450L;

	/**
	 * 新增知识
	 * @throws Exception 
	 */
	public void addKnowledgeInfo() throws Exception{
		String jsonKnowledgeInfo = getRequest().getParameter("jsonKnowledgeInfo");
		KnowledgeInfo knowledgeInfo = (KnowledgeInfo)JsonUtil.jsonToBean(jsonKnowledgeInfo, KnowledgeInfo.class);
		
		if(knowledgeInfo.getTypeGuid().endsWith("default")&&!SnsKnowledgeServiceFactory.snsKnowledgeTypeService.checkType(knowledgeInfo.getTypeGuid())){
			KnowledgeType knowledgeType = new KnowledgeType();
			knowledgeType.setTypeGuid("default");
			knowledgeType.setTypeName("默认");
			SnsKnowledgeServiceFactory.snsKnowledgeTypeService.saveType(knowledgeType);
		}
			
		knowledgeInfo = getDefaultBean(knowledgeInfo, getRequest());
		SnsKnowledgeServiceFactory.snsKnowledgeInfoService.saveInfo(knowledgeInfo);	
	}
	
	/**
	 * 知识分组列表
	 */
	public String listKnowledgeInfoGroup(){	
		List list = SnsKnowledgeServiceFactory.snsKnowledgeTypeService.getList();
		getRequest().setAttribute("rtnList", list);
		return Action.SUCCESS;
	}
	
	/**
	 * 知识列表
	 * @throws Exception 
	 */
	public String listKnowledgeInfoInfo() throws Exception{
		String typeGuid = getRequest().getParameter("typeGuid");
		List list = SnsKnowledgeServiceFactory.snsKnowledgeInfoService.getList(typeGuid);
		getRequest().setAttribute("rtnList", list);
		return Action.SUCCESS;
	}
}
