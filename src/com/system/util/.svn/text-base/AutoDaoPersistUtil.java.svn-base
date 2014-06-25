package com.system.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
import java.math.BigDecimal;
import java.sql.Clob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.sql.DataSource;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.jdbc.datasource.DataSourceUtils;

import com.auto.tools.AutoUtils;
import com.ibatis.sqlmap.engine.impl.SqlMapClientImpl;
import com.ibatis.sqlmap.engine.mapping.parameter.ParameterMap;
import com.ibatis.sqlmap.engine.mapping.sql.Sql;
import com.ibatis.sqlmap.engine.mapping.sql.dynamic.DynamicSql;
import com.ibatis.sqlmap.engine.mapping.sql.simple.SimpleDynamicSql;
import com.ibatis.sqlmap.engine.mapping.sql.stat.StaticSql;
import com.ibatis.sqlmap.engine.mapping.statement.MappedStatement;
import com.ibatis.sqlmap.engine.scope.RequestScope;
import com.system.common.AbstractDomain;
import com.system.common.BeanContext;
import com.system.common.IDomain;
import com.system.common.SqlID;
import com.system.dao.Dao;
import com.system.exception.PlatException;

/**
 * @功能 持久化工具类
 * @author zhp
 *
 */
public class AutoDaoPersistUtil {
	@Resource(name="dao")
	private Dao dao;
	
	Logger logger = Logger.getLogger(AutoDaoPersistUtil.class.getName());

	/**
	 * @功能 查询一条select语句的返回值
	 * @param param
	 * @param sqlid
	 * @return
	 * @throws EfmpxNullParameterException 
	 */
	public <T> List<T> query(Object param, SqlID sqlid) {
		return query2(param, sqlid);
	}

	private <T> List<T> query2(Object param, SqlID sqlid) {
		ResultSet resultSet = null;
		PreparedStatement ps = null;
		java.sql.Connection con = null;
        DataSource ds = null;
		BufferedReader br = null;
		Reader r = null;
		try {
			if (sqlid == null)
				throw new PlatException("");
			/*取得sql客户端*/
			SqlMapClientImpl client = BeanContext.getSqlMapClientImpl();
			/*取得查询语句*/
			MappedStatement statement = client.getMappedStatement(sqlid
					.getSqlID());
			/*取得ibatis sql对象*/
			Sql sql = statement.getSql();
			/*取得ibatis 参数map对象*/	
			ParameterMap parameterMap = null;
			RequestScope requestScope = new RequestScope();
			requestScope.setStatement(statement);
			
			if (sql instanceof DynamicSql/*动态sql*/) {
				parameterMap = sql.getParameterMap(requestScope, param);
			}else{
				parameterMap = statement.getParameterMap();
			}
			/*取得带参数的sql语句*/
			String s = sql.getSql(requestScope, param);
			
			if(logger.isDebugEnabled()){
				logger.debug(s);
				logger.debug(param);
			}	
			
			/*取得sql连接对象*/
            ds = (DataSource)BeanContext.getBean("dataSource") ;
			con = DataSourceUtils.doGetConnection(ds);			
			ps = con.prepareStatement(s);
			System.out.println("------------------"+s);
			if (parameterMap != null){		
				if(param instanceof Map||param instanceof AbstractDomain){			
					parameterMap.setParameters(requestScope, ps, parameterMap.getParameterObjectValues(requestScope, param));
				}else{
					if(s.indexOf("?")>0){
						ps.setString(1, (String)param);
					}
				}
			}	
			/*执行查询*/
			resultSet = ps.executeQuery();

			/*转换成目标对象*/
			List result = new ArrayList();
			Class c = statement.getResultMap().getResultClass();
			ResultSetMetaData rsm = resultSet.getMetaData();
			int columnCount = rsm.getColumnCount();
			while (resultSet.next()) {
				Map objMap = new HashMap();
				for (int i = 0; i < columnCount; i++) {
					if (resultSet.getObject(i + 1) instanceof Clob) {
						Clob clob = resultSet.getClob(i + 1);
						r = clob.getCharacterStream();
						br = new BufferedReader(r);
						StringBuffer resultString = new StringBuffer();
						String line = null;
						while ((line = br.readLine()) != null) {
							resultString.append(line);
						}
						objMap.put(rsm.getColumnName(i + 1), String
								.valueOf(resultString));
					} else {	
						String columnName = rsm.getColumnName(i + 1);
						String columnTable = rsm.getColumnLabel(i + 1);
						objMap.put(columnTable, resultSet.getObject(i + 1));
					}

				}
				if (Map.class.isAssignableFrom(c)) {
					result.add(objMap);
				} else if(String.class.isAssignableFrom(c)||Integer.class.isAssignableFrom(c) || BigDecimal.class.isAssignableFrom(c)){ 
					String key = (String)objMap.keySet().iterator().next();
					result.add(objMap.get(key));
				} else {
					result.add(DomainUtil.MapToDomain(objMap, c));
				}
			}
			return result;
		} catch (SQLException e) {
			throw new PlatException(e);
		} catch (IOException e) {
			if (r != null) {
				try {
					r.close();
				} catch (IOException es) {
					throw new PlatException(es);
				}
			}
			if (br != null) {
				try {
					br.close();
				} catch (IOException es) {
					throw new PlatException(es);
				}

			}
			throw new PlatException(e);
		} catch (Exception e) {
			e.printStackTrace();
			throw new PlatException(e);
		} finally {
            try {
            	if(ps!=null)
            		ps.close();
            	if(resultSet!=null)
            		resultSet.close();
                DataSourceUtils.doReleaseConnection(con, ds);
            } catch (SQLException e1) {
                // TODO Auto-generated catch block
                e1.printStackTrace();
            }
            
			//JdbcUtil.close(resultSet, ps, con);
			if (r != null) {
				try {
					r.close();
				} catch (IOException e) {
					throw new PlatException(e);
				}
			}
			if (br != null) {
				try {
					br.close();
				} catch (IOException e) {
					throw new PlatException(e);
				}

			}
		}
	}
	
