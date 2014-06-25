package com.auto.sns.rest;

import java.net.URLDecoder;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.apache.log4j.Logger;

import com.auto.oa.sys.domain.OaSysAttachment;
import com.auto.sns.knowledge.domain.KnowledgeInfo;
import com.auto.sns.knowledge.service.SnsKnowledgeServiceFactory;
import com.auto.sns.post.common.EnumPostPage;
import com.auto.sns.post.common.PostUtil;
import com.auto.sns.post.domain.PostContent;
import com.auto.sns.post.domain.PostHuifu;
import com.auto.sns.post.domain.PostInfo;
import com.auto.sns.post.domain.SnsPostZanLog;
import com.auto.sns.post.domain.proxy.PostInfoProxy;
import com.auto.sns.post.service.SnsPostServiceFactory;
import com.auto.sns.task.domain.TaskInfo;
import com.auto.sns.task.domain.TaskPerson;
import com.auto.sns.task.domain.proxy.TaskInfoProxy;
import com.auto.sns.task.service.SnsTaskServiceFactory;
import com.auto.tools.AutoUtils;
import com.auto.tools.WSUtil;
import com.system.util.BeanUtil;
import com.system.util.DateUtil;
import com.system.util.GuidUtil;
import com.system.util.JsonUtil;

@Path("/snsRest")
public class SnsRest {
	private static Logger logger = Logger.getLogger(SnsRest.class);
	@GET
	@Path("/getPostInfo/{userCode}/{model}")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 帖子列表
	 * @param userCode
	 * @param model
	 * @return
	 */
	public String getPostInfo(@PathParam("userCode") String userCode,@PathParam("model") String model){
		String rtnStr = WSUtil.getWSResultBeanFailure();
		try {
			Map<String,Object> param = new HashMap<String, Object>();
			if(model!=null && model.equals(EnumPostPage.myPage)){
				param.put("postCreater", userCode);
			}else if(model!=null && model.equals(EnumPostPage.comPage)){
				param.put("extra1", PostUtil.getUserDept(userCode));
			}else if(model!=null && model.equals(EnumPostPage.friendPage)){
				param.put("postCreaterS", PostUtil.getUserFriends(userCode));
			}
			param.put("offset", "1");
			param.put("limit", "20");
			
			List list = SnsPostServiceFactory.snsPostInfoService.listPost(param);
			for (Object object : list) {
				Map resultMap = (HashMap)object;
//				String userImg= (String)resultMap.get("userImg");
//				String imgPath = AttachmentUtil.getUploadImgPath();
//				String imgPath = AttachmentUtil.getReadImgPath();
//				userImg = imgPath + userImg;
//				resultMap.put("userImg", userImg);
				
				//帖子内容
				String postContent = (String)resultMap.get("tieContent");
				System.out.println("postContent............................................"+postContent);
				
				String imageContent = "";
				String wordContent = "";
				if(BeanUtil.isNotBlank(postContent)){
					imageContent = getImgContent(postContent);
					wordContent = getWordContent(postContent);
				}
				if(BeanUtil.isBlank(wordContent) && BeanUtil.isBlank(imageContent)){
					wordContent = postContent;
				}
				System.out.println("wordContent..............................."+wordContent);
				System.out.println("imageContent..............................."+imageContent);
				//文字内容
				resultMap.put("wordContent", wordContent);
				//图片内容
				resultMap.put("imageContent", imageContent);
				
				//帖子主键
				String postGuid = (String)resultMap.get("postGuid");
				//点赞次数
				int postZanNum = (Integer)resultMap.get("postZanNum");
				//帖子是否被点赞的状态
				String postInfoZanStatus = PostInfoProxy.getPostInfoZanStatus(String.valueOf(postZanNum));
				resultMap.put("postInfoZanStatus", postInfoZanStatus);
				//当前人员对帖子是否点赞的状态
				String postInfoUserZanStatus = PostInfoProxy.getPostInfoUserZanStatus(postGuid, userCode);
				resultMap.put("postInfoUserZanStatus", postInfoUserZanStatus);
				//帖子的点赞列表
				List<SnsPostZanLog> snsPostZanLogs = PostInfoProxy.getSnsPostZanLogs(postGuid);
				resultMap.put("snsPostZanLogs", snsPostZanLogs);
			}

			rtnStr = WSUtil.getWSResultBeanSuccess(list);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
		}
		
		return rtnStr;
	}
	
