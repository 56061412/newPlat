package com.auto.ws;

import java.util.List;

public class WSJsonResultBean {
	//成功
	public static final String DATA_TYPE_SUCCESS = "1";
	//失败
	public static final String DATA_TYPE_FAILURE = "-1";
	
	//结果成功1失败-1
	private String resultDataType;
	
	//业务数据结果集
	private List<Object> resultList;
	
	//信息
	private String resultInfo;

	public String getResultDataType() {
		return resultDataType;
	}

	public void setResultDataType(String resultDataType) {
		this.resultDataType = resultDataType;
	}

	public List<Object> getResultList() {
		return resultList;
	}

	public void setResultList(List<Object> resultList) {
		this.resultList = resultList;
	}

	public String getResultInfo() {
		return resultInfo;
	}

	public void setResultInfo(String resultInfo) {
		this.resultInfo = resultInfo;
	}
	
}
