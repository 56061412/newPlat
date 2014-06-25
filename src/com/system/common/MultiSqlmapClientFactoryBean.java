package com.system.common;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.StringWriter;
import java.io.Writer;
import java.util.Properties;

import javax.sql.DataSource;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.springframework.beans.factory.FactoryBean;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.jdbc.datasource.TransactionAwareDataSourceProxy;
import org.springframework.jdbc.support.lob.LobHandler;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import com.ibatis.common.io.ReaderInputStream;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.ibatis.sqlmap.engine.builder.xml.SqlMapClasspathEntityResolver;
import com.ibatis.sqlmap.engine.impl.ExtendedSqlMapClient;
import com.ibatis.sqlmap.engine.transaction.TransactionConfig;
import com.ibatis.sqlmap.engine.transaction.TransactionManager;

/**
 * 支持多个sqlmap-config.xml文件
 * @author Tim
 *
 */
public class MultiSqlmapClientFactoryBean implements FactoryBean, InitializingBean {
	
	private static ThreadLocal configTimeLobHandlerHolder = new ThreadLocal();

	private String configLocation;

	private Properties sqlMapClientProperties;

	private DataSource dataSource;

	private boolean useTransactionAwareDataSource;

	private Class transactionConfigClass;

	private Properties transactionConfigProperties;

	private LobHandler lobHandler;

	private SqlMapClient sqlMapClient;
	
	public static LobHandler getConfigTimeLobHandler() {
		return (LobHandler) configTimeLobHandlerHolder.get();
	}

	public MultiSqlmapClientFactoryBean() {
		useTransactionAwareDataSource = true;
		transactionConfigClass = com.ibatis.sqlmap.engine.transaction.external.ExternalTransactionConfig.class;
		transactionConfigProperties = new Properties();
		transactionConfigProperties.setProperty("SetAutoCommitAllowed", "false");
	}

	public void setConfigLocation(String configLocation) {
		this.configLocation = configLocation;
	}

	public void setSqlMapClientProperties(Properties sqlMapClientProperties) {
		this.sqlMapClientProperties = sqlMapClientProperties;
	}

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	public void setUseTransactionAwareDataSource(boolean useTransactionAwareDataSource) {
		this.useTransactionAwareDataSource = useTransactionAwareDataSource;
	}

	public void setTransactionConfigClass(Class transactionConfigClass) {
		if (transactionConfigClass == null
				|| !(com.ibatis.sqlmap.engine.transaction.TransactionConfig.class)
						.isAssignableFrom(transactionConfigClass)) {
			throw new IllegalArgumentException(
					"Invalid transactionConfigClass: does not implement com.ibatis.sqlmap.engine.transaction.TransactionConfig");
		} else {
			this.transactionConfigClass = transactionConfigClass;
			return;
		}
	}

	public void setTransactionConfigProperties(Properties transactionConfigProperties) {
		this.transactionConfigProperties = transactionConfigProperties;
	}

	public void setLobHandler(LobHandler lobHandler) {
		this.lobHandler = lobHandler;
	}
	
	/**
	 * 多个sqlmap-config.xml
	 * 如果有多个sqlmap-config.xml文件,则其中有一个必定是sqlmap-config.xml.
	 * @param rss
	 * @return InputStream
	 * @throws Exception 
	 */
	protected InputStream initMutilSqlmap(Resource[] rss) throws Exception {
		InputStream is = null;
		for (int i = 0; i < rss.length; i++) {
			String filename = rss[i].getFilename();
			if (filename.equals("SqlMapConfig.xml")) {
				is = rss[i].getInputStream();
			}
		}
		if (is == null)
			throw new RuntimeException("file sqlmap-config.xml not exists!");
		Document rootDoc = getDoc(new InputStreamReader(is));
		Element root = rootDoc.getDocumentElement();

		for (int i = 0; i < rss.length; i++) {
			String filename = rss[i].getFilename();
			if (filename.equals("SqlMapConfig.xml")) {
				continue;
			}
			Document doc = getDoc(new InputStreamReader(rss[i].getInputStream()));
			NodeList nodeList = doc.getElementsByTagName("sqlMap");
			for (int j = 0; j < nodeList.getLength(); j++) {
				Node node = nodeList.item(j);
				Element s = rootDoc.createElement("sqlMap");
				s.setAttribute("resource", node.getAttributes().getNamedItem("resource").getNodeValue());
				root.appendChild(s);
			}
		}
		// OutputStream
		TransformerFactory tfactory = TransformerFactory.newInstance();
		Transformer transformer = tfactory.newTransformer();
		if(rootDoc.getDoctype()!=null){
			transformer.setOutputProperty(javax.xml.transform.OutputKeys.DOCTYPE_PUBLIC,rootDoc.getDoctype().getPublicId());
			transformer.setOutputProperty(javax.xml.transform.OutputKeys.DOCTYPE_SYSTEM,rootDoc.getDoctype().getSystemId());
		}
		
		DOMSource source = new DOMSource(rootDoc);
		StringWriter wr = new StringWriter();
		StreamResult sr = new StreamResult(wr);
		transformer.transform(source, sr);
		Writer out = sr.getWriter();
		String outs = out.toString();
		InputStream sbs = new ByteArrayInputStream(outs.getBytes());
		return sbs;
	}