	/**
	 * 得图片内容
	 * @param postContent
	 * @return
	 */
	private static String getImgContent(String postContent){
		String regex = "filePath=";
		String replacement = "http://www.xcrauto.com:8080/allwinPic/img";				
		String[] imgS = postContent.split("<img");
		String rtn = "";
		for (int i = 1; i < imgS.length; i++) {
			String newOneSrc = "";
			String oneImgSrc = imgS[i].split("src=\"")[1].split("\"/>")[0];
			if(oneImgSrc.contains(regex)){
				String[] rePlace = oneImgSrc.split(regex);
				if(rePlace[1].indexOf("\"") > -1){
					rePlace[1] = rePlace[1].substring(0, rePlace[1].indexOf("\""));
				}
				newOneSrc = replacement + rePlace[1];
			}else if(postContent.contains(replacement)){
				String imgName = postContent.split(replacement)[1];
				if(imgName.indexOf("\"") > -1){
					imgName = imgName.substring(0, imgName.indexOf("\""));
				}
				newOneSrc = replacement + imgName;
			}else{
				newOneSrc = replacement;
			}
			rtn += newOneSrc+";";
		}
		return rtn;
	}
	/**
	 * 得文字内容
	 * @param postContent
	 * @return
	 */
	private static String getWordContent(String postContent){
		String[] imgS = postContent.split("<img");
		String rtn = imgS[0];
		if(imgS.length>=1){
			for (int i = 1; i < imgS.length; i++) {
				String[] imgSContent = imgS[i].split("\"/>");
				int imgSContentLength = imgSContent.length;
				System.out.println("imgSContentLength..............................."+imgSContentLength);
				if(imgSContentLength > 1){
					String oneImgSrc = imgSContent[1];
					rtn += oneImgSrc;
				}
			}
		}
		
		if(rtn.contains("<p>")){
			rtn = rtn.replaceAll("<p>", "");
			rtn = rtn.replaceAll("</p>", "");
		}
		if(rtn.contains("<br/>")){
			rtn = rtn.replaceAll("<br/>", "");
		}
		if(rtn.contains("<null>")){
			rtn = rtn.replaceAll("<null>", "");
		}
		
		return rtn;
	}
	
	@POST
	@Path("/publishPostInfo/{userCode}/{postType}/{tieContent}")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 发帖
	 * @param userCode
	 * @param postType
	 * @param tieContent
	 * @return
	 */
	public String publishPostInfo(@PathParam("userCode")String userCode,@PathParam("postType")String postType, @PathParam("tieContent")String tieContent){
		String rtnStr = WSUtil.getWSResultBeanFailure();
		try {
			PostInfo postInfo = new PostInfo();
			String postGuid = GuidUtil.newGuid();
			postInfo.setPostGuid(postGuid);
			postInfo.setPostType(postType);
			postInfo.setPostCreater(userCode);
			postInfo.setCreateUser(userCode);
			postInfo.setModifyUser(userCode);
			
			PostContent postContent = new PostContent();
			postContent.setTieContent(tieContent);
			postContent.setSourceGuid(postGuid);
			postContent.setCreateUser(userCode);
			postContent.setModifyUser(userCode);
			
			
			
			SnsPostServiceFactory.snsPostInfoService.savePostInfoAndPostContent(postInfo, postContent);
			
			rtnStr = WSUtil.getWSResultBeanSuccess(postInfo);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
		}
				
		return rtnStr;
	}
	
