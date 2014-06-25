package com.auto.oa.sys.rest;

import java.util.List;

import javax.annotation.Resource;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.auto.oa.sys.common.SysConstanct;
import com.auto.oa.sys.domain.OaSysConstantCode;
import com.auto.oa.sys.service.IOaSysConstantCodeService;
import com.auto.tools.AutoUtils;

@Path("/oaSysRest")
public class OaSysRest {
	@Resource(name="oaSysConstantCodeService")
	private IOaSysConstantCodeService oaSysConstantCodeService;
	
	@GET
	@Path("/getOrgType")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 获取公司类型信息
	 * @return List<OaSysConstantCode>
	 */
	public String getOrgType(){
		String rtnStr = "";
		try {
			OaSysConstantCode oaSysConstantCode = new OaSysConstantCode();
			String osccCode = SysConstanct.ORG_TYPE_CODE;
			oaSysConstantCode.setOsccCode(osccCode);
			List<OaSysConstantCode> oaSysConstantCodes = oaSysConstantCodeService.queryListChildren(oaSysConstantCode);
			
			rtnStr = AutoUtils.pageTreeWriteOut(oaSysConstantCodes);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return rtnStr;
	}
	
	@GET
	@Path("/getOrgBrand")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 获取公司品牌信息
	 * @return
	 */
	public String getOrgBrand(){
		String rtnStr = "";
		try {
			OaSysConstantCode oaSysConstantCode = new OaSysConstantCode();
			String osccCode = SysConstanct.BRAND;
			oaSysConstantCode.setOsccCode(osccCode);
			List<OaSysConstantCode> oaSysConstantCodes = oaSysConstantCodeService.queryListChildren(oaSysConstantCode);
			
			rtnStr = AutoUtils.pageTreeWriteOut(oaSysConstantCodes);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return rtnStr;
	}
	
	@GET
	@Path("/getGender")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 获取性别选择信息
	 * @return
	 */
	public String getGender(){
		String rtnStr = "";
		try {
			OaSysConstantCode oaSysConstantCode = new OaSysConstantCode();
			String osccCode = SysConstanct.GENDER;
			oaSysConstantCode.setOsccCode(osccCode);
			List<OaSysConstantCode> oaSysConstantCodes = oaSysConstantCodeService.queryListChildren(oaSysConstantCode);
			
			rtnStr = AutoUtils.pageTreeWriteOut(oaSysConstantCodes);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return rtnStr;
	}
	
	@GET
	@Path("/getBloodType")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 获取血型选择信息
	 * @return
	 */
	public String getBloodType(){
		String rtnStr = "";
		try {
			OaSysConstantCode oaSysConstantCode = new OaSysConstantCode();
			String osccCode = SysConstanct.BLOOD_TYPE_CODE;
			oaSysConstantCode.setOsccCode(osccCode);
			List<OaSysConstantCode> oaSysConstantCodes = oaSysConstantCodeService.queryListChildren(oaSysConstantCode);
			
			rtnStr = AutoUtils.pageTreeWriteOut(oaSysConstantCodes);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return rtnStr;
	}
	
}
