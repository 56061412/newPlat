package com.system.util;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang.StringUtils;

import com.system.exception.PlatException;

/**
 * 事件相关的静态处理函数
 * @author zhp
 *
 */
public final class DateUtil {

	/**
	 * 默认日期格式：yyyy-MM-dd
	 */
	public static final String DEFAULT_DATE_PATTERN = "yyyy-MM-dd";

	/**
	 * 默认时间格式：yyyy-MM-dd HH:mm:ss
	 */
	public static final String DEFAULT_DATETIME_PATTERN = "yyyy-MM-dd HH:mm:ss";

	/**
	 * 默认时间格式：yyyy-MM-dd HH:mm
	 */
	public static final String DEFAULT_DATEMIN_PATTERN = "yyyy-MM-dd HH:mm";

	/**
	 * 默认时间戳格式，到毫秒 yyyy-MM-dd HH:mm:ss SSS
	 */
	public static final String DEFAULT_DATEDETAIL_PATTERN = "yyyy-MM-dd HH:mm:ss SSS";

	/**
	 * 全用"-"分割的format格式
	 */
	public static final String DEFAULT_DATEDETAIL_PATTERN_1 = "yyyy-MM-dd-HH-mm-ss-SSS";

	/**
	 * @功能 取默认当前时间
	 * @说明 如果系统默认当前时间是jvm时间，则调用currentJvmDate;否则调用currentDbDate
	 * @return
	 */
	public static Date currentDate() {
		return currentJvmDate();
	}

	/**
	 * 取得当前系统时间
	 * 
	 * @return
	 */
	public static Timestamp currentTimestamp() {
		return new Timestamp(new Date().getTime());
	}

	/**
	 * @功能  取当前java虚拟机时间
	 * @return
	 */
	public static Date currentJvmDate() {
		return new java.util.Date();
	}

	/**
	 * @功能 将日期字符串解析我日期类型数据。
	 * @param dateString
	 * @param formatString
	 * @return
	 */
	public static Date toDate(String dateString, String formatString) {
		try {
			if (StringUtils.isEmpty(dateString)
					|| StringUtils.isEmpty(formatString))
				throw new PlatException();
			return getDateParser(formatString).parse(dateString);
		} catch (ParseException e) {
			throw new PlatException(e);
		}
	}

	/**
	 * @功能 根据dateField各字段值构造时间
	 * @param year
	 * @param month
	 * @param day
	 * @param hour
	 * @param minute
	 * @param second
	 * @param millisecond
	 * @return
	 */
	public static Date toDate(int year, int month, int day, int hour,
			int minute, int second, int millisecond) {
		throw new RuntimeException("功能尚未实现");
	}

	/**
	 * @功能 返回指定日期是一周的第几天(星期天是第0天）
	 * @param date
	 * @return
	 * @throws PlatException
	 */
	public static int getDayInWeek(Date date) throws PlatException {
		throw new RuntimeException("功能尚未实现");
	}

	/**
	 * @功能 将日期转换为指定格式的字符串
	 * @param date
	 * @param fromatString
	 * @return
	 */
	public static String toDateString(Date date, String fromatString) {
		try {
			if (date == null || StringUtils.isEmpty(fromatString))
				throw new PlatException();
			return getDateParser(fromatString).format(date);
		} catch (PlatException e) {
			throw new PlatException(e);
		}

	}

	private static Map<String, SimpleDateFormat> parsers = new HashMap<String, SimpleDateFormat>();

	private static SimpleDateFormat getDateParser(String pattern) {
		SimpleDateFormat parser = parsers.get(pattern);
		if (parser == null) {
			parser = new SimpleDateFormat(pattern);
			parsers.put(pattern, parser);
		}
		return (SimpleDateFormat) parser;
	}

	//add by yikeke 2010-10-13
	/**
	 * 将String类型转换为Date，根据自定义模式
	 */
	public static Date string2Date(String date, String pattern) {
		DateFormat dataformat = new SimpleDateFormat(pattern);
		dataformat.setLenient(false);
		try {
			return dataformat.parse(date);
		} catch (ParseException e) {
			e.printStackTrace();
			// return new Date();
			throw new PlatException(e);
		}
	}
	//end add 

}
