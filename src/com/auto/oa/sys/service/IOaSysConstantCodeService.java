package com.auto.oa.sys.service;

import java.util.List;

import com.auto.oa.sys.domain.OaSysConstantCode;
import com.system.common.Page;

public interface IOaSysConstantCodeService {
	
	List<OaSysConstantCode> queryListChildren(OaSysConstantCode bean) throws Exception;
	
	List<OaSysConstantCode> queryListOaSysConstantCode(OaSysConstantCode bean) throws Exception;
	
	List<OaSysConstantCode> queryTreeOaSysConstantCode(OaSysConstantCode bean) throws Exception;
	
	List<OaSysConstantCode> queryPageListOaSysConstantCode(OaSysConstantCode bean, Page page) throws Exception;
	
	boolean saveOrUpdateOaSysConstantCode(OaSysConstantCode bean) throws Exception;
	
	boolean deleteOaSysConstantCode(String guid) throws Exception;
	
	OaSysConstantCode getOaSysConstantCode(String guid) throws Exception;

}