	@POST
	@Path("/publishPostInfoNew/{userCode}/{postType}/{wordContent}")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 发微博
	 * @param userCode
	 * @param postType
	 * @param wordContent
	 * @param jsonFile 图片附件信息 json格式<OaSysAttachment>
	 * @return
	 */
	public String publishPostInfoNew(@PathParam("userCode")String userCode,@PathParam("postType")String postType, @PathParam("wordContent")String wordContent, String jsonFile){
		String rtnStr = WSUtil.getWSResultBeanFailure();
		try {
			PostInfo postInfo = new PostInfo();
			String postGuid = GuidUtil.newGuid();
			postInfo.setPostGuid(postGuid);
			postInfo.setPostType(postType);
			postInfo.setPostCreater(userCode);
			postInfo.setCreateUser(userCode);
			postInfo.setModifyUser(userCode);
			
			String tieContent = wordContent;
			if(BeanUtil.isNotBlank(tieContent)){
				tieContent = tieContent.replaceAll("<null>", "");
			}
			String imgContent = "";
			//图片附件信息
			String jsonFileNew = URLDecoder.decode(jsonFile, "UTF-8");
			List<OaSysAttachment> oaSysAttachments = JsonUtil.jsonToList(jsonFileNew, OaSysAttachment.class);
			if(!oaSysAttachments.isEmpty()){
				for (OaSysAttachment oaSysAttachment : oaSysAttachments) {
					imgContent += getPostImg(oaSysAttachment) + "</br>";
				}
			}
			
			tieContent += imgContent;
			
			PostContent postContent = new PostContent();
			postContent.setTieContent(tieContent);
			postContent.setSourceGuid(postGuid);
			postContent.setCreateUser(userCode);
			postContent.setModifyUser(userCode);
			
			SnsPostServiceFactory.snsPostInfoService.savePostInfoAndPostContent(postInfo, postContent);
			
			rtnStr = WSUtil.getWSResultBeanSuccess(postInfo);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
		}
				
		return rtnStr;
	}
	
	@POST
	@Path("/publishTopic/{userCode}/{wordContent}")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 发话题
	 * @param userCode
	 * @param wordContent
	 * @param jsonFile 图片附件信息 json格式<OaSysAttachment>
	 * @return
	 */
	public String publishTopic(@PathParam("userCode")String userCode, @PathParam("wordContent")String wordContent, String jsonFile){
		String rtnStr = WSUtil.getWSResultBeanFailure();
		try {
			String postType = "topic";
			PostInfo postInfo = new PostInfo();
			String postGuid = GuidUtil.newGuid();
			postInfo.setPostGuid(postGuid);
			postInfo.setPostType(postType);
			postInfo.setPostCreater(userCode);
			postInfo.setCreateUser(userCode);
			postInfo.setModifyUser(userCode);
			
			String tieContent = wordContent;
			if(BeanUtil.isNotBlank(tieContent)){
				tieContent = tieContent.replaceAll("<null>", "");
			}
			String imgContent = "";
			//图片附件信息
			String jsonFileNew = URLDecoder.decode(jsonFile, "UTF-8");
			List<OaSysAttachment> oaSysAttachments = JsonUtil.jsonToList(jsonFileNew, OaSysAttachment.class);
			if(!oaSysAttachments.isEmpty()){
				for (OaSysAttachment oaSysAttachment : oaSysAttachments) {
					imgContent += getPostImg(oaSysAttachment) + "</br>";
				}
			}
			
			tieContent += imgContent;
			
			PostContent postContent = new PostContent();
			postContent.setTieContent(tieContent);
			postContent.setSourceGuid(postGuid);
			postContent.setCreateUser(userCode);
			postContent.setModifyUser(userCode);
			
			SnsPostServiceFactory.snsPostInfoService.savePostInfoAndPostContent(postInfo, postContent);
			
			rtnStr = WSUtil.getWSResultBeanSuccess(postInfo);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
		}
				
		return rtnStr;
	}
	
