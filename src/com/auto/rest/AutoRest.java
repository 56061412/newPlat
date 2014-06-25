package com.auto.rest;

import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.apache.log4j.Logger;
import org.apache.wink.common.annotations.Workspace;

import com.auto.oa.org.domain.OaOrgArea;
import com.auto.oa.org.domain.OaOrgInfo;
import com.auto.oa.org.domain.proxy.OaOrgInfoProxy;
import com.auto.oa.org.service.IOaOrgAreaService;
import com.auto.oa.org.service.IOaOrgInfoService;
import com.auto.oa.sys.common.SysConstanct;
import com.auto.oa.sys.domain.OaSysAttachment;
import com.auto.oa.sys.domain.OaSysConstantCode;
import com.auto.oa.sys.service.IOaSysAttachmentService;
import com.auto.oa.sys.service.IOaSysConstantCodeService;
import com.auto.oa.sys.service.impl.OaSysAttachmentServiceImpl;
import com.auto.oa.user.cons.UserConstant;
import com.auto.oa.user.domain.OaUserInfo;
import com.auto.oa.user.domain.OaUserLogin;
import com.auto.oa.user.domain.OaUserOrgMap;
import com.auto.oa.user.domain.proxy.OaUserInfoProxy;
import com.auto.oa.user.service.IOaUserInfoService;
import com.auto.oa.user.service.impl.OaUserInfoServiceImpl;
import com.auto.sns.core.domain.SnsCoreMessage;
import com.auto.sns.core.service.ISnsCoreMessageService;
import com.auto.tools.AutoUtils;
import com.auto.tools.PinYinUtils;
import com.auto.tools.WSUtil;
import com.system.common.BeanContext;
import com.system.util.BeanUtil;
import com.system.util.DateUtil;
import com.system.util.JsonUtil;
import com.system.util.Md5Util;

@Workspace(workspaceTitle = "Workspace Title", collectionTitle = "Collection Title")
@Path("/autoRest")
public class AutoRest {
	private static Logger logger = Logger.getLogger(AutoRest.class);
	@Resource(name="oaUserInfoService")
	private IOaUserInfoService oaUserInfoService;
	
	@Resource(name="oaOrgAreaService")
	private IOaOrgAreaService oaOrgAreaService;
	
	@Resource(name="oaOrgInfoService")
	private IOaOrgInfoService oaOrgInfoService;
	
	@Resource(name="oaSysConstantCodeService")
	private IOaSysConstantCodeService oaSysConstantCodeService;
	
	@Resource(name="snsCoreMessageService")
	private ISnsCoreMessageService snsCoreMessageService;
	
	@GET
	@Path("/getCityInfo")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 获取城市信息
	 * 数据： 大区-省份-城市
	 * @return List<OaOrgArea>
	 */
	public String getCityInfo(){
		String rtnStr = WSUtil.getWSResultBeanFailure();
		try {
			List<OaOrgArea> oaOrgAreas = oaOrgAreaService.queryListOaOrgArea(null);
			
			rtnStr = WSUtil.getWSResultBeanSuccess(oaOrgAreas);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
		}
		
		return rtnStr;
	}
	
	@GET
	@Path("/getOrgType")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 获取公司类型信息
	 * @return List<OaSysConstantCode>
	 */
	public String getOrgType(){
		String rtnStr = WSUtil.getWSResultBeanFailure();
		try {
			OaSysConstantCode oaSysConstantCode = new OaSysConstantCode();
			String osccCode = SysConstanct.ORG_TYPE_CODE;
			oaSysConstantCode.setOsccCode(osccCode);
			List<OaSysConstantCode> oaSysConstantCodes = oaSysConstantCodeService.queryListChildren(oaSysConstantCode);
			
			rtnStr = WSUtil.getWSResultBeanSuccess(oaSysConstantCodes);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
		}
		
		return rtnStr;
	}
	
	@GET
	@Path("/getOrgBrand")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 获取公司品牌信息
	 * @return List<OaSysConstantCode>
	 */
	public String getOrgBrand(){
		String rtnStr = WSUtil.getWSResultBeanFailure();
		try {
			OaSysConstantCode oaSysConstantCode = new OaSysConstantCode();
			String osccCode = SysConstanct.BRAND;
			oaSysConstantCode.setOsccCode(osccCode);
			List<OaSysConstantCode> oaSysConstantCodes = oaSysConstantCodeService.queryListChildren(oaSysConstantCode);
			
			rtnStr = WSUtil.getWSResultBeanSuccess(oaSysConstantCodes);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
		}
		
		return rtnStr;
	}
	
