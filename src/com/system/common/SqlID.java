package com.system.common;

import org.apache.commons.lang.StringUtils;

import com.system.exception.PlatException;

public class SqlID {

	private String nameSpace;

	private String sqlString;

	public String getSqlID() {
		return this.nameSpace + "." + this.sqlString;
	}

	public SqlID(String nameSpace, String sqlString) {
		if (StringUtils.isEmpty(nameSpace) || StringUtils.isEmpty(sqlString))
			throw new PlatException(new Exception("空的sql字符串"));
		this.nameSpace = nameSpace;
		this.sqlString = sqlString;
	}

}
