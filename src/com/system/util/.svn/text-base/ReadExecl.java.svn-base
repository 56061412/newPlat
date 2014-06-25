package com.system.util;

import java.io.File;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import jxl.Sheet;
import jxl.Workbook;

import net.sf.json.JSONObject;

import org.apache.commons.beanutils.BeanUtils;

public class ReadExecl {
	
	/**
	 * 读取execl文件
	 * @param fileFullPath	文件完整路径
	 * @param startRow		开始行数
	 * @param attrs			字段属性名称数组
	 * @param valdate		字段长度验证数组
	 * @param clz			bean Class
	 * @return
	 * @throws Exception
	 */
	public static List readExecl(String fileFullPath, int startRow, String attrs[], String valdate[], Class clz) throws Exception{
		List list = new ArrayList();
		try {
			//参数数组长度
			int objColumns = attrs.length;
			
			File file = new File(fileFullPath);
			Workbook workbook = Workbook.getWorkbook(file);
			Sheet sheet = workbook.getSheet(0);
			int rows = sheet.getRows();
			//实际文件 列总数
			int columns = sheet.getColumns();
			
			//参数数组长度 和 文件列总数 取小
			int c = objColumns > columns ? columns : objColumns;
			
			
			for (int i = startRow; i < rows; i++) {
				Object o = clz.newInstance();
				for (int j = 0; j < c; j++) {
					String str = sheet.getCell(j, i).getContents();
					int strLength = str.length();
					int valLength = Integer.parseInt(valdate[j]);
					if(strLength > valLength){
						throw new Exception("第"+i+"行 第"+(j+1)+"个 字段长度超长 "+"长度要求为"+valLength+"个字符");
					}else
						BeanUtils.setProperty(o, attrs[j], str);
				}
				list.add(o);
			}
			/*
			for (int i = 0; i < list.size(); i++) {
				User u = (User)list.get(i);
				System.out.println("u.getName()。。。。。。。。。。。。。。。。。"+u.getName());
				System.out.println("getAge()。。。。。。。。。。。。。。。。。"+u.getAge());
			}
			*/
		} catch (Exception e) {
			throw new Exception("读取execl文件出错! \n"+e);
		}
		
		return list;
	}
	
	public static List<Map<String, String>> readExeclSendMSG(String fileFullPath, int startRow) throws Exception{
		List<Map<String, String>> list = new ArrayList<Map<String, String>>();
		try {
			File file = new File(fileFullPath);
			Workbook workbook = Workbook.getWorkbook(file);
			Sheet sheet = workbook.getSheet(0);
			int rows = sheet.getRows();
			//实际文件 列总数
//			int columns = sheet.getColumns();
			
			for (int i = startRow; i < rows; i++) {
				Map<String, String> msgMap = new HashMap<String, String>();

				String phone = sheet.getCell(0, i).getContents();
				String msg = sheet.getCell(1, i).getContents();
				msgMap.put("phone", phone);
				msgMap.put("msg", msg);
				
				System.out.println("phone............................"+phone);
				
				list.add(msgMap);
			}
			
			System.out.println("list.size....................................."+list.size());
			
			return list;
		} catch (Exception e) {
			throw new Exception("读取execl文件出错! \n"+e);
		}
	}
	

	
	public static void main(String[] args) throws Exception {
		String fileName = "G:/henkelSMS.xls";
		List<Map<String, String>> list = readExeclSendMSG(fileName, 1);
		
		Calendar cal = Calendar.getInstance();
		cal.setTime(new Date());
		
		for (Map<String, String> map : list) {
			String jsonSMS = JSONObject.fromObject(map).toString();
			System.out.println("jsonSMS................................."+jsonSMS);
			//RestClientUtil.sendSMS(jsonSMS);

			cal.add(Calendar.SECOND, 5);
			
			Calendar calNew = Calendar.getInstance();
			calNew.setTime(new Date());
			if(calNew.compareTo(cal) == 0){
				System.out.println("jsonSMS............过了5秒钟....................."+jsonSMS);
			}else{
				
			}
			
			
		}
	}

}
