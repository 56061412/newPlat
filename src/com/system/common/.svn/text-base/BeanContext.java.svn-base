package com.system.common;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.system.dao.Dao;
import com.ibatis.sqlmap.engine.impl.SqlMapClientImpl;

/**
 * 操作Spring Context工具类，实现为singleton
 * 
 * 
 */
public final class BeanContext {
	private static ApplicationContext instance;

	private BeanContext() {

	}

	/**
	 * 从SpringContext中取得对象
	 * 
	 * @param beanName
	 * @return
	 */
	public static Object getBean(String beanName) {
		if (instance == null) {
			initContext();

		}
		return instance.getBean(beanName);
	}

	private static synchronized void initContext() {
		instance = new ClassPathXmlApplicationContext("classpath*:cfg/spring/applicationContext*.xml");
	}

	/**
	 * 取得DAO对象实例
	 * 
	 * @return
	 */
	public static Dao getDao() {
		Dao dao = (Dao) getBean("dao");
		return dao;
	}
	
	/**
	 * 判断是否注册了指定名称的Bean;
	 * @param beanName
	 * @return
	 */
	public static boolean hasBean(String beanName){
		if (instance == null) {
			initContext();

		}
		return instance.containsBean(beanName);
	}
	
	public static SqlMapClientImpl getSqlMapClientImpl() {
		return (SqlMapClientImpl) BeanContext.getBean("sqlMapClient");
	}

}