	/**
	 * @功能 根据主键查询结果
	 * @param <T>
	 * @param c
	 * @param objectGuid
	 * @return
	 * @throws EfmpxNullParameterException
	 */
	public <T extends IDomain> T query(Class<? extends T> c,
			String objectGuid) {
		try {
			if (objectGuid == null)
				throw new PlatException("");
			List result = dao.query(getNameSpace(c) + ".load",
					objectGuid);
			if (result == null || result.size() == 0)
				return null;
			if (result.size() > 1)
				throw new PlatException(new PlatException(""));
			return (T) result.get(0);
		} catch (PlatException e) {
			throw new PlatException(e);
		}
	}

	/**
	 * @根据唯一索引查找结果
	 * @param <T>
	 * @param c
	 * @param param
	 * @return
	 */
	public <T extends IDomain> T query(Class<? extends T> c, Map param) {
		try {
			if (param == null)
				throw new PlatException("");
			List result = dao.query(
					getNameSpace(c) + ".query", param);
			if (result == null || result.size() == 0)
				return null;
			if (result.size() > 1)
				throw new PlatException(new PlatException(""));
			return (T) result.get(0);
		} catch (PlatException e) {
			throw new PlatException(e);
		}
	}

	public <T extends IDomain> List<T> queryList(Class<? extends T> c,
			Map param) {
		try {
			if (param == null)
				throw new PlatException("");
			List result = dao.query(
					getNameSpace(c) + ".query", param);
			return result;
		} catch (PlatException e) {
			throw new PlatException(e);
		}
	}

	/**
	 * @功能 插入一个domain
	 * @param <T>
	 * @param t
	 * @return 插入后的domain
	 * @throws EfmpxSessionNotFoundException 
	 * @throws PlatException 
	 */
	public <T extends IDomain> T insert(T t) {

		try {
			if (t == null)
				throw new PlatException("");

			Date currentDate = DateUtil.currentDate();
			if (t.getCreateTime() == null)
				t.setCreateTime(currentDate);
			if (t.getUpdateTime() == null)
				t.setUpdateTime(currentDate);
			if (StringUtils.isEmpty(t.ggetRecordGuid()))
				t.ssetRecordGuid(GuidUtil.newGuid());
			
			dao.insert(getNameSpace(t) + ".insert", t);
			
			return t;
		} catch (Exception e) {
			throw new PlatException(e);
		}

	}