	@GET
	@Path("/getGender")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 获取性别选择信息
	 * @return List<OaSysConstantCode>
	 */
	public String getGender(){
		String rtnStr = WSUtil.getWSResultBeanFailure();
		try {
			OaSysConstantCode oaSysConstantCode = new OaSysConstantCode();
			String osccCode = SysConstanct.GENDER;
			oaSysConstantCode.setOsccCode(osccCode);
			List<OaSysConstantCode> oaSysConstantCodes = oaSysConstantCodeService.queryListChildren(oaSysConstantCode);
			
			rtnStr = WSUtil.getWSResultBeanSuccess(oaSysConstantCodes);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
		}
		
		return rtnStr;
	}
	
	@GET
	@Path("/getBloodType")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 获取血型选择信息
	 * @return List<OaSysConstantCode>
	 */
	public String getBloodType(){
		String rtnStr = WSUtil.getWSResultBeanFailure();
		try {
			OaSysConstantCode oaSysConstantCode = new OaSysConstantCode();
			String osccCode = SysConstanct.BLOOD_TYPE_CODE;
			oaSysConstantCode.setOsccCode(osccCode);
			List<OaSysConstantCode> oaSysConstantCodes = oaSysConstantCodeService.queryListChildren(oaSysConstantCode);
			
			rtnStr = WSUtil.getWSResultBeanSuccess(oaSysConstantCodes);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
		}
		
		return rtnStr;
	}
	
	@GET
	@Path("/getOrgInfo")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 获取公司信息
	 * @return List<OaOrgInfo>
	 */
	public String getOrgInfo(){
		String rtnStr = WSUtil.getWSResultBeanFailure();
		try {
			List<OaOrgInfo> oaOrgInfos = oaOrgInfoService.queryListOaOrgInfo(null);
			
			rtnStr = WSUtil.getWSResultBeanSuccess(oaOrgInfos);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
		}
		
		return rtnStr;
	}
	
	@GET
	@Path("/getOrgInfo/{orgTypeCode}/{brandCode}/{areaGuid}")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 获取公司信息
	 * @param orgTypeCode 公司类型
	 * @param brandCode 品牌
	 * @param areaGuid 区域（城市信息的主键）
	 * @return List<OaOrgInfo>
	 */
	public String getOrgInfo(@PathParam("orgTypeCode") String orgTypeCode, @PathParam("brandCode") String brandCode, @PathParam("areaGuid") String areaGuid){
		String rtnStr = WSUtil.getWSResultBeanFailure();
		try {
			OaOrgInfo oaOrgInfo = new OaOrgInfo();
			oaOrgInfo.setAuorgArea(areaGuid);
			oaOrgInfo.setAuorgBrandCode(brandCode);
			oaOrgInfo.setAuorgTypeCode(orgTypeCode);
			
			List<OaOrgInfo> oaOrgInfos = oaOrgInfoService.queryListOaOrgInfo(oaOrgInfo);
			
			rtnStr = WSUtil.getWSResultBeanSuccess(oaOrgInfos);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
		}
		
		return rtnStr;
	}
	