	private Document getDoc(Reader reader) {
		try {
			// Configuration
			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();

			dbf.setValidating(false);
			dbf.setIgnoringComments(true);
			dbf.setIgnoringElementContentWhitespace(true);
			DocumentBuilder db = dbf.newDocumentBuilder();
			db.setEntityResolver(new SqlMapClasspathEntityResolver());
			Document doc = db.parse(new ReaderInputStream(reader));
			return doc;
		} catch (Exception e) {
			throw new RuntimeException("XML Parser Error.  Cause: " + e);
		}
	}

	public void afterPropertiesSet() throws Exception {
		if (configLocation == null)
			throw new IllegalArgumentException("configLocation is required");
		if (lobHandler != null)
			configTimeLobHandlerHolder.set(lobHandler);
		try {
			PathMatchingResourcePatternResolver resolver = new PathMatchingResourcePatternResolver();
			Resource resouces[] = resolver.getResources(configLocation);
			if (resouces == null || resouces.length == 0)
				throw new Exception("configLocation Error!");
			java.io.InputStream is = null;
			if (resouces.length == 1)
				is = resouces[0].getInputStream();
			else {
				is = initMutilSqlmap(resouces);
			}
			sqlMapClient = sqlMapClientProperties == null ? SqlMapClientBuilder
					.buildSqlMapClient(new InputStreamReader(is)) : SqlMapClientBuilder.buildSqlMapClient(
					new InputStreamReader(is), sqlMapClientProperties);
			if (dataSource != null) {
				TransactionConfig transactionConfig = (TransactionConfig) transactionConfigClass
						.newInstance();
				DataSource dataSourceToUse = dataSource;
				if (useTransactionAwareDataSource && !(dataSource instanceof TransactionAwareDataSourceProxy))
					dataSourceToUse = new TransactionAwareDataSourceProxy(dataSource);
				transactionConfig.setDataSource(dataSourceToUse);
				transactionConfig.initialize(transactionConfigProperties);
				applyTransactionConfig(sqlMapClient, transactionConfig);
			}
		} finally {
			if (lobHandler != null)
				configTimeLobHandlerHolder.set(null);
		}
	}

	protected void applyTransactionConfig(SqlMapClient sqlMapClient, TransactionConfig transactionConfig) {
		if (!(this.sqlMapClient instanceof ExtendedSqlMapClient)) {
			throw new IllegalArgumentException(
					"Cannot set TransactionConfig with DataSource for SqlMapClient if not of type ExtendedSqlMapClient: "
							+ this.sqlMapClient);
		} else {
			ExtendedSqlMapClient extendedClient = (ExtendedSqlMapClient) this.sqlMapClient;
			transactionConfig.setMaximumConcurrentTransactions(extendedClient.getDelegate()
					.getMaxTransactions());
			extendedClient.getDelegate().setTxManager(new TransactionManager(transactionConfig));
			return;
		}
	}

	public Object getObject() {
		return sqlMapClient;
	}

	public Class getObjectType() {
		return sqlMapClient.getClass();
	}

	public boolean isSingleton() {
		return true;
	}

}
