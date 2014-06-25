package com.auto.tools;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
import java.util.UUID;

public class UploadFileUtil {
	
	//上传文件保存路径
	public static String path = "/upload/";
	//定义可以上传文件的后缀数组,默认"*"，代表所有
	public static String[] filePostfixs = { "*" };
	public static String[] typeImages = { "gif", "jpeg", "png", "jpg", "tif", "bmp" };
	public static String[] typeOthers = { "html", "htm", "doc", "xls", "txt", "zip", "rar", "pdf", "cll" };
	
	//上传文件的最大长度
	public static long maxFileSize = 1024 * 1024 * 20;//20M
	//一次读取多少字节
	public static int bufferSize = 1024 * 8;
	
	private final static void init() {
		if (bufferSize > Integer.MAX_VALUE) {
			bufferSize = 1024 * 8;
		} else if (bufferSize < 8) {
			bufferSize = 8;
		}
		if (maxFileSize < 1) {
			maxFileSize = 1024 * 1024 * 1024 * 2L;
		} else if (maxFileSize > Long.MAX_VALUE) {
			maxFileSize = 1024 * 1024 * 1024 * 2L;
		}
	}
	
	/**
	 * <b>function:</b>根据传递InputStream，上传文件
	 * @createDate Dec 19, 2010 8:53:12 PM
	 * @param is InputStream
	 * @param fileName 文件名
	 * @param path 保存路径
	 * @return 上传状态
	 * @throws Exception
	 */
	public static UploadState upload4Stream(InputStream is, String fileName, String path) throws Exception {
		init();
		UploadState state = UploadState.UPLOAD_FAILURE;
		if (fileName == null && "".equals(fileName)) {
			fileName = getRandomName(fileName);
		}
		OutputStream os = null;
		try {
			path = getDoPath(path);
			mkDir(path);
			//fileName = getNumberName(fileName);//getBracketFileName(fileName, path);
			os = new FileOutputStream(path + fileName);
			int read = 0;
			byte[] buffer = new byte[bufferSize];
			while ((read = is.read(buffer)) != -1) {
				os.write(buffer, 0, read);
			}
			state = UploadState.UPLOAD_SUCCSSS;
			os.flush();
			os.close();
		    is.close();
		} catch(FileNotFoundException e) { 
			state = UploadState.UPLOAD_NOTFOUND;
			throw e;
		} catch (Exception e) {
			state = UploadState.UPLOAD_FAILURE;
			throw e;
		} finally {
			if (is != null) {
				is.close();
			}
			if (os != null) {
				os.flush();
				os.close();
			}
		}
		return state;
	}
	
	/**
	 * <b>function:</b> 主要针对struts的FormFile进行文件上传
	 * @createDate Oct 9, 2010 11:22:14 PM
	 * @param file FormFile
	 * @param path 路径
	 * @return UploadState 是否上传成功
	 * @throws Exception
	 */
	public static UploadState upload(File file, String fileName, String path) throws Exception {
		init();
		UploadState state = UploadState.UPLOAD_FAILURE;
		if (fileName == null && "".equals(fileName)) {
			fileName = file.getName();
		}
		InputStream is = null; 
		try {
			long fileSize = file.length();
			if (fileSize <= 0) {
				state = UploadState.UPLOAD_ZEROSIZE;
			} else {
				if (fileSize <= maxFileSize) {
					is = new FileInputStream(file);
					state = upload4Stream(is, fileName, path);
				} else {
					state = UploadState.UPLOAD_OVERSIZE;
				}
			}
		} catch(FileNotFoundException e) { 
			state = UploadState.UPLOAD_NOTFOUND;
			throw e;
		} catch (Exception e) {
			state = UploadState.UPLOAD_FAILURE;
			throw e;
		} finally {
			if (is != null) {
				is.close();
			}
		}
		return state;
	}
	
