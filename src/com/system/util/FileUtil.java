package com.system.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class FileUtil {
	
	/**
	 * 以字节为单位读取文件，常用于读二进制文件，如图片、声音、影像等文件。
	 * @param fileName:文件的名
	 */
	public static void copyFile(String srcfilePath, String copyFilePath) {
		File file = new File(srcfilePath);
		InputStream in = null;
		try {
			System.out.println("以字节为单位读取文件内容，一次读多个字节：");
			/*一次读多个字节*/
//			byte[] tempbytes = new byte[100];
//			int byteread = 0;
			in = new FileInputStream(file);
			/*读入多个字节到字节数组中，byteread为一次读入的字节数*/
//			while ((byteread = in.read(tempbytes)) != -1) {
//				System.out.println(tempbytes);
//				System.out.println(0);
//				System.out.println(byteread);
//			}
			
			//输出
			FileOutputStream out = new FileOutputStream(new File(copyFilePath));// 指定要写入的图片  
	        int n = 0;// 每次读取的字节长度  
	        byte[] bb = new byte[1024];// 存储每次读取的内容  
	        while ((n = in.read(bb)) != -1) {
	            out.write(bb, 0, n);// 将读取的内容，写入到输出流当中  
	        }
	        System.out.println("输出文件完成。。");
	        out.close();// 关闭输入输出流  
	        in.close();
			
		} catch (Exception e1) {
			System.out.println("读取文本文件异常" + e1);
		} finally {
			if (in != null) {
				try {
					in.close();
				} catch (IOException e1) {
					System.out.println("读取文本文件异常" + e1);
				}
			}
		}
	}

}
