package com.auto.sns.util;

import java.util.List;
import java.util.Map;

import com.auto.oa.sys.dao.IOaSysAttachmentDAO;
import com.auto.oa.sys.domain.OaSysAttachment;
import com.auto.oa.user.dao.IOaUserInfoDAO;
import com.auto.oa.user.domain.OaUserInfo;
import com.auto.tools.AttachmentUtil;
import com.system.common.BeanContext;
import com.system.util.BeanUtil;

public class UserUtil {
	/**
	 * 获取用户头像
	 * @param userLabel
	 * @throws IllegalAccessException 
	 * @throws IllegalArgumentException 
	 */
	public static String getUserImgByUserCode(String userCode) throws IllegalArgumentException, IllegalAccessException{
		String rtn = "http://WWW.XCRAUTO.COM:8080/allwin/AUTO/OA/js/miniui/themes/auto2012/images/noavatar.jpg";
		if(BeanUtil.isNotBlank(userCode)){
			System.out.println("userCode........................."+userCode);
			IOaUserInfoDAO oaUserInfoDAO = (IOaUserInfoDAO)BeanContext.getBean("oaUserInfoDAO");
			OaUserInfo oaUserInfo = oaUserInfoDAO.loadOaUserInfoByUserCode(userCode);
			if(null != oaUserInfo){
				String oaUserGuid = oaUserInfo.getAuserGuid();
				if(BeanUtil.isNotBlank(oaUserGuid)){
					rtn = getUserImgByUserGuid(oaUserGuid);
				}
			}
		}
		
		return rtn;
	}
	
	public static String getUserImgByUserGuid(String userGuid) throws IllegalArgumentException, IllegalAccessException{
		String rtn = "http://WWW.XCRAUTO.COM:8080/allwin/AUTO/OA/js/miniui/themes/auto2012/images/noavatar.jpg";
		if(BeanUtil.isNotBlank(userGuid)){
			IOaSysAttachmentDAO oaSysAttachmentDAO = (IOaSysAttachmentDAO)BeanContext.getBean("oaSysAttachmentDAO");
			
			OaSysAttachment oaSysAttachment = new OaSysAttachment();
			oaSysAttachment.setFileBusiGuid(userGuid);
			
			Map<String,Object> param = BeanUtil.convertBeanToMap(oaSysAttachment);
			List<OaSysAttachment> oaSysAttachments = oaSysAttachmentDAO.queryList(param);
			if(!oaSysAttachments.isEmpty()){
				oaSysAttachment = oaSysAttachments.get(0);
				rtn = oaSysAttachment.getFilePath();
				String uploadImgPath = AttachmentUtil.getUploadImgPath();
				if(BeanUtil.isNotBlank(rtn) && rtn.contains(uploadImgPath)){
					String imgPath = AttachmentUtil.getReadImgPath();
					String rr = rtn.substring(rtn.lastIndexOf("/") + 1);
					imgPath += rr;
					rtn = imgPath;
				}
			}
		}
		
		return rtn;
	}
	
	/**
	 * 获取用户组织名称
	 * @param userLabel
	 * @throws IllegalAccessException 
	 * @throws IllegalArgumentException 
	 */
	public static String getUserOrgName(String userCode) throws IllegalArgumentException, IllegalAccessException{
		if(BeanUtil.isNotBlank(userCode)){
			System.out.println("userCode........................."+userCode);
			IOaUserInfoDAO oaUserInfoDAO = (IOaUserInfoDAO)BeanContext.getBean("oaUserInfoDAO");
			OaUserInfo oaUserInfo = oaUserInfoDAO.loadOaUserInfoByUserCode(userCode);
			return oaUserInfo.getAuorgName();
		}
		
		return "";
	}
	
	/**
	 * 获取用户名称
	 * @param userLabel
	 * @throws IllegalAccessException 
	 * @throws IllegalArgumentException 
	 */
	public static String getUserName(String userCode) throws IllegalArgumentException, IllegalAccessException{
		if(BeanUtil.isNotBlank(userCode)){
			System.out.println("userCode........................."+userCode);
			IOaUserInfoDAO oaUserInfoDAO = (IOaUserInfoDAO)BeanContext.getBean("oaUserInfoDAO");
			OaUserInfo oaUserInfo = oaUserInfoDAO.loadOaUserInfoByUserCode(userCode);
			return oaUserInfo.getAuserName();
		}
		
		return "";
	}
	
	public static void main(String[] args) {
		String rtn = "E:/tomcat6/webapps/allwinPic/img/1396492238855.jpg";
		String imgPath = AttachmentUtil.getReadImgPath();
		String uploadImgPath = AttachmentUtil.getUploadImgPath();
		if(rtn.contains(uploadImgPath)){
			String rr = rtn.substring(rtn.lastIndexOf("/") + 1);
			System.out.println("rtn.............................."+rr);
			imgPath += rr;
		}
		System.out.println("imgPath.............................."+imgPath);
	}
	
}
