package com.auto.sns.post.service;

import java.util.List;
import java.util.Map;

import com.auto.sns.post.domain.PostHuifu;

public interface SnsPostHuifuService {
	/**
	 * 保存回复信息
	 * @param snsCoreActivity
	 * @return
	 * @throws Exception
	 */
	boolean saveOrUpdatePostHuifu(PostHuifu postHuifu) throws Exception;
	
	/**
	 * 删除回复信息
	 * @param snsCoreActivity
	 * @return
	 * @throws Exception
	 */
	boolean deletePostHuifu(String huifuGuid) throws Exception;

	/**
	 * 回复信息
	 * @param param
	 * @return
	 * @throws Exception
	 */
	List<Map> listPostHuifu(String postGuid) throws Exception;
}
