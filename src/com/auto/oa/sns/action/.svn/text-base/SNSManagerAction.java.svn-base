package com.auto.oa.sns.action;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;

import com.auto.sns.post.domain.PostInfo;
import com.auto.sns.post.service.SnsPostServiceFactory;
import com.auto.sns.task.domain.TaskInfo;
import com.auto.sns.task.service.SnsTaskServiceFactory;
import com.system.common.BaseAction;
import com.system.common.Page;
import com.system.util.JsonUtil;

public class SNSManagerAction extends BaseAction {
	private Logger log = Logger.getLogger(this.getClass());

	private static final long serialVersionUID = -9117234086045732956L;
	
	/**
	 * 查询发帖信息
	 * @throws Exception
	 */
	public void queryPageListSNSPostInfo() throws Exception{
		try {
			Page page = getPage();

			String search = getRequest().getParameter("search");
			PostInfo postInfo = JsonUtil.jsonToBean(search, PostInfo.class);
			
			List<PostInfo> postInfos = new ArrayList<PostInfo>();
			postInfos = SnsPostServiceFactory.snsPostInfoService.queryPageListPostInfo(postInfo, page);
			
			pageListWriteOut(postInfos, page);
		} catch (Exception e) {
			log.debug(e);
			e.printStackTrace();
			throw e;
		}
	}
	
	/**
	 * 删除帖子
	 * @throws Exception
	 */
	public void deleteSNSPostInfo() throws Exception{
		try {
			String postGuid = getRequest().getParameter("postGuid");
			String[] postGuids = postGuid.split(",");
			for (String guid : postGuids) {
				SnsPostServiceFactory.snsPostInfoService.deletePostInfo(guid);
			}
		} catch (Exception e) {
			log.debug(e);
			e.printStackTrace();
			throw e;
		}
	}
	
	/**
	 * 查询任务信息
	 * @throws Exception
	 */
	public void queryPageListSNSTask() throws Exception{
		try {
			Page page = getPage();

			String search = getRequest().getParameter("search");
			TaskInfo taskInfo = JsonUtil.jsonToBean(search, TaskInfo.class);
			
			List<TaskInfo> taskInfos = new ArrayList<TaskInfo>();
			taskInfos = SnsTaskServiceFactory.snsTaskInfoService.queryPageListTaskInfo(taskInfo, page);
			
			pageListWriteOut(taskInfos, page);
		} catch (Exception e) {
			log.debug(e);
			e.printStackTrace();
			throw e;
		}
	}
	
	/**
	 * 删除任务
	 * @throws Exception
	 */
	public void deleteSNSTaskInfo() throws Exception{
		try {
			String taskGuid = getRequest().getParameter("taskGuid");
			String[] taskGuids = taskGuid.split(",");
			for (String guid : taskGuids) {
				SnsTaskServiceFactory.snsTaskInfoService.deleteTaskInfo(guid);
			}
		} catch (Exception e) {
			log.debug(e);
			e.printStackTrace();
			throw e;
		}
	}

}
