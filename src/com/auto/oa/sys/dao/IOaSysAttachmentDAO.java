package com.auto.oa.sys.dao;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.oa.sys.domain.OaSysAttachment;
/**
 * : t_auto_oa_sys_attachment
 * 
 * 
 * @author Gen
 */
public interface IOaSysAttachmentDAO{
	/**
	 * @param bean
	 * @return
	 */
	OaSysAttachment insertOaSysAttachment(OaSysAttachment bean);
	/**
	 * @param fileGuid
	 * @return
	 */
	boolean deleteOaSysAttachment(String fileGuid);	
	/**
	 * @param bean
	 * @return
	 */
	OaSysAttachment updateOaSysAttachment(OaSysAttachment bean);	
	/**
	 * @param fileGuid
	 * @return
	 */
	OaSysAttachment loadOaSysAttachment(String fileGuid);
	/**
	 * @param param
	 * @param page
	 * @return
	 */
	List<OaSysAttachment> queryList(Map<String,Object> param,Page page);
	
	List<OaSysAttachment> queryList(Map<String,Object> param);

}
