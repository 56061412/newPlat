package com.auto.oa.sys.service;

import java.io.File;
import java.util.List;

import com.auto.oa.sys.domain.OaSysAttachment;
import com.auto.oa.upload.action.UploadResult;

public interface IOaSysAttachmentService {
	
	boolean updateOaSysAttachment(String fileGuid, String busiGuid) throws Exception;
	
	/**
	 * 保存附件信息
	 * @param sysAttachment
	 * @return
	 * @throws Exception
	 */
	boolean saveOrUpdateOaSysAttachment(OaSysAttachment sysAttachment) throws Exception;
	
	/**
	 * 查询附件列表
	 * @param busiGuid	业务主键
	 * @return
	 * @throws Exception
	 */
	List<OaSysAttachment> queryListOaSysAttachment(String busiGuid) throws Exception;
	
	/**
	 * 上传附件
	 * @param file
	 * @param fileName
	 * @return
	 * @throws Exception
	 */
	UploadResult uploadFile(File file, String fileName, String filePath) throws Exception;
	
	boolean updateFileBusiGuid(String busiGuid, String fileGuid) throws Exception;

}
