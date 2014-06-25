package com.system.util;

import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang.StringUtils;

public class BeanUtil {
	
	/**
	 * @功能	domain转化成Map
	 * @param bean
	 * @return
	 * @throws IllegalArgumentException
	 * @throws IllegalAccessException
	 */
	public static Map<String,Object> convertBeanToMap(Object bean) throws IllegalArgumentException, IllegalAccessException{
		HashMap<String,Object> data = new HashMap<String,Object>();
		if(null != bean){
			Field[] fields = bean.getClass().getDeclaredFields();

			for(Field field : fields){
		    	field.setAccessible(true);
		    	data.put(field.getName(), field.get(bean));
		    }
		}

		return data;
	}
	
	/**
	 * 验证字符串为null或只包含空格
	 * 为null或只包含空格 返回 true
	 * @param str
	 * @return
	 */
	public static boolean isBlank(String str){
		return StringUtils.isBlank(str);
	}
	
	/**
	 * 验证字符串不为null并且不为空并且不为空格
	 * 为null或只包含空格 返回 true
	 * @param str
	 * @return
	 */
	public static boolean isNotBlank(String str){
		return StringUtils.isNotBlank(str);
	}
	
	/**
	 * 验证对象是否不为Null
	 * @param obj
	 * @return 
	 * Null 抛出异常 </br>
	 * 否 则返回 true
	 * @throws NullPointerException
	 */
	public static boolean isObjectNotNull(Object obj) throws NullPointerException{
		boolean bool = true;
		if(null == obj){
			throw new NullPointerException(".....isObjectNull..........传入的对象为null。。。");
		}
		
		return bool;
	}
	
	/**
	 * 验证对象是否为Null
	 * @param obj
	 * @return
	 * Null 返回 true </br>
	 * 否 则返回 false </br>
	 * 不抛异常
	 */
	public static boolean isObjectNull(Object obj){
		boolean bool = true;
		if(null != obj){
			bool = false;
		}
		
		return bool;
	}
	
	public static void main(String[] args) {
		System.out.println("isBlank.................."+isBlank("   dd "));
	}
	
}
