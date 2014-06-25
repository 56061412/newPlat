package com.auto.tools;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Calendar;

import com.system.util.DateUtil;

public class AttachmentUtil {
	
	/**
	 * 文件上传位置
	 * @return
	 */
	public static String getUploadFilePath(){
		return (String)PropertiesUtil.read("attachment_path").get("UploadFilePath");
	}
	
	/**
	 * 图片上传位置
	 * @return
	 */
	public static String getUploadImgPath(){
		return (String)PropertiesUtil.read("attachment_path").get("UploadImgPath");
	}
	
	/**
	 * 获得图片保存的路径
	 * @return
	 */
	public static String getReadImgPath(){
		return (String)PropertiesUtil.read("attachment_path").get("ReadImgPath");
	}
	
	/**
	 * 上传附件
	 * @param is
	 * @param fileGuid
	 * @return
	 */
	public static String upload4Stream(InputStream is, String fileGuid){
		String fileDir = getFileDir(getUploadFilePath());	//文件存储绝对路径	
		try {
			File outFile = new File(fileDir);
			if(!outFile.exists()){
				outFile.mkdirs();
			}
			String fileAbPath =fileDir + fileGuid + ".dat";//文件全路径
			FileOutputStream fos = new FileOutputStream(fileAbPath);
			int size=-1;
			byte[] data=new byte[1024];
			while((size=is.read(data))!=-1){
				fos.write(data, 0, size);
			}
			fos.close();
			is.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return fileDir + fileGuid;
	}
	
	/**
	 * 按月的第几周生成子目录
	 * @param fileDir
	 * @return
	 */
	private static String getFileDir(String fileDir){		
		/**
		 * 按照当前月的第几周
		 */
		try {
			String dateString = DateUtil.toDateString(DateUtil.currentDate(),DateUtil.DEFAULT_DATE_PATTERN);
			Calendar cal = Calendar.getInstance();
			int i = cal.get(Calendar.WEEK_OF_MONTH);
			fileDir = fileDir+"/" + dateString.substring(0, 4) + dateString.substring(5, 7)+"_"+i+"/";
		} catch (RuntimeException e1) {
			fileDir = fileDir+"/";
			e1.printStackTrace();
		}
		return fileDir;
	}
}