	@GET
	@Path("/getTopicList/{userCode}")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 话题列表
	 * @param userCode
	 * @param model
	 * @return
	 */
	public String getTopicList(@PathParam("userCode") String userCode){
		String rtnStr = WSUtil.getWSResultBeanFailure();
		try {
			Map<String,Object> param = new HashMap<String, Object>();
			param.put("offset", "1");
			param.put("limit", "20");
			param.put("postType", "topic");//只查询话题
			
			List list = SnsPostServiceFactory.snsPostInfoService.listPost(param);
			for (Object object : list) {
				Map resultMap = (HashMap)object;
				
				//帖子内容
				String postContent = (String)resultMap.get("tieContent");
				
				String imageContent = "";
				String wordContent = "";
				if(BeanUtil.isNotBlank(postContent)){
					imageContent = getImgContent(postContent);
					wordContent = getWordContent(postContent);
				}
				if(BeanUtil.isBlank(wordContent) && BeanUtil.isBlank(imageContent)){
					wordContent = postContent;
				}
				//文字内容
				resultMap.put("wordContent", wordContent);
				//图片内容
				resultMap.put("imageContent", imageContent);
				
				//帖子主键
				String postGuid = (String)resultMap.get("postGuid");
				//点赞次数
				int postZanNum = (Integer)resultMap.get("postZanNum");
				//帖子是否被点赞的状态
				String postInfoZanStatus = PostInfoProxy.getPostInfoZanStatus(String.valueOf(postZanNum));
				resultMap.put("postInfoZanStatus", postInfoZanStatus);
				//当前人员对帖子是否点赞的状态
				String postInfoUserZanStatus = PostInfoProxy.getPostInfoUserZanStatus(postGuid, userCode);
				resultMap.put("postInfoUserZanStatus", postInfoUserZanStatus);
				//帖子的点赞列表
				List<SnsPostZanLog> snsPostZanLogs = PostInfoProxy.getSnsPostZanLogs(postGuid);
				resultMap.put("snsPostZanLogs", snsPostZanLogs);
			}

			rtnStr = WSUtil.getWSResultBeanSuccess(list);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
		}
		
		return rtnStr;
	}
	
	/**
	 * 获取封装的微博保存的图片数据格式
	 * @param oaSysAttachment
	 * @return
	 */
	private String getPostImg(OaSysAttachment oaSysAttachment){
		String imgPath = oaSysAttachment.getFileGuid() + "." + oaSysAttachment.getFileExt();
		String imgFomat = "<p><img src=\"http://www.xcrauto.com:8080/allwinPic/img/"+imgPath+"\" /></p>";
		
		return imgFomat;
	}
	
	@POST
	@Path("/zhuanPostInfo/{userCode}/{postType}/{oldPostGuid}/{tieContent}")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 转发
	 * @param userCode
	 * @param postType
	 * @param oldPostGuid
	 * @param tieContent
	 * @return
	 */
	public String zhuanPostInfo(@PathParam("userCode")String userCode,@PathParam("postType")String postType,
			@PathParam("oldPostGuid")String oldPostGuid,@PathParam("tieContent")String tieContent){
		String rtnStr = WSUtil.getWSResultBeanFailure();
		try {
			PostInfo postInfo = new PostInfo();
			String postGuid = GuidUtil.newGuid();
			postInfo.setPostGuid(postGuid);
			postInfo.setPostType(postType);
			postInfo.setPostCreater(userCode);
			postInfo.setCreateUser(userCode);
			postInfo.setModifyUser(userCode);
			postInfo.setExtra3(oldPostGuid);
			
			PostContent postContent = new PostContent();
			postContent.setSourceGuid(postGuid);
			postContent.setCreateUser(userCode);
			postContent.setModifyUser(userCode);
			
			SnsPostServiceFactory.snsPostInfoService.savePostInfoAndPostContentForZhuanfa(postInfo, postContent);

			rtnStr = WSUtil.getWSResultBeanSuccess(postInfo);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
		}
		
		return rtnStr;
	}
	