	/**
	 * @功能 插入一个domain
	 * @param <T>
	 * @param t
	 * @return 插入后的domain
	 * @throws EfmpxSessionNotFoundException 
	 * @throws PlatException 
	 */
	public <T extends IDomain> T insert(T t, SqlID sqlid) {

		try {
			if (t == null)
				throw new PlatException("");

			Date currentDate = DateUtil.currentDate();
			if (t.getCreateTime() == null)
				t.setCreateTime(currentDate);
			if (t.getUpdateTime() == null)
				t.setUpdateTime(currentDate);
			if (StringUtils.isEmpty(t.ggetRecordGuid()))
				t.ssetRecordGuid(GuidUtil.newGuid());
			dao.insert(sqlid.getSqlID(), t);
			return t;
		}  catch (PlatException e) {
			throw new PlatException(e);
		}

	}

	/**
	 * @功能 批量插入
	 * @param param 参数
	 * @param sqlid sqlmap的key
	 * @return 
	 * @throws PlatException 
	 */
	public void insert(Object param, SqlID sqlid) {
		if (sqlid == null)
			throw new PlatException(new PlatException(""));
		try {
			Date currentDate = DateUtil.currentDate();
			if (param instanceof Map) {
				Map map = (Map) param;
				if (map.get("currentDate") == null)
					map.put("createDate", currentDate);
				if (map.get("updateDate") == null)
					map.put("updateDate", currentDate);
				if (map.get("recordVersion") == null)
					map.put("recordVersion", new Integer(0));
			}
			dao.insert(sqlid.getSqlID(), param);
		} catch (Exception e) {
			e.printStackTrace();
			throw new PlatException(e);
		}

	}

	/**
	 * @功能 更新一个domain
	 * @param <T>
	 * @param t
	 * @return 更新后的domain
	 * @throws PlatException 
	 * @throws EfmpxSessionNotFoundException 
	 */
	public <T extends IDomain> T update(T t) {
		try {
			if (t == null)
				throw new PlatException("");
			if (StringUtils.isEmpty(t.ggetRecordGuid()))
				throw new PlatException("");
			t.setUpdateTime(DateUtil.currentDate());

			dao.update(getNameSpace(t) + ".update", t);
			return t;
		} catch (PlatException e) {
			throw new PlatException(e);
		}
	}

	/**
	 * @功能 更新一个domain
	 * @param <T>
	 * @param t
	 * @return 更新后的domain
	 * @throws PlatException 
	 * @throws EfmpxSessionNotFoundException 
	 */
	public <T extends IDomain> T update(T t, SqlID sqlid) {
		try {	
			t.setUpdateTime(DateUtil.currentDate());

			dao.update(sqlid.getSqlID(), t);
			return t;
		} catch (PlatException e) {
			throw new PlatException(e);
		}
	}

	/**
	 * @功能 批量更新
	 * @param param 参数
	 * @param sqlid sqlmap的key
	 * @return
	 * @throws PlatException 
	 */
	public int update(Object param, SqlID sqlid) {
		if (sqlid == null)
			throw new PlatException(new PlatException(""));
		try {
			Date currentDate = DateUtil.currentDate();
			if (param instanceof Map) {
				Map<Object, Object> map = (HashMap<Object, Object>) param;
				if (map.get("updateDate") == null)
					map.put("updateDate", currentDate);
				if (map.get("recordVersion") != null) {
					int recordVersion = 1;
					try {
						recordVersion = new Integer(((Integer) map
								.get("recordVersion")).intValue() + 1);
					} catch (RuntimeException e) {
					}
					map.put("recordVersion", recordVersion);
				}
			}
			dao.insert(sqlid.getSqlID(), param);
		} catch (Exception e) {
			e.printStackTrace();
			throw new PlatException(e);
		}
		return dao.update(sqlid.getSqlID(), param);
	}

