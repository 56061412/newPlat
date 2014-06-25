package com.junit.test;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.auto.oa.menu.domain.OaMenuInfo;
import com.auto.oa.menu.domain.proxy.OaMenuInfoProxy;
import com.auto.oa.menu.service.IOaMenuInfoService;
import com.auto.oa.sys.domain.OaSysConstantCode;
import com.auto.oa.sys.service.IOaSysConstantCodeService;
import com.auto.sns.post.service.SnsPostInfoService;
import com.auto.sns.task.domain.TaskInfo;
import com.auto.sns.task.service.SnsTaskInfoService;
import com.auto.tools.AutoUtils;
import com.system.common.BaseAction;

public class UserInfoServiceTest {
	static IOaMenuInfoService oaMenuInfoService;
	static IOaSysConstantCodeService oaSysConstantCodeService;
	static SnsPostInfoService snsPostInfoService;
	static SnsTaskInfoService snsTaskInfoService;

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		try {
			ApplicationContext ctx = new ClassPathXmlApplicationContext("cfg/spring/application*.xml");
			oaMenuInfoService = (IOaMenuInfoService)ctx.getBean("oaMenuInfoService");
			oaSysConstantCodeService = (IOaSysConstantCodeService)ctx.getBean("oaSysConstantCodeService");
			snsPostInfoService = (SnsPostInfoService)ctx.getBean("SnsPostInfoService");
			snsTaskInfoService = (SnsTaskInfoService)ctx.getBean("SnsTaskInfoService");
			
		} catch (RuntimeException e) {
			e.printStackTrace();
		}
	}
	
	@Test
	public void saveTaskInfo(){
		TaskInfo taskInfo = new TaskInfo();
		taskInfo.setTaskName("test....");
		taskInfo.setContent("contentTestsetset");
		
		try {
			snsTaskInfoService.saveTaskInfo(taskInfo);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void sendTaskIOSMsg(){
		String taskGuid = "36865ee9-b172-4550-8bdc-cd57e6e0f4b3";
		TaskInfo taskInfo = new TaskInfo();
		taskInfo.setTaskGuid(taskGuid);
		try {
			snsTaskInfoService.pushMsgToIos(taskInfo);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void updateNumber(){
		String postGuid = "1fe359ff-99b5-4ac3-92c4-61f53886f649";
		try {
			snsPostInfoService.updatePostInfoHuifuNum(postGuid);
			
			snsPostInfoService.updatePostInfoZhuanfaNum(postGuid);
			
			snsPostInfoService.updatePostInfoZanNum(postGuid);
			
			snsPostInfoService.updatePostInfoZanNumMinus(postGuid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
	public void saveSysConstant() throws Exception{
		OaSysConstantCode oaSysConstantCode = new OaSysConstantCode();
		oaSysConstantCode.setOsccCode("ABC");
		oaSysConstantCode.setOsccName("菜单名称");
		oaSysConstantCode.setOsccDisplayOrder("9");
		
		System.out.println("saveSysConstant............TEST........................");
		oaSysConstantCodeService.saveOrUpdateOaSysConstantCode(oaSysConstantCode);
		
		OaMenuInfo oaMenuInfo = new OaMenuInfo();
		oaMenuInfo.setApmeParentGuid("ROOT");
		oaMenuInfo.setApmeMenuName("TEST123213");
		oaMenuInfo.setApmeMenuDesc("TEST dESC");
		oaMenuInfo.setApmeMenuUrl("tEST  URL......................");
		oaMenuInfo.setApmeSort("6");
		
		System.out.println("saveMenu............TEST........................");
		oaMenuInfoService.saveOrUpdateOaMenuInfo(oaMenuInfo);
	}
	
	public void saveMenu() throws Exception{
		OaMenuInfo oaMenuInfo = new OaMenuInfo();
		oaMenuInfo.setApmeParentGuid("ROOT");
		oaMenuInfo.setApmeMenuName("TEST123213");
		oaMenuInfo.setApmeMenuDesc("TEST dESC");
		oaMenuInfo.setApmeMenuUrl("tEST  URL......................");
		oaMenuInfo.setApmeSort("6");
//		Date date = new Date();
//		oaMenuInfo.setCreateTime(date);
//		oaMenuInfo.setCreateUser("admin");
//		oaMenuInfo.setUpdateTime(date);
//		oaMenuInfo.setUpdateUser("admin");
//		oaMenuInfo.setRecordVersion(1);
//		oaMenuInfo.setApmeGuid(String.valueOf(date.getTime()));
		
		System.out.println("saveMenu............TEST........................");
		oaMenuInfoService.saveOrUpdateOaMenuInfo(oaMenuInfo);
	}
	
	public void queryMenu(){
		try {
			OaMenuInfo oaMenuInfo = new OaMenuInfo();
			oaMenuInfo.setApmeGuid("ROOT");
			List<OaMenuInfo> oaMenuInfos = oaMenuInfoService.queryListOaMenuInfo(oaMenuInfo);
			
			for (OaMenuInfo oaMenuInfo2 : oaMenuInfos) {
				oaMenuInfo2 = OaMenuInfoProxy.getOaMenuRole(oaMenuInfo2);
			}
			
			new BaseAction().pageTreeWriteOut(oaMenuInfos);
			for (OaMenuInfo oaMenuInfo2 : oaMenuInfos) {
				System.out.println("oaMenuInfo2...getApmeGuid................."+oaMenuInfo2.getApmeGuid());
				System.out.println("oaMenuInfo2...getApmeMenuName................"+oaMenuInfo2.getApmeMenuName());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public void autoUtils(){
		try {
			String userCode = "admin";
			String userName = AutoUtils.getUserName(userCode);
			System.out.println("userName................."+userName);
			
			String orgCode = AutoUtils.getUserOrgCode(userCode);
			System.out.println("orgCode................."+orgCode);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	

}
