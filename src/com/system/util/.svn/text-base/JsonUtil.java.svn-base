package com.system.util;

import java.util.List;

import com.system.common.DateJsonValueProcessor;

import net.sf.ezmorph.object.DateMorpher;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JSONSerializer;
import net.sf.json.JsonConfig;
import net.sf.json.util.JSONUtils;

public class JsonUtil {
	public static final String[] DATE_FMTS = new String[] { "yyyy/MM/dd", "yyyy-MM-dd" };
	public static final String[] DATE_FMTS_HH_MM_SS = new String[] { "yyyy/MM/dd HH:mm:ss", "yyyy-MM-dd HH:mm:ss" };
	
	
	@SuppressWarnings("unchecked")
	public static <T>T jsonToBean(String json,Class<T> clazz){
		System.out.println("json:"+json);
		JSONUtils.getMorpherRegistry().registerMorpher( new DateMorpher(DATE_FMTS));
		
	    JSONObject jsonObject = JSONObject.fromObject(json);
	    
	    return (T)JSONObject.toBean(jsonObject, clazz);
	}
	
	@SuppressWarnings("unchecked")
	public static  <T>List<T>  jsonToList(String json,Class<T> clazz) throws Exception{
	    System.out.println("json:"+json);
	    try {
	    	JSONArray arry=JSONArray.fromObject(json);
	    	
	    	JSONUtils.getMorpherRegistry().registerMorpher( new DateMorpher(DATE_FMTS));
	    	
	    	return JSONArray.toList(arry, clazz.newInstance(), new JsonConfig());
			
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}
	
	@SuppressWarnings("unchecked")
	public static  <T>T[] jsonToArray(String json,Class<T> clazz){
		JSONUtils.getMorpherRegistry().registerMorpher( new DateMorpher(DATE_FMTS));
		
	    JSONArray arry=JSONArray.fromObject(json);
	    
	    return (T [])JSONArray.toArray(arry, clazz);
	}
	
	public static String listToJson(List<?> list){
	    return JSONSerializer.toJSON(list).toString();
	}
	
	public static JSONObject beanToJsonObject(Object bean){
		JsonConfig jsonConfig = new JsonConfig();
		jsonConfig.registerJsonValueProcessor(java.util.Date.class, new DateJsonValueProcessor("yyyy-MM-dd HH:mm:ss"));
		return JSONObject.fromObject(bean,jsonConfig);		
	}
	
	@SuppressWarnings("rawtypes")
	public static JSONObject listToJsonObject(List list){
		JsonConfig jsonConfig = new JsonConfig();
		jsonConfig.registerJsonValueProcessor(java.util.Date.class, new DateJsonValueProcessor("yyyy-MM-dd HH:mm:ss"));
		JSONArray jsonArray = JSONArray.fromObject(list,jsonConfig);
		JSONObject resultJson = new JSONObject();			
		
		resultJson.put("data", jsonArray);
		return resultJson;
		
	}
	
	@SuppressWarnings("rawtypes")
	public static JSONArray listToJSONArray(List list){
		JsonConfig jsonConfig = new JsonConfig();
		jsonConfig.registerJsonValueProcessor(java.util.Date.class, new DateJsonValueProcessor("yyyy-MM-dd HH:mm:ss"));
		JSONArray jsonArray = JSONArray.fromObject(list,jsonConfig);
		
		return jsonArray;
	}

}
