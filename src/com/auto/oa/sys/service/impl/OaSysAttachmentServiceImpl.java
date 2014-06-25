package com.auto.oa.sys.service.impl;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.auto.oa.sys.dao.IOaSysAttachmentDAO;
import com.auto.oa.sys.domain.OaSysAttachment;
import com.auto.oa.sys.service.IOaSysAttachmentService;
import com.auto.oa.upload.action.UploadResult;
import com.auto.tools.UploadFileUtil;
import com.auto.tools.UploadState;
import com.system.util.BeanUtil;

@Service("oaSysAttachmentService")
public class OaSysAttachmentServiceImpl implements IOaSysAttachmentService {
	private static Logger logger = Logger.getLogger(OaSysAttachmentServiceImpl.class);
	@Resource(name="oaSysAttachmentDAO")
	private IOaSysAttachmentDAO oaSysAttachmentDAO;
	
	public boolean updateOaSysAttachment(String fileGuid, String busiGuid) throws Exception {
		try {
			boolean bool = true;
			if(BeanUtil.isNotBlank(fileGuid) && BeanUtil.isNotBlank(busiGuid)){
				String[] fileGuids = fileGuid.split(",");
				for (String guid : fileGuids) {
					OaSysAttachment sysAttachment = new OaSysAttachment();
					sysAttachment.setFileGuid(guid);
					sysAttachment.setFileBusiGuid(busiGuid);
					
					saveOrUpdateOaSysAttachment(sysAttachment);
				}
			}else{
				bool = false;
				System.out.println("updateOaSysAttachment...附件主键fileGuid为空或业务主键busiGuid为空。。。");
			}
			
			
			return bool;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	public boolean saveOrUpdateOaSysAttachment(OaSysAttachment sysAttachment) throws Exception {
		try {
			boolean bool = true;
			if(BeanUtil.isNotBlank(sysAttachment.getFileGuid())){
				oaSysAttachmentDAO.updateOaSysAttachment(sysAttachment);
			}else{
				oaSysAttachmentDAO.insertOaSysAttachment(sysAttachment);
			}
			
			return bool;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	public List<OaSysAttachment> queryListOaSysAttachment(String busiGuid) throws Exception {
		try {
			List<OaSysAttachment> resultList = new ArrayList<OaSysAttachment>();
			OaSysAttachment sysAttachment = new OaSysAttachment();
			sysAttachment.setFileBusiGuid(busiGuid);
			Map<String, Object> param = BeanUtil.convertBeanToMap(sysAttachment);
			
			resultList = oaSysAttachmentDAO.queryList(param);
			
			return resultList;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}
	
	public UploadResult uploadFile(File file, String fileName, String filePath) throws Exception {
		try {
			//上传附件至目录
			String fileExt = UploadFileUtil.getSuffix(fileName);
			String fileSize = String.valueOf(file.length());
			String fileRandomName = UploadFileUtil.getRandomName(fileName);
			String fileGuid = fileRandomName.substring(0, fileRandomName.lastIndexOf("."));
			UploadState uploadState = UploadFileUtil.upload(file, fileRandomName, filePath);
			UploadResult uploadResult = new UploadResult(String.valueOf(uploadState.getFlag()), fileGuid);
			
			//保存附件信息
			OaSysAttachment sysAttachment = new OaSysAttachment();
			sysAttachment.setFileGuid(fileGuid);
			sysAttachment.setFileExt(fileExt);
			sysAttachment.setFileName(fileName);
			sysAttachment.setFilePath(filePath);
			sysAttachment.setFileSize(fileSize);
			
			saveOrUpdateOaSysAttachment(sysAttachment);
			
			return uploadResult;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	public boolean updateFileBusiGuid(String busiGuid, String fileGuid)	throws Exception {
		try {
			boolean bool = true;
			if(BeanUtil.isNotBlank(fileGuid) && BeanUtil.isNotBlank(busiGuid)){
				OaSysAttachment sysAttachment = new OaSysAttachment();
				sysAttachment.setFileGuid(fileGuid);
				sysAttachment.setFileBusiGuid(busiGuid);
				
				oaSysAttachmentDAO.updateOaSysAttachment(sysAttachment);
			}else{
				throw new Exception("附件主键为null或业务主键为null！！！");
			}
			
			return bool;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

}
