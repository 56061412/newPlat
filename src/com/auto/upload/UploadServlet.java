package com.auto.upload;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.FileUploadBase.SizeLimitExceededException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.log4j.Logger;

import com.auto.oa.sys.domain.OaSysAttachment;
import com.auto.tools.WSUtil;
import com.system.util.FileUtil;

public class UploadServlet extends HttpServlet{
	private static Logger logger = Logger.getLogger(UploadServlet.class);
	private static final long serialVersionUID = 2700782859222431240L;
	
	public UploadServlet()	{
		super();
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException	{
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String rtnStr = WSUtil.getWSResultBeanFailure();
		//保存附件的ID
		List<OaSysAttachment> oaSysAttachments = new ArrayList<OaSysAttachment>();
		
		response.setContentType("application/json");
		//设置字符编码为UTF-8, 这样支持汉字显示
		response.setCharacterEncoding("UTF-8");
		
		PrintWriter out = response.getWriter();
		try {
			String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";
			System.out.println("1----------------------------->>>" + basePath);
			final long MAX_SIZE = 3 * 1024 * 1024;// 设置上传文件最大为 3M
			
			//允许上传的文件格式的列表
			final String[] allowedExt = new String[]{"JPG", "jpg", "JPEG", "jpeg", "PNG", "png", "GIF", "gif", "BMP", "bmp", "TXT", "txt", "DOC", "doc", "DOCX", "docx", "PPT", "ppt", "PPTX", "pptx", "XLS", "xls", "XLSX", "xlsx", "MP3", "mp3", "MP4", "mp4", "WMA", "wma", "MOV", "mov", "RAR", "rar", "ZIP", "zip", "SQLITE", "sqlite"};

			
			//实例化一个硬盘文件工厂,用来配置上传组件ServletFileUpload
			DiskFileItemFactory dfif = new DiskFileItemFactory();
			dfif.setSizeThreshold(4096);// 设置上传文件时用于临时存放文件的内存大小,这里是4K.多于的部分将临时存在硬盘
			dfif.setRepository(new File(request.getRealPath("/") + "ImagesUpload\\"));// 设置存放临时文件的目录,web根目录下的ImagesUpload目录
//			dfif.setRepository(new File("E:/tomcat6/webapps/allwinPic/img/"));// 设置存放临时文件的目录,web根目录下的ImagesUpload目录
			
			//用以上工厂实例化上传组件
			ServletFileUpload sfu = new ServletFileUpload(dfif);
			//设置最大上传尺寸
			sfu.setSizeMax(MAX_SIZE);
		
			//从request得到 所有 上传域的列表
			List fileList = null;
			try {
				fileList = sfu.parseRequest(request);
			}	catch (FileUploadException e)	{
				// 处理文件尺寸过大异常
				if (e instanceof SizeLimitExceededException)	{
					System.out.println("文件尺寸超过规定大小:" + MAX_SIZE + "字节<p/>");
					rtnStr = WSUtil.getWSResultBeanFailure("文件尺寸超过规定大小:" + MAX_SIZE + "字节");
//					out.println("文件尺寸超过规定大小:" + MAX_SIZE + "字节<p/>");
//					out.println("<a href=\""+request.getContextPath()+"/jsp/index.jsp\" target=\"_top\">返回</a>");
					return;
				}
				e.printStackTrace();
			 }
			 //没有文件上传
			 if (fileList == null || fileList.size() == 0) {
				 System.out.println("请选择上传文件<p />");
				 rtnStr = WSUtil.getWSResultBeanFailure("请选择上传文件");
//				 out.println("请选择上传文件<p />");
//				 out.println("<a href=\""+request.getContextPath()+"/jsp/index.jsp\" target=\"_top\">返回</a>");
				 return;
			 }
		  
			 //得到所有上传的文件
			 Iterator fileItr = fileList.iterator();
			 //循环处理所有文件
			 while (fileItr.hasNext()) {
				 FileItem fileItem = null;
				 String path = null;
				 long size = 0;
				 //得到当前文件
				 fileItem = (FileItem) fileItr.next();
				 //忽略简单form字段而不是上传域的文件域(<input type="text" />等)
				 if (fileItem == null || fileItem.isFormField()) {
					 continue;
				 }
				 //得到文件的完整路径
				 path = fileItem.getName();
				 System.out.println("2-------------------------->" + path);
				 //得到文件的大小
				 size = fileItem.getSize();
				 if ("".equals(path) || size == 0) {
					 System.out.println("请选择上传文件<p />");
					 rtnStr = WSUtil.getWSResultBeanFailure("请选择上传文件 文件是空的");
//					 out.println("请选择上传文件<p />");
//					 out.println("<a href=\""+request.getContextPath()+"index.jsp\" target=\"_top\">返回</a>");
					 return;
				 }
		
				 //得到去除路径的文件名
				 String t_name = path.substring(path.lastIndexOf("\\") + 1);
				 System.out.println("3----得到去除路径的文件名---------------------->" + t_name);
				 logger.debug("3----得到去除路径的文件名---------------------->" + t_name);
		
				 //得到文件的扩展名(无扩展名时将得到全名)
				 String t_ext = t_name.substring(t_name.lastIndexOf(".") + 1);
				 System.out.println("4------得到文件的扩展名(无扩展名时将得到全名)-------------------->" + t_ext);
				 logger.debug("4------得到文件的扩展名(无扩展名时将得到全名)-------------------->" + t_ext);
		
				 //拒绝接受规定文件格式之外的文件类型
				 int allowFlag = 0;
				 int allowedExtCount = allowedExt.length;
				 for (; allowFlag < allowedExtCount; allowFlag++)
				 {
					 if (allowedExt[allowFlag].equals(t_ext))
					 {
						 break;
					 }
				 }
				 if (allowFlag == allowedExtCount)
				 {
					 out.println("请上传以下类型的文件<p />");
					 for (allowFlag = 0; allowFlag < allowedExtCount; allowFlag++)
					 {
						 out.println("*." + allowedExt[allowFlag] + "&nbsp;&nbsp;&nbsp;");
					 }
					 out.println("<p /><a href=\""+request.getContextPath()+"/jsp/index.jsp\" target=\"_top\">返回</a>");
					 return;
				 }
		
				 long now = System.currentTimeMillis();
				 String prefix = String.valueOf(now);
				 //根据系统时间生成上传后保存的文件名
//				 String u_name = request.getRealPath("/") + "ImagesUpload\\" + now;
				

				 //时间命名
				 //String u_name = request.getRealPath("/") + "ImagesUpload/" + prefix + "." + t_ext;
				 //原名
				 String u_name = request.getRealPath("/") + "ImagesUpload\\" + prefix + "." + t_ext;
				 System.out.println("5-----------根据系统时间生成上传后保存的文件名----------------->" + u_name);
				 logger.debug("5-----------根据系统时间生成上传后保存的文件名----------------->" + u_name);
				 //保存文件
				 File file = new File(u_name);
				 fileItem.write(file);
				 //复制文件至图片库
				 String srcfilePath = u_name;
				 String copyFilePath = "E:/tomcat6/webapps/allwinPic/img/" + prefix + "." + t_ext;
				 FileUtil.copyFile(srcfilePath, copyFilePath);
				 file.delete();
				 
				 //添加保存成功的附件 ID
				 String fileSize = String.valueOf(size);
				 OaSysAttachment oaSysAttachment = new OaSysAttachment();
				 oaSysAttachment.setFileGuid(prefix);
				 oaSysAttachment.setFileExt(t_ext);
				 oaSysAttachment.setFileSize(fileSize);
				 oaSysAttachment.setFilePath(copyFilePath);
				 
				 oaSysAttachments.add(oaSysAttachment);
			 }
			 
			 rtnStr = WSUtil.getWSResultBeanSuccess(oaSysAttachments);
			 logger.debug("保存图片成功："+rtnStr);

		} catch (Exception e) {
			e.printStackTrace();
			logger.debug("--error----保存图片异常-------------------->" + e);
			 rtnStr = WSUtil.getWSResultBeanFailure(e.toString());
		}
		
		 System.out.println("rtnStr....................."+rtnStr);
		 //返回结果
		 out.println(rtnStr);
		 
		 out.flush();
		 out.close();
		 
	}
	
	public void destroy()
	{
		super.destroy();
	}
}