	@POST
	@Path("/huifu/{userCode}/{postGuid}/{tieContent}")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 回复（评论）
	 * @param userCode
	 * @param postGuid
	 * @param tieContent
	 * @return
	 */
	public String huifu(@PathParam("userCode")String userCode,@PathParam("postGuid")String postGuid, @PathParam("tieContent")String tieContent){
		String rtnStr = WSUtil.getWSResultBeanFailure();

		try {
			PostHuifu postHuifu = new PostHuifu();
			String huifuGuid = GuidUtil.newGuid();
			postHuifu.setHuifuGuid(huifuGuid);
			postHuifu.setPostGuid(postGuid);
			postHuifu.setPostCreater(userCode);
			postHuifu.setCreateUser(userCode);
			postHuifu.setModifyUser(userCode);

			//保存回复内容
			PostContent postContent = new PostContent();
			postContent.setSourceGuid(huifuGuid);
			postContent.setCreateUser(userCode);
			postContent.setModifyUser(userCode);
			postContent.setTieContent(tieContent);
			
			SnsPostServiceFactory.snsPostInfoService.savePostHuiAndPostContentForHuifu(postHuifu, postContent);
			
			rtnStr = WSUtil.getWSResultBeanSuccess(postHuifu);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
		}
		
		return rtnStr;
	}
	
	@POST
	@Path("/dianZan/{userCode}/{postGuid}")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 点赞
	 * @param userCode
	 * @param postGuid
	 * @return
	 */
	public String dianZan(@PathParam("userCode")String userCode,@PathParam("postGuid")String postGuid){
		String rtnStr = WSUtil.getWSResultBeanFailure();
		
		try {
			//检查是否已点过赞
			SnsPostZanLog alreadySnsPostZanLog = SnsPostServiceFactory.snsPostInfoService.getSnsPostZanLog(userCode, postGuid);
			//没有获得点赞主键 则进行点赞操作
			if(BeanUtil.isBlank(alreadySnsPostZanLog.getZanGuid())){
				//记录点赞日志
				SnsPostZanLog snsPostZanLog = new SnsPostZanLog();
				snsPostZanLog.setZanPostGuid(postGuid);
				snsPostZanLog.setZanUserCode(userCode);
				String userName = AutoUtils.getUserName(userCode);
				snsPostZanLog.setZanUserName(userName);
				
				SnsPostServiceFactory.snsPostInfoService.saveDianZan(snsPostZanLog);
				
				rtnStr = WSUtil.getWSResultBeanSuccess(alreadySnsPostZanLog);
			}
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
		}
		
		return rtnStr;
	}
	
	@POST
	@Path("/cancelDianZan/{userCode}/{postGuid}")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 取消点赞
	 * @param userCode
	 * @param postGuid
	 * @return
	 */
	public String cancelDianZan(@PathParam("userCode")String userCode,@PathParam("postGuid")String postGuid){
		String rtnStr = WSUtil.getWSResultBeanFailure();
		
		try {
			//检查是否已点过赞
			SnsPostZanLog alreadySnsPostZanLog = SnsPostServiceFactory.snsPostInfoService.getSnsPostZanLog(userCode, postGuid);
			//没有获得点赞主键 则进行点赞操作
			if(BeanUtil.isNotBlank(alreadySnsPostZanLog.getZanGuid())){
				//删除点赞日志
				SnsPostServiceFactory.snsPostInfoService.deleteSnsPostZanLogByPostGuidAndUserCode(postGuid, userCode);
				
				//更新帖子点赞数 - 1
				SnsPostServiceFactory.snsPostInfoService.updatePostInfoZanNumMinus(postGuid);
				
				rtnStr = WSUtil.getWSResultBeanSuccess(null);
			}
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
		}
		
		return rtnStr;
	}
	
