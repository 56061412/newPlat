package com.auto.sns.login.dao;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.sns.login.domain.SnsRegRefree;
/**
 * : t_auto_sns_reg_refree
 * 
 * 
 * @author Gen
 */
public interface ISnsRegRefreeDAO{
	/**
	 * @param bean
	 * @return
	 */
	SnsRegRefree insertSnsRegRefree(SnsRegRefree bean);
	/**
	 * @param srreGuid
	 * @return
	 */
	boolean deleteSnsRegRefree(String srreGuid);	
	/**
	 * @param bean
	 * @return
	 */
	SnsRegRefree updateSnsRegRefree(SnsRegRefree bean);	
	/**
	 * @param srreGuid
	 * @return
	 */
	SnsRegRefree loadSnsRegRefree(String srreGuid);
	/**
	 * @param param
	 * @param page
	 * @return
	 */
	List<SnsRegRefree> queryList(Map<String,Object> param,Page page);

}