	@GET
	@Path("/getOrgUsers/{orgCode}")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 获取公司成员信息
	 * @param orgCode 公司代码
	 * @return json List<OaOrgInfo>
	 */
	public String getOrgUsers(@PathParam("orgCode") String orgCode){
		String rtnStr = WSUtil.getWSResultBeanFailure();
		try {
			if(BeanUtil.isNotBlank(orgCode)){
				OaOrgInfo oaOrgInfo = oaOrgInfoService.getOaOrgInfoByOrgCode(orgCode);
				oaOrgInfo = OaOrgInfoProxy.getOaOrgInfo(oaOrgInfo);
				
				rtnStr = WSUtil.getWSResultBeanSuccess(oaOrgInfo);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
		}
		
		return rtnStr;
	}
	
	@GET
	@Path("/loginAuto/{userCode}/{password}/{mobileChannelId}/{mobileUserId}")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 用户登录
	 * 用户帐号和密码匹配返回：成功
	 * 用户帐号和密码不匹配返回：失败
	 * @param userCode 用户账号
	 * @param password	用户密码
	 * @param mobileChannelId	手机端返回的ChannelId 用于消息推送
	 * @param mobileUserId	手机端返回的UserId 用于消息推送
	 * @return List<OaUserInfo>
	 */
	public String loginAuto(@PathParam("userCode") String userCode, @PathParam("password") String password, @PathParam("mobileChannelId") String mobileChannelId, @PathParam("mobileUserId") String mobileUserId){
		String rtnStr = WSUtil.getWSResultBeanFailure();
		try {
			if(BeanUtil.isNotBlank(userCode) && BeanUtil.isNotBlank(password)){
				OaUserInfo oaUserInfo = oaUserInfoService.getOaUserInfoForLogin(userCode, password);
				
				if(!BeanUtil.isObjectNull(oaUserInfo)){
					oaUserInfo = OaUserInfoProxy.getOaUserInfo(oaUserInfo);
					
					//记录登录日志 手机端登录
					oaUserInfo.setAuserLoginLog(UserConstant.LOGIN_LOG_MB);
					oaUserInfo.setAuserLoginState(UserConstant.LOGIN_STATE_IN);
					if(BeanUtil.isNotBlank(mobileChannelId) && BeanUtil.isNotBlank(mobileUserId)){
						//记录用户手机端channelId 和 userId 用户同意接收消息通知
						oaUserInfo.setAuserMobileChannelId(mobileChannelId);
						oaUserInfo.setAuserMobileUserId(mobileUserId);
					}
					oaUserInfo.setUpdateUser(userCode);
					rtnStr = WSUtil.getWSResultBeanSuccess(oaUserInfo);
					logger.info("移动端登录 loginAuto：  "+rtnStr);
					oaUserInfoService.saveOrUpdateOaUserInfo(oaUserInfo);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
		}
		
		return rtnStr;
	}
	
	@GET
	@Path("/registerAutoStepOne/{userCode}")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 注册账号
	 * 第一步 验证推荐人账号是否存在
	 * 推荐人存在返回：成功
	 * 推荐人不存在返回：失败
	 * @param userCode 用户账号
	 * @return List<OaUserInfo>
	 */
	public String registerAutoStepOne(@PathParam("userCode") String userCode){
		String rtnStr = WSUtil.getWSResultBeanFailure();
		try {
			if(BeanUtil.isNotBlank(userCode)){
				OaUserInfo oaUserInfo = oaUserInfoService.getOaUserInfoByUserCode(userCode);
				
				if(!BeanUtil.isObjectNull(oaUserInfo)){
					rtnStr = WSUtil.getWSResultBeanSuccess(oaUserInfo);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
		}
		
		return rtnStr;
	}
	
	@POST
	@Path("/registerAutoStepTwo/{password}/{userName}/{userAge}/{idCardNo}/{gender}/{birthday}/{blood}/{QQ}/{mobile}/{mail}/{city}/{address}/{zipcode}/{school}/{wordExp}/{orgGuid}")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 注册账号
	 * 第二步 保存用户信息
	 * 保存成功返回：成功
	 * 保存失败返回：失败
	 * 
	 * @param password 密码--必填
	 * @param userName 姓名--必填
	 * @param userAge 年龄--必填
	 * @param idCardNo 身份证号--必填
	 * @param gender 性别--必填
	 * @param birthday 生日--必填 格式要求：YYYY-mm-dd
	 * @param blood 血型--必填
	 * @param QQ QQ号码--必填
	 * @param mobile 手机--必填
	 * @param mail 邮箱--必填
	 * @param city 城市
	 * @param address 地址
	 * @param zipcode 邮编
	 * @param school 学校
	 * @param wordExp 工作经历
	 * @param orgGuid 组织主键--必填
	 * @return
	 */
	public String registerAutoStepTwo(@PathParam("password")String password, @PathParam("userName")String userName, @PathParam("userAge")String userAge, 
			@PathParam("idCardNo")String idCardNo, @PathParam("gender")String gender, @PathParam("birthday")	String birthday, 
			@PathParam("blood")String blood, @PathParam("QQ")String QQ, @PathParam("mobile")String mobile, @PathParam("mail")String mail, 
			@PathParam("city")String city, @PathParam("address")String address, @PathParam("zipcode")String zipcode, @PathParam("school")String school, 
			@PathParam("wordExp")String wordExp, @PathParam("orgGuid")	String orgGuid){
		String rtnStr = WSUtil.getWSResultBeanFailure();
		try {
			if(BeanUtil.isNotBlank(password) && BeanUtil.isNotBlank(userName) && BeanUtil.isNotBlank(userAge) && BeanUtil.isNotBlank(idCardNo) && BeanUtil.isNotBlank(gender)
					&& BeanUtil.isNotBlank(birthday) && BeanUtil.isNotBlank(blood) && BeanUtil.isNotBlank(QQ) && BeanUtil.isNotBlank(mobile) && BeanUtil.isNotBlank(mail)
					&& BeanUtil.isNotBlank(orgGuid)){
				OaUserOrgMap oaUserOrgMap = new OaUserOrgMap();
				oaUserOrgMap.setAuorgGuid(orgGuid);
				
				OaUserInfo oaUserInfo = new OaUserInfo();
				oaUserInfo.setAuserAddress(address);
				oaUserInfo.setAuserAge(userAge);
				oaUserInfo.setAuserBirthday(DateUtil.toDate(birthday, DateUtil.DEFAULT_DATE_PATTERN));
				oaUserInfo.setAuserBloodType(blood);
				oaUserInfo.setAuserCity(city);
				oaUserInfo.setAuserGender(gender);
				oaUserInfo.setAuserGraduateSchool(school);
				oaUserInfo.setAuserIdCode(idCardNo);
				oaUserInfo.setAuserIdType("IDCARD");
				oaUserInfo.setAuserMail(mail);
				oaUserInfo.setAuserMobile(mobile);
				oaUserInfo.setAuserName(userName);
				oaUserInfo.setAuserPassword(Md5Util.encryptByMD5(password));
//				oaUserInfo.setAuserNickName(auserNickName);
//				oaUserInfo.setAuserPhone(auserPhone);
				String auserPy = PinYinUtils.getPinYinStr(userName);
				oaUserInfo.setAuserPy(auserPy);
				String auserPyBref = PinYinUtils.getPinYinHeadCharStr(userName);
				oaUserInfo.setAuserPyBref(auserPyBref);
				oaUserInfo.setAuserQq(QQ);
				oaUserInfo.setAuserWorkExperience(wordExp);
				oaUserInfo.setAuserZipcode(zipcode);
				
				String userCode = AutoUtils.getAutoUserCode(orgGuid);
				oaUserInfo.setAuserCode(userCode);
				
				oaUserInfo.setCreateUser(userCode);
				oaUserInfo.setUpdateUser(userCode);
				oaUserInfoService.saveOrUpdateOaUserInfo(oaUserInfo, oaUserOrgMap);
				
				rtnStr = WSUtil.getWSResultBeanSuccess(oaUserInfo);
			}
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
		}
		
		return rtnStr;
	}
	/**
	@POST
	@Path("/registerAutoStepTwo/{jsonUserInfo}/{orgGuid}")
	@Produces(MediaType.APPLICATION_JSON)
	
	 * 注册账号
	 * 第二步 保存用户信息
	 * 保存成功返回：成功
	 * 保存失败返回：失败
	 * 
	 * @param password 密码--必填
	 * @param userName 姓名--必填
	 * @param userAge 年龄--必填
	 * @param idCardNo 身份证号--必填
	 * @param gender 性别--必填
	 * @param birthday 生日--必填 格式要求：YYYY-mm-dd
	 * @param blood 血型--必填
	 * @param QQ QQ号码--必填
	 * @param mobile 手机--必填
	 * @param mail 邮箱--必填
	 * @param city 城市
	 * @param address 地址
	 * @param zipcode 邮编
	 * @param school 学校
	 * @param wordExp 工作经历
	 * @param orgGuid 组织主键--必填
	 * @return
	 
	public String registerAutoStepTwo(@PathParam("jsonUserInfo")String jsonUserInfo, @PathParam("orgGuid")	String orgGuid){
		String rtnStr = WSUtil.getWSResultBeanFailure();
		try {
			if(BeanUtil.isNotBlank(jsonUserInfo) && BeanUtil.isNotBlank(orgGuid)){
				OaUserOrgMap oaUserOrgMap = new OaUserOrgMap();
				oaUserOrgMap.setAuorgGuid(orgGuid);
				
				OaUserInfo oaUserInfo = JsonUtil.jsonToBean(jsonUserInfo, OaUserInfo.class);
				
				oaUserInfo.setAuserIdType("IDCARD");
				String password = oaUserInfo.getAuserPassword();
				oaUserInfo.setAuserPassword(Md5Util.encryptByMD5(password));
//				oaUserInfo.setAuserNickName(auserNickName);
//				oaUserInfo.setAuserPhone(auserPhone);
				String userName = oaUserInfo.getAuserName();
				String auserPy = PinYinUtils.getPinYinStr(userName);
				oaUserInfo.setAuserPy(auserPy);
				String auserPyBref = PinYinUtils.getPinYinHeadCharStr(userName);
				oaUserInfo.setAuserPyBref(auserPyBref);
				
				String userCode = AutoUtils.getAutoUserCode(orgGuid);
				oaUserInfo.setAuserCode(userCode);
				
				oaUserInfoService.saveOrUpdateOaUserInfo(oaUserInfo, oaUserOrgMap);
				
				rtnStr = WSUtil.getWSResultBeanSuccess(oaUserInfo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return rtnStr;
	}
	*/
	@POST
	@Path("/updateUserInfo/{userCode}/{jsonUserInfo}")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 修改用户信息
	 * @param userCode 用户账号
	 * @param jsonUserInfo 用户信息JSON
	 * @return
	 */
	public String updateUserInfo(@PathParam("userCode") String userCode, @PathParam("jsonUserInfo")String jsonUserInfo){
		String rtnStr = WSUtil.getWSResultBeanFailure();
		try {
			if(BeanUtil.isNotBlank(userCode)){
				OaUserInfo oaUserInfo = JsonUtil.jsonToBean(jsonUserInfo, OaUserInfo.class);
				
				String userName= oaUserInfo.getAuserName();
				oaUserInfo.setAuserIdType("IDCARD");
				String auserPy = PinYinUtils.getPinYinStr(userName);
				oaUserInfo.setAuserPy(auserPy);
				String auserPyBref = PinYinUtils.getPinYinHeadCharStr(userName);
				oaUserInfo.setAuserPyBref(auserPyBref);
				
				oaUserInfo.setUpdateUser(userCode);
				oaUserInfoService.saveOrUpdateOaUserInfo(oaUserInfo);
				
				rtnStr = WSUtil.getWSResultBeanSuccess(oaUserInfo);
			}
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
		}
		
		return rtnStr;
	}
	
	@POST
	@Path("/updateUserHeadImage/{userCode}")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 更新用户头像
	 * @param userCode 用户账号
	 * @param jsonFile 用户头像附件信息 json格式<OaSysAttachment>
	 * @return
	 */
	public String updateUserHeadImage(@PathParam("userCode") String userCode, String jsonFile){
		String rtnStr = WSUtil.getWSResultBeanFailure();
		System.out.println("更新用户头像.............................START..........GET...............");
		System.out.println("更新用户头像.............................jsonFile..........GET..............."+jsonFile);
		try {
			String jsonFileNew = URLDecoder.decode(jsonFile, "UTF-8");
			System.out.println("更新用户头像.............................jsonFileNew..........GET..............."+jsonFileNew);
			logger.debug("更新用户头像.............................jsonFileNew..........GET..............."+jsonFileNew);
			//头像附件信息
			List<OaSysAttachment> oaSysAttachments = JsonUtil.jsonToList(jsonFileNew, OaSysAttachment.class);
			if(BeanUtil.isNotBlank(userCode) && !oaSysAttachments.isEmpty()){
				System.out.println("查询用户信息。。。。。。。userCode。。。。。。。。。。。................."+userCode);
				IOaUserInfoService oaUserInfoService = (OaUserInfoServiceImpl)BeanContext.getBean("oaUserInfoService");
				IOaSysAttachmentService oaSysAttachmentService = (OaSysAttachmentServiceImpl)BeanContext.getBean("oaSysAttachmentService");
				
				OaUserInfo oaUserInfo = oaUserInfoService.getOaUserInfoByUserCode(userCode);
				if(null != oaUserInfo){
					String userGuid = oaUserInfo.getAuserGuid();
					System.out.println("查询用户信息。。。。。。。。。。。。。。。。。。end.................");
					
					OaSysAttachment oaSysAttachment = null;
					String busiGuid = userGuid;
					String fileName = userCode;
					List<OaSysAttachment> loadOaSysAttachments =	oaSysAttachmentService.queryListOaSysAttachment(busiGuid);
					System.out.println("用户头像是否存在..................................loadOaSysAttachments......................"+loadOaSysAttachments.size());
					if(loadOaSysAttachments.isEmpty()){
						oaSysAttachment = oaSysAttachments.get(0);
						oaSysAttachment.setFileGuid(null);
						oaSysAttachment.setFileBusiGuid(busiGuid);
						oaSysAttachment.setFileName(fileName);
						oaSysAttachment.setCreateUser(userCode);
						oaSysAttachment.setUpdateUser(userCode);
					}else{
						String filePath= oaSysAttachments.get(0).getFilePath();
						oaSysAttachment = loadOaSysAttachments.get(0);
						oaSysAttachment.setFilePath(filePath);
					}
					
					if(null != oaSysAttachment){
						System.out.println("保存用户头像开始..................................start......................");
						oaSysAttachmentService.saveOrUpdateOaSysAttachment(oaSysAttachment);
						System.out.println("保存用户头像结束..................................end......................");
					}
					
					oaUserInfo = OaUserInfoProxy.getOaUserInfo(oaUserInfo);
					
					rtnStr = WSUtil.getWSResultBeanSuccess(oaUserInfo);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
		}
		logger.debug("保存用户头像结果。。。。。。。。。。。。"+rtnStr);
		return rtnStr;
	}
	
	@GET
	@Path("/checkSrcPassword/{userCode}/{srcPassword}")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 校验当前密码是否正确
	 * @param userCode 用户账号
	 * @param srcPassword 当前密码
	 * @return
	 */
	public String checkSrcPassword(@PathParam("userCode") String userCode, @PathParam("srcPassword") String srcPassword){
		String rtnStr = WSUtil.getWSResultBeanFailure();
		try {
			if(BeanUtil.isNotBlank(userCode) && BeanUtil.isNotBlank(srcPassword)){
				OaUserInfo oaUserInfo = oaUserInfoService.getOaUserInfoForLogin(userCode, srcPassword);
				
				if(!BeanUtil.isObjectNull(oaUserInfo)){
					rtnStr = WSUtil.getWSResultBeanSuccess(oaUserInfo);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
		}
		
		return rtnStr;
	}
	
	@POST
	@Path("/updatePassword/{userCode}/{newPassword}")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 修改密码
	 * @param userCode 用户账号
	 * @param newPassword 新密码
	 * @return List<OaUserInfo>
	 */
	public String updatePassword(@PathParam("userCode") String userCode, @PathParam("newPassword") String newPassword){
		String rtnStr = WSUtil.getWSResultBeanFailure();
		try {
			if(BeanUtil.isNotBlank(userCode) && BeanUtil.isNotBlank(newPassword)){
				OaUserInfo oaUserInfo = oaUserInfoService.updateOaUserInfoPWD(userCode, newPassword);
//				OaUserInfo oaUserInfo = oaUserInfoService.getOaUserInfoByUserCode(userCode);
//				newPassword = Md5Util.encryptByMD5(newPassword);
//				oaUserInfo.setAuserPassword(newPassword);
//				oaUserInfoService.saveOrUpdateOaUserInfo(oaUserInfo);
				
				if(!BeanUtil.isObjectNull(oaUserInfo)){
					rtnStr = WSUtil.getWSResultBeanSuccess(oaUserInfo);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
		}
		
		return rtnStr;
	}
	
	@GET
	@Path("/getUserInfo/{userCode}")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 获取用户信息
	 * @param userCode 用户账号
	 * @return List<OaUserInfo>
	 */
	public String getUserInfo(@PathParam("userCode") String userCode){
		String rtnStr = WSUtil.getWSResultBeanFailure();
		try {
			if(BeanUtil.isNotBlank(userCode)){
				OaUserInfo oaUserInfo = oaUserInfoService.getOaUserInfoByUserCode(userCode);
				
				if(!BeanUtil.isObjectNull(oaUserInfo)){
					rtnStr = WSUtil.getWSResultBeanSuccess(oaUserInfo);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
		}
		
		return rtnStr;
	}
	
	@POST
	@Path("/bindMobile/{userCode}/{mobile}")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 绑定手机（修改手机）
	 * @param userCode 用户账号
	 * @param mobile 手机
	 * @return List<OaUserInfo>
	 */
	public String bindMobile(@PathParam("userCode") String userCode, @PathParam("mobile") String mobile){
		String rtnStr = WSUtil.getWSResultBeanFailure();
		try {
			if(BeanUtil.isNotBlank(userCode) && BeanUtil.isNotBlank(mobile)){
				OaUserInfo oaUserInfo = oaUserInfoService.getOaUserInfoByUserCode(userCode);
				oaUserInfo.setAuserMobile(mobile);
				oaUserInfoService.saveOrUpdateOaUserInfo(oaUserInfo);
				
				if(!BeanUtil.isObjectNull(oaUserInfo)){
					rtnStr = WSUtil.getWSResultBeanSuccess(oaUserInfo);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
		}
		
		return rtnStr;
	}
	
	@POST
	@Path("/bindMail/{userCode}/{mail}")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 绑定邮箱
	 * @param userCode 用户账号
	 * @param mail 邮箱
	 * @return List<OaUserInfo>
	 */
	public String bindMail(@PathParam("userCode") String userCode, @PathParam("mail") String mail){
		String rtnStr = WSUtil.getWSResultBeanFailure();
		try {
			if(BeanUtil.isNotBlank(userCode) && BeanUtil.isNotBlank(mail)){
				OaUserInfo oaUserInfo = oaUserInfoService.getOaUserInfoByUserCode(userCode);
				oaUserInfo.setAuserMail(mail);
				oaUserInfoService.saveOrUpdateOaUserInfo(oaUserInfo);
				
				if(!BeanUtil.isObjectNull(oaUserInfo)){
					rtnStr = WSUtil.getWSResultBeanSuccess(oaUserInfo);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
		}
		
		return rtnStr;
	}
	
	@POST
	@Path("/saveUserSignIn/{userCode}")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 用户签到
	 * @param userCode 用户账号
	 * @return List<OaUserLogin>
	 */
	public String saveUserSignIn(@PathParam("userCode") String userCode){
		String rtnStr = WSUtil.getWSResultBeanFailure();
		try {
			if(BeanUtil.isNotBlank(userCode)){
				OaUserLogin oaUserLogin = new OaUserLogin();
				oaUserLogin.setAuloUserCode(userCode);
				
				oaUserLogin.setCreateUser(userCode);
				oaUserLogin.setUpdateUser(userCode);
				oaUserLogin = oaUserInfoService.saveOrUpdateOaUserLogin(oaUserLogin);
				
				rtnStr = WSUtil.getWSResultBeanSuccess(oaUserLogin);
			}
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
		}
		
		return rtnStr;
	}
	
	@GET
	@Path("/getUserSignInList/{userCode}")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 签到列表
	 * @param userCode 用户账号
	 * @return List<OaUserLogin>
	 */
	public String getUserSignInList(@PathParam("userCode") String userCode){
		String rtnStr = WSUtil.getWSResultBeanFailure();
		try {
			if(BeanUtil.isNotBlank(userCode)){
				OaUserLogin oaUserLogin = new OaUserLogin();
				oaUserLogin.setAuloUserCode(userCode);
				
				List<OaUserLogin> oaUserLogins = oaUserInfoService.queryOaUserLoginList(oaUserLogin);
				
				rtnStr = WSUtil.getWSResultBeanSuccess(oaUserLogins);
			}
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
		}
		
		return rtnStr;
	}
	
	@GET
	@Path("/getValidatyUserSignIn/{userCode}")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 验证用户当日是否已签到
	 * @param userCode 用户账号
	 * @return List<OaUserLogin>
	 */
	public String getValidatyUserSignIn(@PathParam("userCode") String userCode) {
		String rtnStr = WSUtil.getWSResultBeanFailure();
		try {
			if(BeanUtil.isNotBlank(userCode)){
				Date auloLoginTime = DateUtil.currentDate();
				OaUserLogin oaUserLogin = new OaUserLogin();
				oaUserLogin.setAuloUserCode(userCode);
				oaUserLogin.setAuloLoginTime(auloLoginTime);
				
				List<OaUserLogin> oaUserLogins = oaUserInfoService.queryOaUserLoginList(oaUserLogin);
				
				if(!oaUserLogins.isEmpty()){
					rtnStr = WSUtil.getWSResultBeanSuccess(oaUserLogins);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
		}
		
		return rtnStr;
	}
	
	@GET
	@Path("/getValidatyUserResetPWD/{userCode}/{rmdUserCode}/{userName}/{mobile}/{email}")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 忘记密码
	 * 校验用户信息 通过后 重置密码并返回
	 * @param userCode	账号
	 * @param rmdUserCode	推荐人账号
	 * @param userName 姓名
	 * @param mobile 手机
	 * @param email 邮箱
	 * @return
	 */
	public String getValidatyUserResetPWD(@PathParam("userCode") String userCode, @PathParam("rmdUserCode") String rmdUserCode, 
			@PathParam("userName") String userName, @PathParam("mobile") String mobile, @PathParam("email") String email){
		String rtnStr = WSUtil.getWSResultBeanFailure();
		try {
			//检查推荐人账号是否存在
			OaUserInfo oaUserInfo = oaUserInfoService.getOaUserInfoByUserCode(rmdUserCode);
			//存在 则查询人员信息
			if(!BeanUtil.isObjectNull(oaUserInfo)){
				OaUserInfo oaUserInfoSelf = new OaUserInfo();
				oaUserInfoSelf.setAuserCode(userCode);
				oaUserInfoSelf.setAuserName(userName);
				oaUserInfoSelf.setAuserMobile(mobile);
				oaUserInfoSelf.setAuserMail(email);
				
				List<OaUserInfo> oaUserInfos = oaUserInfoService.queryOaUserInfoList(oaUserInfoSelf);
				if(!oaUserInfos.isEmpty()){
					//重置密码
					oaUserInfoSelf = oaUserInfos.get(0);
					String resetPWD = oaUserInfoSelf.getAuserCode() + oaUserInfoSelf.getAuserMobile();
					
					oaUserInfoSelf.setAuserPassword(Md5Util.encryptByMD5(resetPWD));
					oaUserInfoService.saveOrUpdateOaUserInfo(oaUserInfoSelf);
					
					oaUserInfoSelf.setAuserPassword(resetPWD);
					rtnStr = WSUtil.getWSResultBeanSuccess(oaUserInfoSelf);
				}
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
		}
		
		return rtnStr;
	}
	
	@POST
	@Path("/savePrivateMessage/{jsonCoreMessageInfo}/{jsonRecUserCode}")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 保存私信
	 * @param jsonCoreMessageInfo
	 * @param jsonRecUserCode
	 * @return
	 */
	public String savePrivateMessage(@PathParam("jsonCoreMessageInfo")String jsonCoreMessageInfo, @PathParam("jsonRecUserCode")String jsonRecUserCode){
		String rtnStr = WSUtil.getWSResultBeanFailure();
		try {
			List<String> recUserCodes = JsonUtil.jsonToList(jsonRecUserCode, String.class);
			for (String recUserCode : recUserCodes) {
				SnsCoreMessage snsCoreMessage = JsonUtil.jsonToBean(jsonCoreMessageInfo, SnsCoreMessage.class);
				String userCode = snsCoreMessage.getScmePerson();
				snsCoreMessage.setScmeDate(new Date());
				snsCoreMessage.setScmeParentGuid(null);
				snsCoreMessage.setScmeRecPerson(recUserCode);
				
				snsCoreMessage.setCreateUser(userCode);
				snsCoreMessage.setUpdateUser(userCode);
				snsCoreMessage.setModifyUser(userCode);
				snsCoreMessageService.saveOrUpdateSnsCoreMessage(snsCoreMessage);
			}
			
			rtnStr = WSUtil.getWSResultBeanSuccess(null);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
		}
		
		return rtnStr;
	}
	
	@GET
	@Path("/getPrivateMessage/{userCode}/{recUserCode}")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 获取私信列表
	 * @param userCode 发起人账号
	 * @param recUserCode 接收人账号
	 * @return
	 */
	public String getPrivateMessage(@PathParam("userCode")String userCode, @PathParam("recUserCode")String recUserCode){
		String rtnStr = WSUtil.getWSResultBeanFailure();
		try {
			List<SnsCoreMessage> snsCoreMessages = new ArrayList<SnsCoreMessage>();
			if(BeanUtil.isNotBlank(userCode) && BeanUtil.isNotBlank(recUserCode)){
				snsCoreMessages = snsCoreMessageService.queryCoreMessageDialogue(userCode, recUserCode);
			}
			
			rtnStr = WSUtil.getWSResultBeanSuccess(snsCoreMessages);
//			System.out.println("rtnStr................................"+rtnStr);
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
		}
		
		return rtnStr;
	}
	
	public static void main(String[] args) {
		try {
			SnsCoreMessage snsCoreMessage = new SnsCoreMessage();
			snsCoreMessage.setScmePerson("admin");
			snsCoreMessage.setScmeTitle("Test Private Msg");
			snsCoreMessage.setScmeDate(new Date());
			
			String jsonCoreMessageInfo = JsonUtil.beanToJsonObject(snsCoreMessage).toString();
			System.out.println("jsonCoreMessageInfo.............."+jsonCoreMessageInfo);
			
			List<String> lists = new ArrayList<String>();
			lists.add("admin");
			lists.add("SHDAS1USER1");
			String jsonRecUserCode = JsonUtil.listToJSONArray(lists).toString();
			System.out.println("jsonRecUserCode.............."+jsonRecUserCode);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