	@GET
	@Path("/getPostHuifu/{postGuid}")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 查看评乱
	 * @param postGuid
	 * @return
	 */
	public String getPostHuifu(@PathParam("postGuid") String postGuid){
		String rtnStr = WSUtil.getWSResultBeanFailure();
		try {
			List list = SnsPostServiceFactory.snsPostHuifuService.listPostHuifu(postGuid);

			rtnStr = WSUtil.getWSResultBeanSuccess(list);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
		}
		
		return rtnStr;
	}
	
	@GET
	@Path("/getTask/{userCode}")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 任务列表(发起的任务)
	 * 
	 * @param userCode
	 * @return
	 */
	public String getTask(@PathParam("userCode") String userCode){
		String rtnStr = WSUtil.getWSResultBeanFailure();
		try {
			List list = SnsTaskServiceFactory.snsTaskInfoService.listTaskInfo(userCode);

			rtnStr = WSUtil.getWSResultBeanSuccess(list);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
		}
		
		return rtnStr;
	}
	
	@GET
	@Path("/getTaskByPerson/{userCode}")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 任务列表（接收的任务）
	 * @param userCode
	 * @return
	 */
	public String getTaskByPerson(@PathParam("userCode") String userCode){
		String rtnStr = WSUtil.getWSResultBeanFailure();
		try {
			List list = SnsTaskServiceFactory.snsTaskInfoService.listTaskInfoByPerson(userCode);
			for (Object object : list) {
				Map data = (HashMap)object;
				Date createTime = (Date)data.get("createTime");
//				data.put("createTime", DateUtil.toDateString(createTime, DateUtil.DEFAULT_DATETIME_PATTERN));
//				Date publishTime = (Date)data.get("publishTime");
				data.put("publishTime", DateUtil.toDateString(createTime, DateUtil.DEFAULT_DATETIME_PATTERN));
			}
			
			rtnStr = WSUtil.getWSResultBeanSuccess(list);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
		}
		
		return rtnStr;
	}
	
	@GET
	@Path("/getTaskDetail/{taskGuid}")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 任务详情
	 * @param taskGuid
	 * @return
	 */
	public String getTaskDetail(@PathParam("taskGuid") String taskGuid){
		String rtnStr = WSUtil.getWSResultBeanFailure();
		try {
			TaskInfo taskInfo = SnsTaskServiceFactory.snsTaskInfoService.queryTaskInfo(taskGuid);
			
			taskInfo = TaskInfoProxy.getTaskInfo(taskInfo);
			
			rtnStr = WSUtil.getWSResultBeanSuccess(taskInfo);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
		}
		
		return rtnStr;
	}
	
	@GET
	@Path("/getTaskPersonDetail/{rowGuid}")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 任务反馈详情
	 * @param rowGuid
	 * @return
	 */
	public String getTaskPersonDetail(@PathParam("rowGuid") String rowGuid){
		String rtnStr = WSUtil.getWSResultBeanFailure();
		try {
			TaskPerson taskPerson = SnsTaskServiceFactory.snsTaskPersonService.queryTaskPerson(rowGuid);

			rtnStr = WSUtil.getWSResultBeanSuccess(taskPerson);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
		}		
		
		return rtnStr;
	}
	
