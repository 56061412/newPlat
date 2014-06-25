package com.auto.sns.login.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.auto.oa.org.domain.OaOrgInfo;
import com.auto.oa.org.service.IOaOrgInfoService;
import com.auto.oa.sys.common.SysConstanct;
import com.auto.oa.user.domain.OaUserInfo;
import com.auto.oa.user.domain.OaUserOrgMap;
import com.auto.oa.user.service.IOaUserInfoService;
import com.auto.sns.login.dao.ISnsRegRefreeDAO;
import com.auto.sns.login.dao.ISnsRegUserLoginDAO;
import com.auto.sns.login.domain.SnsRegRefree;
import com.auto.sns.login.domain.SnsRegUserLogin;
import com.auto.sns.login.service.ISnsRegService;
import com.auto.tools.AutoUtils;
import com.auto.tools.PinYinUtils;
import com.system.common.Page;
import com.system.util.BeanUtil;
import com.system.util.Md5Util;

@Service("snsRegService")
public class SnsRegServiceImpl implements ISnsRegService {
	private static Logger logger = Logger.getLogger(SnsRegServiceImpl.class);
	@Resource(name="oaOrgInfoService")
	private IOaOrgInfoService oaOrgInfoService;
	@Resource(name="oaUserInfoService")
	private IOaUserInfoService oaUserInfoService;
	@Resource(name="snsRegRefreeDAO")
	private ISnsRegRefreeDAO snsRegRefreeDAO;
	@Resource(name="snsRegUserLoginDAO")
	private ISnsRegUserLoginDAO snsRegUserLoginDAO;
	
	public boolean saveOrUpdateSnsRegRefree(String srreUserCode, String srreUserName, String srreRegUserCode, String srreRegUserName) throws Exception {
		boolean bool = true;
		try {
			SnsRegRefree snsRegRefree = new SnsRegRefree();
			if(BeanUtil.isNotBlank(srreUserCode)){
				snsRegRefree.setSrreUserCode(srreUserCode);
				snsRegRefree.setSrreUserName(srreUserName);
				snsRegRefree.setSrreRegUserCode(srreRegUserCode);
				snsRegRefree.setSrreRegUserName(srreRegUserName);
				
				if(BeanUtil.isNotBlank(snsRegRefree.getSrreGuid())){
					snsRegRefreeDAO.updateSnsRegRefree(snsRegRefree);
				}else{
					snsRegRefreeDAO.insertSnsRegRefree(snsRegRefree);
				}
			}
			
			return bool;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}

	}

	public boolean saveOrUpdateSnsRegRefree(SnsRegRefree snsRegRefree) throws Exception {
		boolean bool = true;
		try {
			if(BeanUtil.isNotBlank(snsRegRefree.getSrreGuid())){
				snsRegRefreeDAO.updateSnsRegRefree(snsRegRefree);
			}else{
				snsRegRefreeDAO.insertSnsRegRefree(snsRegRefree);
			}
			
			return bool;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}

	}

	public boolean saveOrUpdateSnsRegUserLogin(SnsRegUserLogin snsRegUserLogin)	throws Exception {
		boolean bool = true;
		try {
			if(BeanUtil.isNotBlank(snsRegUserLogin.getSrulGuid())){
				snsRegUserLoginDAO.updateSnsRegUserLogin(snsRegUserLogin);
				
				//注册状态：审核通过  1 将注册信息同步至后台用户信息表
				if(SysConstanct.LOGIN_APPROVE.equals(snsRegUserLogin.getSrulStatus())){
					synSnsRegUserLoginToOaUserInfo(snsRegUserLogin);
				}
				
			}else{
				snsRegUserLoginDAO.insertSnsRegUserLogin(snsRegUserLogin);
			}
			
			return bool;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}

	}

