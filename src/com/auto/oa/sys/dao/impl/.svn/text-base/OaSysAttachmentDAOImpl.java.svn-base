package com.auto.oa.sys.dao.impl;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.oa.sys.domain.OaSysAttachment;
import com.auto.oa.sys.dao.IOaSysAttachmentDAO;
import com.system.util.AutoDaoPersistUtil;
import com.auto.oa.sys.sql.sqlid.OaSysAttachmentSqlID;
/**
 * : t_auto_oa_sys_attachment
 * 
 * 
 * @author Gen
 */
public class OaSysAttachmentDAOImpl extends AutoDaoPersistUtil implements IOaSysAttachmentDAO{

	public OaSysAttachment insertOaSysAttachment(OaSysAttachment bean){
		return insert(bean, OaSysAttachmentSqlID.INSERT);
	}

	public boolean deleteOaSysAttachment(String fileGuid){
		delete(fileGuid, OaSysAttachmentSqlID.DELETE);
		return true;
	}	

	public OaSysAttachment updateOaSysAttachment(OaSysAttachment bean){
		return update(bean, OaSysAttachmentSqlID.UPDATE);
	}	

	public OaSysAttachment loadOaSysAttachment(String fileGuid){
		return query(new OaSysAttachment().getClass(), fileGuid);
	}

	public List<OaSysAttachment> queryList(Map<String,Object> param,Page page){
		page.setCount(countSpecial(param, OaSysAttachmentSqlID.QUERY));
		return querySpecial(param, OaSysAttachmentSqlID.QUERY, page.getFullOrderBy(), page.getOffset(), page.getLimit());
	}

	public List<OaSysAttachment> queryList(Map<String, Object> param) {
		return query(param, OaSysAttachmentSqlID.QUERY);
	}

}
