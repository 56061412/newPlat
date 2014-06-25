package com.system.util;

import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.system.exception.PlatException;

/**
 * 提供domain，map，xml之间的互相转化的功能
 * 
 * @author zhp
 * 
 */
public final class DomainUtil {

	/**
	 * @功能 domain转化成Map
	 * @说明 支持子类，通过反射调用get,set方法
	 * @param obj
	 * @return
	 */
	public  static <T> Map DomainToMap(T t){
		try {
			if (t == null)
				throw new PlatException();
			Map<Object,Object> rtn = new HashMap<Object,Object>();
			Method[] ms =  getObjectGetMethods(t,"get");
			for (Method m:ms)
			{
				
					rtn.put(getKey(m), m.invoke(t, (Object[])null));
				 
			}
			return rtn;
		} catch (Exception e) {
			e.printStackTrace();
			throw new PlatException();
		}
	}
	
	/**
	 * @功能 Map转化成Domain,map的数据类型必须和domain的数据类型匹配
	 * @param m
	 *            不能为空 // *
	 * @param c
	 *            必须继承IDomain
	 * @return
	 */
	public static <T> T MapToDomain(Map map, Class<? extends T> c) {
		try {
			if (map == null || c == null)
				throw new PlatException("");
			T t = c.newInstance();
			Method[] ms = getObjectGetMethods(t, "set");

			for (Method m : ms) {
				Object o = map.get(getKey(m));
				// m.invoke(t, new Object[]{o});//2011-12-10替换为下面 zyj

				Class[] cc = m.getParameterTypes();
				if (cc.length != 1)
					continue;
				String type = cc[0].getSimpleName();
				setValue(type, o, m, t);
			}
			return t;
		} catch (Exception e) {
			e.printStackTrace();
			throw new PlatException(e);
		}
	}

	private static void setValue(String type, Object value, Method method,
			Object bean) {
		if (value != null && !value.equals("")) {
			try {
				if (type.equals("String")) {
					method.invoke(bean, new Object[] { "" + value });
				} else if (type.equals("int") || type.equals("Integer")) {
					method.invoke(bean,
							new Object[] { new Integer("" + value) });
				} else if (type.equals("double") || type.equals("Double")) {
					method
							.invoke(bean,
									new Object[] { new Double("" + value) });
				} else if (type.equals("float") || type.equals("Float")) {
					method.invoke(bean, new Object[] { new Float("" + value) });
				} else if (type.equals("long") || type.equals("Long")) {
					method.invoke(bean, new Object[] { new Long("" + value) });
				} else if (type.equals("boolean") || type.equals("Boolean")) {
					method.invoke(bean, new Object[] { Boolean.valueOf(""
							+ value) });
				} else if (type.equals("BigDecimal")) {
					method.invoke(bean, new Object[] { new BigDecimal(""
							+ value) });
				} else if (type.equals("Date")) {
					Date date = null;
					if (value.getClass().getSimpleName().equals("Date")
							|| value.getClass().getSimpleName().equals(
									"Timestamp")
							|| value.getClass().getSimpleName().equals(
									"DBTimestamp")) {
						date = (Date) value;
						date = new Timestamp(date.getTime());
					} else {
						try {
							String format = "yyyy-MM-dd hh:mm:ss";
							SimpleDateFormat sf = new SimpleDateFormat();
							sf.applyPattern(format);
							date = sf.parse(String.valueOf(value));
						} catch (ClassCastException e) {
							method.invoke(bean, new Object[] { value });
							return;
						}
					}
					if (date != null) {
						method.invoke(bean, new Object[] { date });
					}
				} else if (type.equals("byte[]")) {
					method.invoke(bean, new Object[] { new String(value + "")
							.getBytes() });
				} else {
					method.invoke(bean, new Object[] { value });
				}
			} catch (Exception e) {
				System.out.println("将Map里的值填充到domain时出错,请检查!值为" + value
						+ ",domain类型为" + type);
				e.printStackTrace();
			}
		}
	}

	/**
	 * @功能 取指定对象的get或set方法
	 * @param t
	 *            对象
	 * @param medhodKind
	 *            只能等于get或set
	 * @return
	 */
	public static Method[] getObjectGetMethods(Object t, String methodKind) {
		List<Method> methodList = new ArrayList<Method>();
		Class c = t.getClass();
		Map<String, Method> keyMap = new HashMap<String, Method>();
		while (c != null && !c.equals(Object.class)) {
			Method[] m = c.getDeclaredMethods();
			if (m != null) {
				for (int i = 0; i < m.length; i++) {
					if (m[i].getName().startsWith(methodKind)
							&& !m[i].getName().equals("setValue")) {
						if (keyMap.get(m[i].getName()) == null) {
							methodList.add(m[i]);
							keyMap.put(m[i].getName(), m[i]);
						}
					}
				}
			}
			c = c.getSuperclass();
		}
		return methodList.toArray(new Method[] {});
	}

	/**
	 * @功能 取指定方法代表的key
	 * @说明 此处方法指的是set get 方法
	 * @param m
	 */
	private static String getKey(Method m) {
		String mName = m.getName();
		String firstName = mName.substring(3,4).toLowerCase();
		String lastName = mName.substring(4);
//		 System.out.println(mName.substring(3,4).toLowerCase());
//		 System.out.println(m.getName().substring(4));
		String rs = firstName + lastName;
		return rs;
	}
}
