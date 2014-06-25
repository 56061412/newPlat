package com.system.util;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.opensymphony.xwork2.ActionContext;
import com.system.exception.PlatException;

/**
 * 取当前用户Session信息
 *
 */
public final class SessionUtil {

	private final static String PLAT_USERLABLE = "plat_userLable";

//	private final static String plat_pub = "plat_pub";

	@SuppressWarnings("rawtypes")
	private static final ThreadLocal threadLocal = new ThreadLocal();

	@SuppressWarnings("rawtypes")
	public static synchronized Map<String, Object> getData() {
		Map map = (Map) threadLocal.get();
		if (map == null) {
			map = Collections.synchronizedMap(new HashMap());
			map = ActionContext.getContext().getSession();
			threadLocal.set(map);
		}
		return map;
	}

	public static Object getProperty(String keyName) {
		Map<String, Object> map = getData();
		return map.get(keyName);
	}

	/**
	 * @功能 取当前登录用户
	 * @return
	 * @throws EfmpxSessionNotFoundException
	 */
//	public static String getCurrentUserLabel() {
		//String loginName = "admin";
//		String loginName = (String) getProperty(PLAT_USERLABLE);
//		ActionContext actionContext = ActionContext.getContext();
//		Map<String, Object> session = actionContext.getSession();
//		String loginName = session.get(PLAT_USERLABLE).toString();
//		if (loginName == null)
//			throw new PlatException();
//
//		return loginName;
//	}

	/**
	 * @功能 取当前登录用户
	 * @return
	 * @throws EfmpxSessionNotFoundException
	 */
	public static String getCurrentUserLabel(HttpServletRequest request) {
		String loginName = "admin";
//		String loginName = (String) request.getSession().getAttribute(PLAT_USERLABLE);
		if (loginName == null)
			throw new PlatException();

		return loginName;
	}

	/**
	 * 取当前用户IP地址
	 * @param request
	 * @return
	 */
	public static String getIpAddr(HttpServletRequest request) {
		String ip = "";

		ip = request.getHeader("x-forwarded-for");
		if (ip != null)
			ip = ip.split(",")[0];

		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("WL-Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getRemoteAddr();
		}

		return ip;
	}
}
