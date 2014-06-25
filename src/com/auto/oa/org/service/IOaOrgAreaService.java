package com.auto.oa.org.service;

import java.util.List;

import com.auto.oa.org.domain.OaOrgArea;
import com.system.common.Page;

/**
 * 区域信息 逻辑处理
 * 接口定义
 * @author acute
 *
 */
public interface IOaOrgAreaService {
	
	/**
	 * 查询区域对象
	 * 树结构
	 * @param bean	区域对象
	 * @param page	分页对象
	 * @return
	 * @throws Exception
	 */
	List<OaOrgArea> queryTreeOaOrgArea(OaOrgArea bean) throws Exception;
	
	/**
	 * 查询区域对象
	 * 列表结构
	 * @param bean	区域对象
	 * @param page	分页对象
	 * @return
	 * @throws Exception
	 */
	List<OaOrgArea> queryPageListOaOrgArea(OaOrgArea bean, Page page) throws Exception;
	
	List<OaOrgArea> queryListOaOrgArea(OaOrgArea bean) throws Exception;
	
	/**
	 * 保存区域对象
	 * @param bean	区域对象
	 * @return
	 * @throws Exception
	 */
	boolean saveOrUpdateOaOrgArea(OaOrgArea bean) throws Exception;
	
	/**
	 * 删除区域对象
	 * @param guid	区域对象主键
	 * @return
	 * @throws Exception
	 */
	boolean deleteOaOrgArea(String guid) throws Exception;
	
	/**
	 * 获取区域对象详细
	 * @param guid	区域对象主键
	 * @return
	 * @throws Exception
	 */
	OaOrgArea getOaOrgArea(String guid) throws Exception;

}
