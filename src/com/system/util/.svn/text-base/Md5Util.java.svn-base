package com.system.util;

import java.security.MessageDigest;

public class Md5Util {
	
	public static void main(String[] args) throws Exception {
		String userLabel = "admin";
		System.out.println(encryptByMD5(userLabel));
	}
	
	public static String encryptByMD5(String str) throws Exception{
		byte[] strByte = str.getBytes();
		String value = "";
		MessageDigest md5 = MessageDigest.getInstance("MD5");
		md5.update(strByte);
		byte[] bts = md5.digest();
		
		//采用Base64算法，将加密后的字节变成字符串
//		BASE64Encoder encoder = new BASE64Encoder();
//		value = encoder.encode(md5.digest(str.getBytes("utf-8")));
//		value = encoder.encode(bts);
		
		StringBuilder sb = new StringBuilder();
		//转换为16进制  
		for (int i = 0; i < bts.length; i++) {
			if ((bts[i] & 0xff) < 0x10) {
				sb.append("0");
			}
			sb.append(Long.toString(bts[i] & 0xff, 16));
		}

		value = sb.toString();
		
		return value;
	}
	

}