	public boolean saveRegisterStepTwo(SnsRegUserLogin snsRegUserLogin,	SnsRegRefree snsRegRefree) throws Exception {
		boolean bool = false;
		try {
			if(BeanUtil.isObjectNotNull(snsRegUserLogin)){
				//获得中文姓名
				String cnName = snsRegUserLogin.getSrulUserName();
				//获得拼音全拼
				String pinYin = PinYinUtils.getPinYinStr(cnName);
				//获得拼音首字母
				String pinYinHead = PinYinUtils.getPinYinHeadCharStr(cnName);
				
				snsRegUserLogin.setSrulUserPy(pinYin);
				snsRegUserLogin.setSrulUserPyBref(pinYinHead);
				
				String orgCode = snsRegUserLogin.getSrulOrgCode();
				String userCode = AutoUtils.getAutoUserCodeByOrgCode(orgCode);
				snsRegUserLogin.setSrulUserCode(userCode);
				
				//保存注册信息
				saveOrUpdateSnsRegUserLogin(snsRegUserLogin);
				
				//保存注册时使用的推荐人信息
				saveOrUpdateSnsRegRefree(snsRegRefree);
				
				bool = true;
			}
			return bool;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

	public List<SnsRegUserLogin> queryPageListSnsRegUserLogin(SnsRegUserLogin bean, Page page) throws Exception {
		List<SnsRegUserLogin> resultList = null;
		try {
			Map<String, Object> param = BeanUtil.convertBeanToMap(bean);
			resultList = snsRegUserLoginDAO.queryList(param, page);
			
			return resultList;
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
	}
	
	private void synSnsRegUserLoginToOaUserInfo(SnsRegUserLogin snsRegUserLogin) throws Exception {
		try {
			OaUserInfo oaUserInfo = new OaUserInfo();
			oaUserInfo.setAuserAddress(snsRegUserLogin.getSrulUserAddress());
			oaUserInfo.setAuserAge(snsRegUserLogin.getSrulUserAge());
			oaUserInfo.setAuserBirthday(snsRegUserLogin.getSrulUserBirthday());
			oaUserInfo.setAuserBloodType(snsRegUserLogin.getSrulUserBloodType());
			oaUserInfo.setAuserCity(snsRegUserLogin.getSrulUserCity());
			oaUserInfo.setAuserCode(snsRegUserLogin.getSrulUserCode());
			oaUserInfo.setAuserGender(snsRegUserLogin.getSrulUserGender());
			oaUserInfo.setAuserGraduateSchool(snsRegUserLogin.getSrulUserGraduateSchool());
			oaUserInfo.setAuserIdCode(snsRegUserLogin.getSrulUserIdCode());
			oaUserInfo.setAuserIdType("IDCARD");
			oaUserInfo.setAuserMail(snsRegUserLogin.getSrulUserMail());
			oaUserInfo.setAuserMobile(snsRegUserLogin.getSrulUserMobile());
			oaUserInfo.setAuserName(snsRegUserLogin.getSrulUserName());
			oaUserInfo.setAuserNickName(snsRegUserLogin.getSrulUserNickName());
			oaUserInfo.setAuserPassword(Md5Util.encryptByMD5(snsRegUserLogin.getSrulUserPassword()));
			oaUserInfo.setAuserPy(snsRegUserLogin.getSrulUserPy());
			oaUserInfo.setAuserPyBref(snsRegUserLogin.getSrulUserPyBref());
			oaUserInfo.setAuserQq(snsRegUserLogin.getSrulUserQq());
			oaUserInfo.setAuserWorkExperience(snsRegUserLogin.getSrulUserWorkExperience());
			oaUserInfo.setAuserZipcode(snsRegUserLogin.getSrulUserZipcode());
			
			//查询组织主键
			OaOrgInfo oaOrgInfo = oaOrgInfoService.getOaOrgInfoByOrgCode(snsRegUserLogin.getSrulOrgCode());
			if(BeanUtil.isObjectNotNull(oaOrgInfo)){
				OaUserOrgMap oaUserOrgMap = new OaUserOrgMap();
				oaUserOrgMap.setAuorgGuid(oaOrgInfo.getAuorgGuid());
				oaUserOrgMap.setAuserGuid(oaUserInfo.getAuserGuid());
				
				oaUserInfoService.saveOrUpdateOaUserInfo(oaUserInfo, oaUserOrgMap);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e);
			throw e;
		}
	}

}
