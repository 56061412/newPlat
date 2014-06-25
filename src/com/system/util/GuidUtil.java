package com.system.util;

import java.util.UUID;

import org.apache.commons.lang.StringUtils;

public class GuidUtil {

	public static String newGuid() {
		return UUID.randomUUID().toString();
	}

	public static String newGuid(String objectGuid) {
		if (StringUtils.isEmpty(objectGuid))
			return UUID.randomUUID().toString();
		else
			return objectGuid.trim();
	}

}
