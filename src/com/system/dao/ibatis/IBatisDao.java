package com.system.dao.ibatis;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.BeanNameAware;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import com.system.common.SqlID;
import com.system.dao.Dao;
import com.system.exception.PlatException;

public class IBatisDao extends SqlMapClientDaoSupport implements Dao,
		BeanNameAware {
	public static int MAX_QUERY_COUNT = 1000;

	protected String name;

	protected boolean autoCount;

	protected boolean autoLimit;

	protected String orderKey;

	private int maxQueryCount = MAX_QUERY_COUNT;

	public void setMaxQueryCount(int maxQueryCount) {
		this.maxQueryCount = (maxQueryCount < MAX_QUERY_COUNT ? MAX_QUERY_COUNT
				: maxQueryCount);
	}

	@SuppressWarnings("rawtypes")
	public List query(Object parameters) {
		return query("", parameters);
	}

	@SuppressWarnings("rawtypes")
	public List query(String name, Object parameters) {
		String statementName = getStatementName("query", name);
		return getSqlMapClientTemplate().queryForList(statementName,
				parameters, 0, this.maxQueryCount);
	}

	public int getMaxQueryCount() {
		return this.maxQueryCount;
	}

	@SuppressWarnings("rawtypes")
	public List query(Object parameters, int offset, int limit) {
		return query("", parameters, offset, limit);
	}

	/*
	public List query(String name, Object parameters, int offset, int limit) {
		if (limit > this.maxQueryCount) {
			throw new IllegalArgumentException("Limit must be less than "
					+ this.maxQueryCount + " " + limit);
		}
		if ((limit < 0) && (limit != -999999)) {
			limit = this.maxQueryCount;
		}

		String statementName = getStatementName("query", name);

		if (limit == -999999) {
			if (parameters == null)
				parameters = new HashMap();
			return getSqlMapClientTemplate().queryForList(
					statementName, parameters);
		}

		if ((this.autoLimit) || (StringUtils.isNotBlank(this.orderKey))) {
			if (parameters == null)
				parameters = new HashMap();
			return getExtendedSqlMapClientTemplate().queryForList(
					statementName, parameters, offset, limit, this.orderKey,
					this.autoLimit);
		}

		return getSqlMapClientTemplate().queryForList(statementName,
				parameters, offset, limit);
	}
	
	public int count(Object parameters) {
		return count("", parameters);
	}
	 */
	/*
	public int count(String name, Object parameters) {
		String statementName = getStatementName(this.autoCount ? "query"
				: "count", name);

		if (this.autoCount) {
			return getSqlMapClientTemplate().queryForCount(
					statementName, parameters);
		}

		Object count = getSqlMapClientTemplate().queryForObject(statementName,
				parameters);

		return ((Integer) count).intValue();
	}
	*/
	
	public Object get(String property, Serializable value) {
		return get("", property, value);
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	public Object get(String name, String property, Serializable value) {
		Map parameters = new HashMap(1);
		parameters.put(property, value);

		List list = query(name, parameters, 0, 1);

		return list.isEmpty() ? null : list.get(0);
	}

	public Object load(String property, Serializable value) {
		return load("", property, value);
	}

	public Object load(String name, String property, Serializable value) {
		Object object = get(name, property, value);
		if (object == null) {
			throw new PlatException("E_Plat_ObjectNotFound", new Object[] {
					property, value });
		}

		return object;
	}

	public void insert(Object object) {
		insert("", object);
	}

	public void insert(String name, Object object) {
		String statementName = getStatementName("insert", name);
		getSqlMapClientTemplate().insert(statementName, object);
	}
	
	public void insert(SqlID sqlID, Object object) {
		String statementName = getStatementName("insert", sqlID.getSqlID());
		getSqlMapClientTemplate().insert(statementName, object);
	}

	public int update(Object object) {
		return update("", object);
	}

	public int update(String name, Object object) {
		String statementName = getStatementName("update", name);
		return getSqlMapClientTemplate().update(statementName, object);
	}
	
	public int update(SqlID sqlID, Object object) {
		String statementName = getStatementName("update", sqlID.getSqlID());
		return getSqlMapClientTemplate().update(statementName, object);
	}

	public int delete(Object parameters) {
		return delete("", parameters);
	}

	public int delete(String name, Object parameters) {
		String statementName = getStatementName("delete", name);

		try {
			return getSqlMapClientTemplate().delete(statementName, parameters);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 1;
	}

	public Object getNextPK() {
		return getSqlMapClientTemplate().queryForObject(this.name + ".nextpk",
				null);
	}

	public void setBeanName(String name) {
		this.name = name;
	}

	protected String getStatementName(String operation, String name) {
		if (name.indexOf(".") > 0) {
			return name;
		}
		return this.name + "." + operation + StringUtils.capitalize(name);
	}

	public void setAutoLimit(boolean autoLimit) {
		this.autoLimit = autoLimit;
	}

	public void setAutoCount(boolean autoCount) {
		this.autoCount = autoCount;
	}
	
	public void setOrderKey(String orderBy) {
		this.orderKey = orderBy;
	}

	@SuppressWarnings("rawtypes")
	public List query(String paramString, Object paramObject, int paramInt1, int paramInt2) {
		
		return getSqlMapClientTemplate().queryForList(paramString, paramObject, paramInt1, paramInt2);
	}
}