	@POST
	@Path("/addTask/{userCode}/{jsonTaskInfo}/{jsonTaskPerson}")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 发布任务
	 * @param userCode
	 * @param jsonTaskInfo
	 * @param jsonTaskPerson
	 * @return
	 */
	public String addTask(@PathParam("userCode")String userCode,@PathParam("jsonTaskInfo")String jsonTaskInfo,
			@PathParam("jsonTaskPerson")String jsonTaskPerson){	
		String rtnStr = WSUtil.getWSResultBeanFailure();
		try {
			System.out.println("addTask....................发送任务信息："+jsonTaskPerson);
			logger.info("发送任务信息："+jsonTaskPerson);
			logger.debug("发送任务信息："+jsonTaskPerson);
			TaskInfo taskInfo = JsonUtil.jsonToBean(jsonTaskInfo, TaskInfo.class);
			taskInfo.setCreateUser(userCode);
			taskInfo.setModifyUser(userCode);
			taskInfo.setPublishPerson(userCode);
			taskInfo.setPublishTime(new Date());
			
			List<TaskPerson> taskPersons = JsonUtil.jsonToList(jsonTaskPerson, TaskPerson.class);
			
			taskInfo = SnsTaskServiceFactory.snsTaskInfoService.saveTaskInfoAndPushMsg(userCode, taskInfo, taskPersons);
			
			rtnStr = WSUtil.getWSResultBeanSuccess(taskInfo);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
		}
		
		return rtnStr;
	}
	
	@POST
	@Path("/updateTask/{userCode}/{jsonTaskInfo}/{jsonTaskPerson}")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 编辑任务
	 * @param userCode
	 * @param jsonTaskInfo
	 * @param jsonTaskPerson
	 * @return
	 */
	public String updateTask(@PathParam("userCode")String userCode,@PathParam("jsonTaskInfo")String jsonTaskInfo,
			@PathParam("jsonTaskPerson")String jsonTaskPerson){	
		String rtnStr = WSUtil.getWSResultBeanFailure();
		try {
			System.out.println("updateTask....................发送任务信息："+jsonTaskPerson);
			logger.info("编辑任务 发送任务信息："+jsonTaskPerson);
			logger.debug("编辑任务 发送任务信息："+jsonTaskPerson);
			TaskInfo taskInfo = JsonUtil.jsonToBean(jsonTaskInfo, TaskInfo.class);
			taskInfo.setModifyUser(userCode);
			taskInfo.setPublishPerson(userCode);
			taskInfo.setPublishTime(new Date());
			
			List<TaskPerson> taskPersons = JsonUtil.jsonToList(jsonTaskPerson, TaskPerson.class);
			taskInfo = SnsTaskServiceFactory.snsTaskInfoService.saveTaskInfoAndPushMsg(userCode, taskInfo, taskPersons);
			
			rtnStr = WSUtil.getWSResultBeanSuccess(taskInfo);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
		}
		
		return rtnStr;
	}
	
