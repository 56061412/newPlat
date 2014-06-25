package com.auto.oa.org.rest;

import java.util.List;

import javax.annotation.Resource;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.auto.oa.org.domain.OaOrgArea;
import com.auto.oa.org.domain.OaOrgInfo;
import com.auto.oa.org.service.IOaOrgAreaService;
import com.auto.oa.org.service.IOaOrgInfoService;
import com.auto.oa.sys.common.SysConstanct;
import com.auto.tools.AutoUtils;
import com.system.util.BeanUtil;

@Path("/oaOrgRest")
public class OaOrgRest {
	@Resource(name="oaOrgAreaService")
	private IOaOrgAreaService oaOrgAreaService;
	@Resource(name="oaOrgInfoService")
	private IOaOrgInfoService oaOrgInfoService;
	
	@GET
	@Path("/getAreaRegion")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 获取大区信息
	 * @return
	 */
	public String getAreaRegion(){
		String rtnStr = "";
		try {
			OaOrgArea oaOrgArea = new OaOrgArea();
			oaOrgArea.setAuarTypeCode(SysConstanct.AREA_REGION);
			
			List<OaOrgArea> oaOrgAreas = oaOrgAreaService.queryListOaOrgArea(oaOrgArea);
			
			rtnStr = AutoUtils.pageTreeWriteOut(oaOrgAreas);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return rtnStr;
	}
	
	@GET
	@Path("/getAreaProvince/{auarGuid}")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 获取大区关联的省份信息
	 * @return
	 */
	public String getAreaProvince(@PathParam("auarGuid") String auarGuid){
		String rtnStr = "";
		try {
			if(BeanUtil.isNotBlank(auarGuid)){
				OaOrgArea oaOrgArea = new OaOrgArea();
				oaOrgArea.setAuarParentGuid(auarGuid);
				oaOrgArea.setAuarTypeCode(SysConstanct.AREA_PROVINCE);
				
				List<OaOrgArea> oaOrgAreas = oaOrgAreaService.queryListOaOrgArea(oaOrgArea);
				
				rtnStr = AutoUtils.pageTreeWriteOut(oaOrgAreas);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return rtnStr;
	}
	
	@GET
	@Path("/getAreaCity/{auarGuid}")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 获取省份关联的城市信息
	 * @return
	 */
	public String getAreaCity(@PathParam("auarGuid") String auarGuid){
		String rtnStr = "";
		try {
			if(BeanUtil.isNotBlank(auarGuid)){
				OaOrgArea oaOrgArea = new OaOrgArea();
				oaOrgArea.setAuarParentGuid(auarGuid);
				oaOrgArea.setAuarTypeCode(SysConstanct.AREA_CITY);
				
				List<OaOrgArea> oaOrgAreas = oaOrgAreaService.queryListOaOrgArea(oaOrgArea);
				
				rtnStr = AutoUtils.pageTreeWriteOut(oaOrgAreas);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return rtnStr;
	}
	
	@GET
	@Path("/getOrgInfos/{orgTypeCode}/{brandCode}/{areaGuid}")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 获取公司信息列表
	 * @param orgTypeCode 公司类型
	 * @param brandCode 品牌
	 * @param areaGuid 区域（城市信息的主键）
	 * @return List<OaOrgInfo>
	 */
	public String getOrgInfos(@PathParam("orgTypeCode") String orgTypeCode, @PathParam("brandCode") String brandCode, @PathParam("areaGuid") String areaGuid){
		String rtnStr = "";
		try {
			OaOrgInfo oaOrgInfo = new OaOrgInfo();
			oaOrgInfo.setAuorgArea(areaGuid);
			oaOrgInfo.setAuorgBrandCode(brandCode);
			oaOrgInfo.setAuorgTypeCode(orgTypeCode);
			
			List<OaOrgInfo> oaOrgInfos = oaOrgInfoService.queryListOaOrgInfo(oaOrgInfo);
			
			rtnStr = AutoUtils.pageTreeWriteOut(oaOrgInfos);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return rtnStr;
	}
	
	@GET
	@Path("/getOrgInfo/{orgCode}")
	@Produces(MediaType.APPLICATION_JSON)
	/**
	 * 获取公司信息
	 * @param orgCode 公司代码
	 * @return jsonStr<OaOrgInfo>
	 */
	public String getOrgInfo(@PathParam("orgCode") String orgCode){
		String rtnStr = "";
		try {
			OaOrgInfo oaOrgInfo = new OaOrgInfo();
			oaOrgInfo.setAuorgCode(orgCode);
			
			oaOrgInfo = oaOrgInfoService.getOaOrgInfoByOrgCode(orgCode);
			
			rtnStr = AutoUtils.detailResultWriteOut(oaOrgInfo);
//			System.out.println("rtnStr........................"+rtnStr);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return rtnStr;
	}

}