    /**
     * <b>function:</b>struts上传文件，并根据传递的文件类型数组验证上传的文件是否合法
     * @createDate Oct 10, 2010 3:53:59 PM
     * @param file FormFile
     * @param path 路径
     * @param allowTypes 文件类型数组
     * @return UploadState 是否上传成功
     * @throws Exception
     */
    public static UploadState upload(File file, String fileName, String path, String[] allowTypes) throws Exception {
    	UploadState state = UploadState.UPLOAD_FAILURE;
        if (validTypeByName(file.getName(), allowTypes)) {
        	state = upload(file, fileName, path);
        }
        return state; 
    }

	/**
	 * upload4Stream是通过传递InputStream完成上传，这个方法不管是是FormFile、File还是其他的文件对象都可以完成上传。你也可以根据自己的需求进行二次封装完成上传。
	 * 上面的上传还用到了其他的验证、命名、路径等辅助方法，详细请看源代码。
	 * 验证文件名、类型
     * <b>function:</b> 根据文件名和类型数组验证文件类型是否合法，flag是否忽略大小写
     * @createDate Oct 10, 2010 11:54:54 AM
     * @param fileName 文件名
     * @param allowTypes 类型数组
     * @param flag 是否获得大小写
     * @return 是否验证通过
     */
    public static boolean validTypeByName(String fileName, String[] allowTypes, boolean flag) {
    	String suffix = getType(fileName);
    	boolean valid = false;
    	if (allowTypes.length > 0 && "*".equals(allowTypes[0])) {
    		valid = true;
    	} else {
	    	for (String type : allowTypes) {
	    		if (flag) {//不区分大小写后缀
		    		if (suffix != null && suffix.equalsIgnoreCase(type)) {
		    			valid = true;
		    			break;
		    		}
	    		} else {//严格区分大小写
	    			if (suffix != null && suffix.equals(type)) {
		    			valid = true;
		    			break;
		    		}
	    		}
	    	}
    	}
    	return valid;
    }
    
    /**
     * <b>function:</b>根据文件名称和类型数组验证文件类型是否合法
     * @createDate Oct 10, 2010 10:27:17 AM
     * @param fileName 文件名
     * @param allowTypes 文件类型数组
     * @return 是否合法
     */
    public static boolean validTypeByName(String fileName, String[] allowTypes) {
    	return validTypeByName(fileName, allowTypes, true);
    }
    
    /**
     * <b>function:</b> 根据后缀和类型数组验证文件类型是否合法，flag是否区分后缀大小写，true严格大小写
     * @createDate Oct 10, 2010 12:00:10 PM
     * @param suffix 后缀名
     * @param allowTypes 文件类型数组
     * @param flag 是否区分大小写
     * @return 是否合法
     */
    public static boolean validTypeByPostfix(String suffix, String[] allowTypes, boolean flag) {
    	boolean valid = false;
    	if (allowTypes.length > 0 && "*".equals(allowTypes[0])) {
    		valid = true;
    	} else {
	    	for (String type : allowTypes) {
	    		if (flag) {//不区分大小写后缀
		    		if (suffix != null && suffix.equalsIgnoreCase(type)) {
		    			valid = true;
		    			break;
		    		}
	    		} else {//严格区分大小写
	    			if (suffix != null && suffix.equals(type)) {
		    			valid = true;
		    			break;
		    		}
	    		}
	    	}
    	}
    	return valid;
    }
    
    /**
     * <b>function:</b>根据文件后缀名和类型数组，验证文件类型是否合法
     * @createDate Oct 10, 2010 10:25:32 AM
     * @param suffix 后缀名
     * @param allowTypes 类型数组
     * @return 是否合法
     */
    public static boolean validTypeByPostfix(String suffix, String[] allowTypes) {
    	return validTypeByPostfix(suffix, allowTypes, true);
    }
    