	/**
	 * @功能 删除一条记录
	 * @param objectGuid 被删除记录的主键
	 * @return 删除的记录数
	 * @throws PlatException 
	 */
	public <T extends IDomain> int delete(T t) {
		try {
			if (t == null)
				throw new PlatException("为null");
			if (StringUtils.isEmpty(t.ggetRecordGuid()))
				throw new PlatException("缺少主键");
			return dao.delete(getNameSpace(t) + ".delete",
					t.ggetRecordGuid());
		} catch (PlatException e) {
			throw new PlatException(e);
		}
	}

	/**
	 * @功能 删除一条记录，并返回被删除之前的记录内容
	 * @说明 先做查询，如果未发现记录 返回null
	 * @param <T>
	 * @param t
	 * @return
	 * @throws PlatException
	 */
	public <T extends IDomain> T delete2(T t) {
		try {
			if (t == null || t.ggetRecordGuid() == null)
				throw new PlatException("");
			if (StringUtils.isEmpty(t.ggetRecordGuid()))
				throw new PlatException("");
			Object o = query(t.getClass(), t.ggetRecordGuid());
			if (o == null)
				return null;
			dao.delete(getNameSpace(t) + ".delete", t.ggetRecordGuid());
			return (T) o;
		} catch (PlatException e) {
			throw new PlatException(e);
		}
	}


	/**
	 * @功能 批量删除记录
	 * @param param 参数
	 * @param sqlid sqlmap的key
	 * @return
	 * @throws PlatException 
	 */
	public int delete(Object param, SqlID sqlid) {
		if (sqlid == null)
			throw new PlatException(new PlatException(""));
		return dao.delete(sqlid.getSqlID(), param);
	}

	/**
	 * @功能 计算一条sql查询记录能够返回的记录数目
	 * @param param 参数
	 * @param sqlid sqlmap的key
	 * @return
	 */
	public long countSpecial(Map param, SqlID sqlid) {
		ResultSet result = null;
		PreparedStatement ps = null;
		java.sql.Connection con = null;
        DataSource ds = null;
		try {
			//删除orderBy查询
			if (param.containsKey("orderBy"))
				param.remove("orderBy");

			/*取得sql客户端*/
			SqlMapClientImpl client = BeanContext.getSqlMapClientImpl();
			/*取得查询语句*/
			MappedStatement statement = client.getMappedStatement(sqlid
					.getSqlID());
			/*取得ibatis sql对象*/
			Sql sql = statement.getSql();
			/*取得ibatis 参数map对象*/
			ParameterMap parameterMap = null;
			RequestScope requestScope = new RequestScope();
			requestScope.setStatement(statement);
			if (sql instanceof StaticSql/*静态sql*/) {
				parameterMap = statement.getParameterMap();
			}
			if (sql instanceof DynamicSql/*动态sql*/) {
				parameterMap = sql.getParameterMap(requestScope, param);
			}
            ds=(DataSource)BeanContext.getBean("dataSource") ;
			/*取得带参数的sql语句*/
			String s = sql.getSql(requestScope, param);
			s = notOrderby(s);
            //ConnectionHolder connHolder = (ConnectionHolder)TransactionSynchronizationManager.getResource(ds);
            //Connection con2 = connHolder.getConnection();
			// and by wf (修改为了加审计权限SQL)
			String sqlStr="";
			/**权限SQL**/
			String authoSql = (String)param.get("authoSql");
			if(authoSql !=null && !"".equals(authoSql)){
				if(s.toLowerCase().indexOf("order by")>=0){
					sqlStr =s.substring(0,s.toLowerCase().indexOf("order by"));
//					String orderBy = s.substring(s.toLowerCase().indexOf("order by"), s.length()).trim();
					sqlStr = sqlStr + " and "+authoSql;//+" "+orderBy;
				}
				else{
					sqlStr = s + " and "+authoSql;
				}
				
			}else{
				sqlStr = s;
			}
			/*取得sql连接对象*/
            con = DataSourceUtils.doGetConnection(ds);
			StringBuffer countQuery = new StringBuffer("SELECT COUNT(*) FROM (").append(sqlStr).append(") AS tmp");
			/*java.sql 执行sql语句对象*/
			if(logger.isDebugEnabled()){
				logger.debug("countSpecial=:"+countQuery);
			}
//			System.out.println("countSpecial=:"+countQuery);
			ps = generate(con, countQuery, param, false, parameterMap,
					requestScope);
			/*执行查询*/
			result = ps.executeQuery();
			result.next();
			return Integer.valueOf(String.valueOf(result.getObject(1)));
		} catch (SQLException e) {
			throw new PlatException(e);
		} catch (ParseException e) {
			throw new PlatException(e);
		}catch (Exception e) {
			e.printStackTrace();
			throw new PlatException(e);
		} finally {
            try {
            	if(ps!=null)
            		ps.close();
            	if(result!=null)
            		result.close();
                DataSourceUtils.doReleaseConnection(con, ds);
            } catch (SQLException e1) {
                // TODO Auto-generated catch block
                e1.printStackTrace();
            }
		}

	}
	
