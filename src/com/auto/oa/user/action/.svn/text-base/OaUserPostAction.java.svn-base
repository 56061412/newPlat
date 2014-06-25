package com.auto.oa.user.action;

import java.util.List;

import javax.annotation.Resource;

import com.auto.oa.user.domain.OaUserPost;
import com.auto.oa.user.service.IOaUserPostService;
import com.system.common.BaseAction;
import com.system.common.Page;
import com.system.util.JsonUtil;

public class OaUserPostAction extends BaseAction {

	private static final long serialVersionUID = 1196778789751673257L;
	
	@Resource(name="oaUserPostService")
	private IOaUserPostService oaUserPostService;
	
	/**
	 * 查询对象列表 oaUserPost
	 */
	public void queryPageListOaUserPost() throws Exception{
		Page page = getPage();

		String search = getRequest().getParameter("search");
		
		OaUserPost oaUserPost = (OaUserPost) JsonUtil.jsonToBean(search, OaUserPost.class);

		List<OaUserPost> list = oaUserPostService.queryPageListOaUserPost(oaUserPost, page);
		pageListWriteOut(list, page);
	}
	
	/**
	 * 保存对象(新增和修改) oaUserPost
	 * @throws Exception
	 */
	public void saveOrUpdateOaUserPost() throws Exception{
		String data = getRequest().getParameter("data");
		
		List<OaUserPost> list = JsonUtil.jsonToList(data, OaUserPost.class);
		for (OaUserPost oaUserPost : list) {
			oaUserPost = getDefaultBean(oaUserPost, getRequest());
			oaUserPostService.saveOrUpdateOaUserPost(oaUserPost);
		}
	}
	
	/**
	 * 删除对象 oaUserPost
	 * @throws Exception
	 */
	public void deleteOaUserPost() throws Exception{
		String aupoGuid = getRequest().getParameter("aupoGuid");
		String[] aupoGuids = aupoGuid.split(",");
		for (String guid : aupoGuids) {
			oaUserPostService.deleteOaUserPost(guid);
		}
	}
	
	/**
	 * 查询对象详细信息
	 * @throws Exception
	 */
	public void getOaUserPost() throws Exception{
		String aupoGuid = getRequest().getParameter("aupoGuid");
		OaUserPost oaUserPost = oaUserPostService.getOaUserPost(aupoGuid);
		detailResultWriteOut(oaUserPost);
	}
}