    /**
     * <b>function:</b>验证当前后缀、文件类型是否是图片类型
     * typeImages 可以设置图片类型
     * @createDate Oct 10, 2010 12:17:18 PM
     * @param suffix 验证文件的后缀
     * @return 是否合法
     */
    public static boolean validTypeByPostfix4Images(String suffix) {
    	return validTypeByPostfix(suffix, typeImages);
    }
    
    /**
     * <b>function:</b>验证当前后缀、文件类型是否是非图片类型（常用办公文件类型）
     * typeOthers 可以设置文件类型
     * @createDate Oct 10, 2010 12:18:18 PM
     * @param suffix 验证文件的后缀
     * @return 是否合法
     */
    public static boolean validTypeByPostfix4Others(String suffix) {
    	return validTypeByPostfix(suffix, typeOthers);
    }
    
    /**
     * <b>function:</b>验证当前文件名、文件类型是否是图片类型
     * typeImages 可以设置图片类型
     * @createDate Oct 10, 2010 12:19:18 PM
     * @param fileName 验证文件的名称
     * @return 是否合法
     */
    public static boolean validTypeByName4Images(String fileName) {
    	return validTypeByName(fileName, typeImages);
    }
    
    /**
     * <b>function:</b>验证当前文件名称、文件类型是否是非图片类型（常用办公文件类型）
     * typeOthers 可以设置文件类型
     * @createDate Oct 10, 2010 12:21:22 PM
     * @param fileName 验证文件的名称
     * @return 是否合法
     */
    public static boolean validTypeByName4Others(String fileName) {
    	return validTypeByName(fileName, typeOthers);
    }

    /**文件删除操作，对重名的文件可以删除或是替换
     * <b>function:</b>传递一个路径和文件名称，删除该文件
     * @createDate Oct 10, 2010 10:47:57 AM
     * @param fileName 文件名称
     * @param path 路径
     * @return 是否删除成功
     */
    public static boolean removeFile(String fileName, String path) {
    	boolean flag = false;
    	if (isFileExist(fileName, path)) {
    		File file = new File(getDoPath(path) + fileName);
    		flag = file.delete();
    	}
    	return flag;
    }
    
    /**
     * <b>function:</b>删除文件
     * @createDate Oct 10, 2010 10:49:54 AM
     * @param file 要删除的文件
     * @return 是否删除成功
     */
    public static boolean removeFile(File file) {
    	boolean flag = false;
    	if (file != null && file.exists()) {
    		flag = file.delete();
    	}
    	return flag;
    }




    /**获得文件类型、后缀、名称等操作
     * <b>function:</b> 传入一个文件名，得到这个文件名称的后缀
     * @createDate Oct 9, 2010 11:30:46 PM
     * @param fileName 文件名
     * @return 后缀名
     */
    public static String getSuffix(String fileName) {
    	 int index = fileName.lastIndexOf(".");
         if (index != -1) {
         	String suffix = fileName.substring(index);//后缀
         	return suffix; 
         } else {
         	return null;
         }
    }
    
    /**
     * <b>function:</b>和文件后缀一样，不同的是没有“.”
     * @createDate Oct 10, 2010 2:42:43 PM
     * @param fileName 文件名称
     * @return
     */
    public static String getType(String fileName) {
   	 int index = fileName.lastIndexOf(".");
        if (index != -1) {
        	String suffix = fileName.substring(index + 1);//后缀
        	return suffix; 
        } else {
        	return null;
        }
   }
    
    /**
     * <b>function:</b> 传递一个文件名称和一个新名称，组合成一个新的带后缀文件名
     * 当传递的文件名没有后缀，会添加默认的后缀
     * @createDate Oct 9, 2010 10:53:06 PM
     * @param fileName 文件名称
     * @param newName 新文件名称
     * @param nullSuffix 为没有后缀的文件所添加的后缀;eg:txt
     * @return String 文件名称
     */
    public static String getNewFileName(String fileName, String newName, String nullSuffix) {
        String suffix = getSuffix(fileName);
        if (suffix != null) {
        	newName += suffix; 
        } else {
        	newName = newName.concat(".").concat(nullSuffix);
        }
        return newName;   
    } 
    
