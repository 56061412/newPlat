package com.auto.sns.post.service;

import com.auto.sns.post.domain.PostContent;

public interface SnsPostContentService {
	/**
	 * 保存帖子内容
	 * @param snsCoreActivity
	 * @return
	 * @throws Exception
	 */
	boolean saveOrUpdatePostContent(PostContent postContent) throws Exception;

}
