package com.system.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

import org.apache.commons.net.ftp.FTPClient;

public class FTPUtil {
	
	// server：服务器名字
	// user：用户名
	// password：密码
	// path：服务器上的路径
	public static FTPClient connectServer(String ip, int port,String user, String password,String path) throws IOException {
		try {
			FTPClient ftpClient;
			
			ftpClient = new FTPClient();
			ftpClient.connect(ip);
			ftpClient.login(user, password);
			System.out.println("login success!");
//			if (path.length() != 0) ftpClient.cd(path);
//				ftpClient.binary();
			
			return ftpClient;
		} catch (IOException ex) {
			System.out.println("not login");
			System.out.println(ex);
			throw ex;
		}
	}

	public static void upload(FTPClient ftpClient, String srcFile, String remoteFile) {
//		FTPClient ftpclient = new FTPClient();
        FileInputStream fis =null;
        try {
//            ftpclient.connect("127.0.0.1");
//            ftpclient.login("soqi", "soqi");
            File file_in = new java.io.File(srcFile);
            ftpClient.changeWorkingDirectory("/");
            ftpClient.setBufferSize(1024);
            ftpClient.setControlEncoding("UTF-8");
            ftpClient.setFileType(FTPClient.BINARY_FILE_TYPE);
            fis = new FileInputStream(file_in);
            ftpClient.storeFile(remoteFile, fis);
            System.out.println("upload...........success..............");
               
        } catch (IOException e) {
            e.printStackTrace();
        }
	}
	
	public static void imageUpload(String srcFile, String remoteFile) throws IOException{
		String ip = "222.73.85.207";
		int port = 21;
		String user = "allwin";
		String password = "Nizhidaoma900*";
		String path = "E:/";
		FTPClient ftpClient = connectServer(ip, port, user, password, path);
		
		upload(ftpClient, srcFile, remoteFile);
		
	}
	
	public static void main(String[] args) {
		try {
			String srcFile = "G:/gaint.jpg";
			String remoteFile = "gaint.jpg";
			
			imageUpload(srcFile, remoteFile);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