    /**
     * <b>function:</b> 利用uuid产生一个随机的name
     * @createDate Oct 9, 2010 10:45:27 PM
     * @param fileName 带后缀的文件名称
     * @return String 随机生成的name
     */
    public static String getRandomName(String fileName) {
    	String randomName = UUID.randomUUID().toString();
    	return getNewFileName(fileName, randomName, "txt");
    } 
    
    /**
     * <b>function:</b> 用当前日期、时间和1000以内的随机数组合成的文件名称
     * @createDate Oct 9, 2010 11:01:47 PM
     * @param fileName 文件名称
     * @return 新文件名称
     */
    public static String getNumberName(String fileName) {
    	SimpleDateFormat format = new SimpleDateFormat("yyMMddhhmmss");
		int rand = new Random().nextInt(1000);
		String numberName = format.format(new Date()) + rand;
		return getNewFileName(fileName, numberName, "txt");
    }
    
    /**
     * <b>function:</b>判断该文件是否存在
     * @createDate Oct 10, 2010 12:00:44 AM
     * @param fileName 文件名称
     * @param path 目录
     * @return 是否存在
     */
    public static boolean isFileExist(String fileName, String path) {
		File file = new File(getDoPath(path) + fileName);
		return file.exists();
	}
    
    /**
     * <b>function:</b>返回可用的文件名
     * @createDate Oct 10, 2010 1:02:45 AM
     * @param fileName 文件名
     * @param path 路径
     * @return 可用文件名
     */
    public static String getBracketFileName(String fileName, String path) {
    	return getBracketFileName(fileName, fileName, path, 1);
    }
    
    
    /**
     * <b>function:</b>递归处理文件名称，直到名称不重复（对文件名、目录文件夹都可用）
     * eg: a.txt --> a(1).txt<br/>
     * 文件夹upload--> 文件夹upload(1)
     * @createDate Oct 10, 2010 12:56:27 AM
     * @param fileName 文件名称
     * @param path 文件路径
     * @param num 累加数字，种子
     * @return 返回没有重复的名称
     */
    public static String getBracketFileName(String fileName, String bracketName, String path, int num) {
    	boolean exist = isFileExist(bracketName, path);
    	if (exist) {
    		int index = fileName.lastIndexOf(".");
    		String suffix = "";
    		bracketName = fileName;
    		if (index != -1) {
    			suffix = fileName.substring(index);
    			bracketName = fileName.substring(0, index);
    		}
    		bracketName += "(" + num + ")" + suffix;
    		num++;
    		bracketName = getBracketFileName(fileName, bracketName, path, num);
    	} 
    	return bracketName;
    }
    
    /**
     * <b>function:</b>处理后的系统文件路径
     * @createDate Oct 10, 2010 12:49:31 AM
     * @param path 文件路径
     * @return 返回处理后的路径
     */
    public static String getDoPath(String path) {
    	path = path.replace("\\", "/");
    	String lastChar = path.substring(path.length() - 1);
    	if (!"/".equals(lastChar)) {
    		path += "/";
    	}
    	return path;
    }
    
    /**
     * <b>function:</b> 创建指定的path路径目录
     * @createDate Oct 9, 2010 11:03:49 PM
     * @param path 目录、路径
     * @return 是否创建成功
     * @throws Exception
     */
    public static boolean mkDir(String path) throws Exception {   
        File file = null;   
        try {   
            file = new File(path);   
            if (!file.exists()) {   
            	//file.mkdir();创建子目录，如果父目录不存在则不创建
                return file.mkdirs();   
            }   
        } catch (RuntimeException e) {   
        	throw e;
        } finally {   
            file = null;   
        }   
        return false;   
    }   


}