	private String notOrderby(String query){
		int i = query.toLowerCase().indexOf("order by");
		if(i<0) return query;
		return query.substring(0,i);
		//if(query.inde)
	}
    
    /**
	 * @功能 取单值
	 * @param param 参数
	 * @param sqlid sqlmap的key
	 * @return
	 * @throws PlatException 
	 */
	public <T> T GetScaleValue(Object param, SqlID sqlid) {
		if (sqlid == null)
			throw new PlatException(new PlatException(""));
		List result = dao.query(sqlid.getSqlID(), param);
		if (result == null || result.size() != 1)
			throw new PlatException(new PlatException(""));
		return (T) (result.get(0));
	}
    
	/**
	 * @功能 返回一条sql查询的分页结果
	 * @param <T>
	 * @param param 参数
	 * @param sqlid sqlmap的key
	 * @param orderBy 排序
	 * @param offset 起始记录数
	 * @param limit 每页记录数 0代表查询全部
	 * @return 查询结果
	 * @throws PlatException 
	 */
	public <T> List<T> querySpecial(Map param, SqlID sqlid,
			String orderBy, long offset, long limit) {

		ResultSet resultSet = null;
		PreparedStatement ps = null;
		java.sql.Connection con = null;
        DataSource ds = null;
		BufferedReader br = null;
		Reader r = null;
		try {
			if (sqlid == null)
				throw new PlatException("");
			/*取得sql客户端*/
			SqlMapClientImpl client = BeanContext.getSqlMapClientImpl();
			/*取得查询语句*/
			MappedStatement statement = client.getMappedStatement(sqlid
					.getSqlID());
			/*取得ibatis sql对象*/
			Sql sql = statement.getSql();
			/*取得ibatis 参数map对象*/
			ParameterMap parameterMap = null;
			RequestScope requestScope = new RequestScope();
			requestScope.setStatement(statement);
			if (sql instanceof StaticSql/*静态sql*/) {
				parameterMap = statement.getParameterMap();
			}
			if (sql instanceof DynamicSql /*动态sql*/) {

				parameterMap = sql.getParameterMap(requestScope, param);
			}
			if(sql instanceof SimpleDynamicSql)
				parameterMap = statement.getParameterMap();
			/*取得带参数的sql语句*/
			String s = sql.getSql(requestScope, param);
			/*取得sql连接对象*/
            ds=(DataSource)BeanContext.getBean("dataSource") ;
			con = DataSourceUtils.doGetConnection(ds);
			/*用来构造求分页查询对象的stringbuffer*/
			if (orderBy == null || orderBy.trim().length() == 0) {
				orderBy = "";
			} else {   
				orderBy = orderBy.trim();
                if(s.toLowerCase().indexOf("order by")<0){
                	orderBy = " ORDER BY " + orderBy;
                    s = s+orderBy;
                }
                else{
                    s=s.substring(0,s.toLowerCase().indexOf("order by"));
                    orderBy = " ORDER BY " + orderBy;
                    s = s+orderBy;
                }
			}
			//权限SQL and by wf （审计权限SQL）
			String authoSql = (String)param.get("authoSql");
			if(authoSql !=null && !"".equals(authoSql)){
				if(s.toLowerCase().indexOf("order by")>=0){
					String sqlStr = s.substring(0, s.toLowerCase().indexOf("order by"));//获取order by 前面的SQL语句
					String orderBySql = s.substring(s.toLowerCase().indexOf("order by"), s.length()).trim();//获取order by 后面的SQL语句
					if(orderBy.toLowerCase().indexOf(" order by ")>=0){
						s = sqlStr + " and " + authoSql + " "+orderBy;
					}else{
						s = sqlStr + " and " + authoSql + " "+orderBySql;
					}
				}else{
					//String sqlStr = s.substring(0, s.toLowerCase().indexOf("order by"));//获取order by 前面的SQL语句
					s = s + " and " + authoSql + " "+orderBy;
				}
			}
            StringBuffer query = new StringBuffer();
            query = new StringBuffer(getLimitString(s,offset,limit));
            
			/*java.sql 执行sql语句对象*/
			ps = generate(con, query, param, false, parameterMap,requestScope);
			/*执行查询*/
			resultSet = ps.executeQuery();

			/*转换成目标对象*/
			List result = new ArrayList();
			Class c = statement.getResultMap().getResultClass();
			ResultSetMetaData rsm = resultSet.getMetaData();
			int columnCount = rsm.getColumnCount();
			while (resultSet.next()) {
				Map objMap = new HashMap();
				for (int i = 0; i < columnCount; i++) {
					if (resultSet.getObject(i + 1) instanceof Clob) {
						Clob clob = resultSet.getClob(i + 1);
						r = clob.getCharacterStream();
						br = new BufferedReader(r);
						StringBuffer resultString = new StringBuffer();
						String line = null;
						while ((line = br.readLine()) != null) {
							resultString.append(line);
						}
						//getColumnName(i + 1)
						objMap.put(rsm.getColumnLabel(i + 1), String.valueOf(resultString));
					} else {	
						objMap.put(rsm.getColumnLabel(i + 1), resultSet.getObject(i + 1));
					}

				}
				if (Map.class.isAssignableFrom(c)) {
					result.add(objMap);
				} else {
					result.add(DomainUtil.MapToDomain(objMap, c));
				}
			}
            //List sList = TransactionSynchronizationManager.getSynchronizations();
            //System.out.println("Synchronizations.size() persistUtil List ===="+sList.size());
			return result;
		} catch (SQLException e) {
			throw new PlatException(e);
		} catch (ParseException e) {
			throw new PlatException(e);
		} catch (IOException e) {
			if (r != null) {
				try {
					r.close();
				} catch (IOException es) {
					throw new PlatException(es);
				}
			}
			if (br != null) {
				try {
					br.close();
				} catch (IOException es) {
					throw new PlatException(es);
				}

			}
			throw new PlatException(e);
		} catch (PlatException e) {
			throw new PlatException(e);
		} finally {
            try {
            	if(ps!=null){
            		ps.close();
            	}
            	if(resultSet!=null){
            		resultSet.close();
            	}
                DataSourceUtils.doReleaseConnection(con, ds);
            } catch (SQLException e1) {
                // TODO Auto-generated catch block
                e1.printStackTrace();
            }
            
			//JdbcUtil.close(resultSet, ps, con);
			if (r != null) {
				try {
					r.close();
				} catch (IOException e) {
					throw new PlatException(e);
				}
			}
			if (br != null) {
				try {
					br.close();
				} catch (IOException e) {
					throw new PlatException(e);
				}

			}
		}

	}
	