	@POST
	@Path("/deleteTask/{userCode}/{taskGuid}")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 删除任务
	 * @param userCode 用户帐号
	 * @param taskGuid 任务主键
	 * @return
	 */
	public String deleteTask(@PathParam("userCode")String userCode,@PathParam("taskGuid")String taskGuid){
		String rtnStr = WSUtil.getWSResultBeanFailure();
		try {		
			if(BeanUtil.isNotBlank(userCode) && BeanUtil.isNotBlank(taskGuid)){
				SnsTaskServiceFactory.snsTaskInfoService.deleteTaskInfo(taskGuid);
				
				rtnStr = WSUtil.getWSResultBeanSuccess(taskGuid);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
		}
		
		return rtnStr;
	}
	
	
	@POST
	@Path("/updateTaskPerson/{userCode}/{jsonTaskPerson}")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 任务反馈
	 * @param userCode
	 * @param jsonTaskPerson
	 * @return
	 */
	public String updateTaskPerson(@PathParam("userCode")String userCode,@PathParam("jsonTaskPerson")String jsonTaskPerson){	
		String rtnStr = WSUtil.getWSResultBeanFailure();
		try {		
			TaskPerson taskPerson = JsonUtil.jsonToBean(jsonTaskPerson, TaskPerson.class);
			taskPerson.setFankuiTime(new Date());

			SnsTaskServiceFactory.snsTaskPersonService.updateTaskPerson(taskPerson);	
			
			rtnStr = WSUtil.getWSResultBeanSuccess(taskPerson);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
		}
		
		return rtnStr;
	}
	
	@GET
	@Path("/getKnowledgeTypeList/{userCode}")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 获取知识类型列表
	 * @param userCode
	 * @return
	 */
	public String getKnowledgeTypeList(@PathParam("userCode") String userCode){
		String rtnStr = WSUtil.getWSResultBeanFailure();
		try {
			List list = SnsKnowledgeServiceFactory.snsKnowledgeTypeService.getList();		

			rtnStr = WSUtil.getWSResultBeanSuccess(list);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
		}
		
		return rtnStr;
	}
	
	@GET
	@Path("/getKnowledgeList/{userCode}/{typeGuid}")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 获取知识列表
	 * @param userCode
	 * @param typeGuid
	 * @return
	 */
	public String getKnowledgeList(@PathParam("userCode") String userCode,@PathParam("typeGuid") String typeGuid){
		String rtnStr = WSUtil.getWSResultBeanFailure();
		try {
			List list = SnsKnowledgeServiceFactory.snsKnowledgeInfoService.getList(typeGuid);

			rtnStr = WSUtil.getWSResultBeanSuccess(list);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
		}
		
		return rtnStr;
	}
	
	@GET
	@Path("/getKnowledge/{userCode}/{knowledgeGuid}")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 获取知识详细
	 * @param userCode
	 * @param knowledgeGuid
	 * @return
	 */
	public String getKnowledge(@PathParam("userCode") String userCode,@PathParam("knowledgeGuid") String knowledgeGuid){
		String rtnStr = WSUtil.getWSResultBeanFailure();
		try {
			KnowledgeInfo info = SnsKnowledgeServiceFactory.snsKnowledgeInfoService.queryInfo(knowledgeGuid);
			
			rtnStr = WSUtil.getWSResultBeanSuccess(info);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
		}
		
		return rtnStr;
	}
	
	public static void main(String[] args) {
		TaskInfo taskInfo = new TaskInfo();
		taskInfo.setTaskName("测试任务标题");
		taskInfo.setContent("测试任务内容");
		
		String jsonTaskInfo = JsonUtil.beanToJsonObject(taskInfo).toString();
		System.out.println("jsonTaskInfo.........."+jsonTaskInfo);
		
		TaskPerson taskPerson = new TaskPerson();
		taskPerson.setTaskPerson("admin");
		
		String jsonTaskPerson = JsonUtil.beanToJsonObject(taskPerson).toString();
		System.out.println("jsonTaskPerson.........."+jsonTaskPerson);
		
//		String postContent = "<p>点这个费劲<img src=\"http://www.xcrauto.com:8080/allwin/ueditor/dialogs/emotion/images/tsj/t_0013.gif\"/><br/></p>";
		//String postContent = "<p><img src=\"http://www.xcrauto.com:8080/allwin/ueditor/jsp/fileDown.jsp?filePath=/55870682-4922-4e48-9f5b-cda7cdca7a59.jpg\" style=\"float:none;\" title=\"gaint.jpg\"/></p><p><img src=\"http://www.xcrauto.com:8080/allwin/ueditor/jsp/fileDown.jsp?filePath=/cebc40f4-ec25-4ba2-b340-198dba486af2.jpg\" style=\"float:none;\" title=\"7.jpg\"/></p><p>sdfasdfasdfasdf123123123123123<br/></p>";
		String postContent = "Fafsadfsadfsadfds<p><img src=\"http://www.xcrauto.com:8080/allwinPic/img/1396449321760.jpg\" /></p><br/>";
		
		//System.out.println(getImgContent(postContent));
		//System.out.println(getWordContent(postContent));
	}
}