	public String getSql(Map param, SqlID sqlid){
		/*取得sql客户端*/
		SqlMapClientImpl client = BeanContext.getSqlMapClientImpl();
		/*取得查询语句*/
		MappedStatement statement = client.getMappedStatement(sqlid
				.getSqlID());
		/*取得ibatis sql对象*/
		Sql sql = statement.getSql();
		/*取得ibatis 参数map对象*/
//		ParameterMap parameterMap = null;
		RequestScope requestScope = new RequestScope();
		requestScope.setStatement(statement);
		
//		if (sql instanceof StaticSql/*静态sql*/) {
//			parameterMap = statement.getParameterMap();
//		}
//		if (sql instanceof DynamicSql/*动态sql*/) {
//
//			parameterMap = sql.getParameterMap(requestScope, param);
//		}
		/*取得带参数的sql语句*/
		String s = sql.getSql(requestScope, param);
		/*Iterator it=param.entrySet().iterator();
		while (it.hasNext()) {
			Map.Entry entry = (Map.Entry) it.next();
			s = s.replaceAll("[?]", entry.getValue().toString());
		}*/
		return s;
	}
	/**
	 * @功能 根据obj类型判断在sqlmap里对应的namespace
	 * @param obj
	 * @return
	 * @throws PlatException
	 */
	private String getNameSpace(Object obj)
			throws PlatException {

		return getNameSpace(obj.getClass());
	}

	private String getNameSpace(Class c)
			throws PlatException {
		return c.getName();

	}

	/**
	 * 
	 * @param connection
	 * @param query
	 * @param map
	 * @param scrollable
	 * @return
	 * @throws SQLException
	 * @throws ParseException
	 */
	private PreparedStatement generate(Connection connection,
			StringBuffer query, Map map, boolean scrollable,
			ParameterMap parameterMap, RequestScope requestScope)
			throws SQLException, ParseException {	

		PreparedStatement statement = null;
		if(logger.isDebugEnabled()){
			logger.debug(" para : " + map );
			logger.debug(" sql : " + query.toString());
		}

		if (scrollable) {
			statement = connection.prepareStatement(query.toString(), 1004,
					1007);
		} else {
			statement = connection.prepareStatement(query.toString());
		}
		if (parameterMap == null)
			return statement;
		parameterMap.setParameters(requestScope, statement, parameterMap
				.getParameterObjectValues(requestScope, map));
		return statement;
	}	

	/**
	 * mysql
	 * @param sql1
	 * @param offset
	 * @param numberPerPage
	 * @return
	 */
	private String getLimitString(String sql1, long offset,long numberPerPage) {
		if(offset==1){
			offset--;
		}
		StringBuffer pagingSelect = new StringBuffer(sql1).append(" limit " + offset + "," +(numberPerPage));
		return pagingSelect.toString();
	}
	
	/*
	private String getLimitString(String sql1, long offset,long numberPerPage) {

		int startOfSelect = sql1.toLowerCase().indexOf("select");

		StringBuffer pagingSelect = new StringBuffer( sql1.length()+100 )
					.append( sql1.substring(0, startOfSelect) ) //add the comment
					.append("select * from ( select ") //nest the main query in an outer select
					.append( getRowNumber(sql1) ); //add the rownnumber bit into the outer query select list

		if ( hasDistinct(sql1) ) {
			pagingSelect.append(" row_.* from ( ") //add another (inner) nested select
				.append( sql1.substring(startOfSelect) ) //add the main query
				.append(" ) as row_"); //close off the inner nested select
		}
		else {
			pagingSelect.append( sql1.substring( startOfSelect + 6 ) ); //add the main query
		}

		pagingSelect.append(" ) as temp_ where rownumber_ ");

		//add the restriction to the outer select
		if (offset>=0) {
			if(offset==1){
				offset = 0;
			}
			pagingSelect.append("between "+offset+"+1 and "+(offset+numberPerPage));
		}
		else {
			pagingSelect.append("<= "+Integer.MAX_VALUE);
		}

		return pagingSelect.toString();
	}
	*/
	/**Db2
	private String getRowNumber(String sql1) {
		StringBuffer rownumber = new StringBuffer(50)
			.append("rownumber() over(");

		int orderByIndex = sql1.toLowerCase().indexOf("order by");

		if ( orderByIndex>0 && !hasDistinct(sql1) ) {
			rownumber.append( sql1.substring(orderByIndex) ); 
		}

		rownumber.append(") as rownumber_,");

		return rownumber.toString();
	}
	
	private boolean hasDistinct(String sql1) {
		return sql1.toLowerCase().indexOf("select distinct")>=0;
	}
	*/
}
