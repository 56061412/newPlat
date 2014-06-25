package com.auto.oa.sys.action;

import java.util.List;

import javax.annotation.Resource;

import com.auto.oa.org.domain.OaOrgArea;
import com.auto.oa.org.service.IOaOrgAreaService;
import com.auto.oa.sys.common.SysConstanct;
import com.auto.oa.sys.domain.OaSysConstantCode;
import com.auto.oa.sys.service.IOaSysConstantCodeService;
import com.system.common.BaseAction;
import com.system.common.Page;
import com.system.util.JsonUtil;

public class OaSysConstantCodeAction extends BaseAction {
	@Resource(name="oaSysConstantCodeService")
	private IOaSysConstantCodeService oaSysConstantCodeService;
	
	@Resource(name="oaOrgAreaService")
	private IOaOrgAreaService oaOrgAreaService;

	private static final long serialVersionUID = 4199145709348790888L;
	
	public void queryListOaSysConstantCode() throws Exception {
		String search = getRequest().getParameter("search");
		OaSysConstantCode oaSysConstantCode = JsonUtil.jsonToBean(search, OaSysConstantCode.class);
		
		List<OaSysConstantCode> list = oaSysConstantCodeService.queryListOaSysConstantCode(oaSysConstantCode);
		
		pageTreeWriteOut(list);
	}
	
	public void queryTreeOaSysConstantCode() throws Exception {
		String search = getRequest().getParameter("search");
		OaSysConstantCode oaSysConstantCode = JsonUtil.jsonToBean(search, OaSysConstantCode.class);
		
		List<OaSysConstantCode> list = oaSysConstantCodeService.queryTreeOaSysConstantCode(oaSysConstantCode);
		
		pageTreeWriteOut(list);
	}
	
	public void queryPageListOaSysConstantCode() throws Exception {
		Page page = getPage();
		String search = getRequest().getParameter("search");
		OaSysConstantCode oaSysConstantCode = JsonUtil.jsonToBean(search, OaSysConstantCode.class);
		
		List<OaSysConstantCode> list = oaSysConstantCodeService.queryPageListOaSysConstantCode(oaSysConstantCode, page);
		
		pageListWriteOut(list, page);
	}
	
	public void saveOrUpdateOaSysConstantCode() throws Exception {
		String data = getRequest().getParameter("data");
		
		List<OaSysConstantCode> list = JsonUtil.jsonToList(data, OaSysConstantCode.class);
		for (OaSysConstantCode oaSysConstantCode : list) {
			oaSysConstantCode = getDefaultBean(oaSysConstantCode, getRequest());
			oaSysConstantCodeService.saveOrUpdateOaSysConstantCode(oaSysConstantCode);
		}
	}
	
	public void deleteOaSysConstantCode() throws Exception {
		String osccGuid = getRequest().getParameter("osccGuid");
		String[] osccGuids = osccGuid.split(",");
		for (String guid : osccGuids) {
			oaSysConstantCodeService.deleteOaSysConstantCode(guid);
		}
	}
	
	public void getOaSysConstantCode() throws Exception {
		String osccGuid = getRequest().getParameter("osccGuid");
		
		OaSysConstantCode oaSysConstantCode = oaSysConstantCodeService.getOaSysConstantCode(osccGuid);

		detailResultWriteOut(oaSysConstantCode);
	}
	
	/**
	 * 常量
	 * 是否有效
	 * @throws Exception
	 */
	public void queryIsValidityList() throws Exception {
		OaSysConstantCode oaSysConstantCode = new OaSysConstantCode();
		oaSysConstantCode.setOsccCode(SysConstanct.IS_VALIDITY);
		
		List<OaSysConstantCode> list = oaSysConstantCodeService.queryListChildren(oaSysConstantCode);
		
		pageTreeWriteOut(list);
	}
	
	/**
	 * 常量
	 * 区域
	 * @throws Exception
	 */
	public void queryAreaList() throws Exception {
		OaSysConstantCode oaSysConstantCode = new OaSysConstantCode();
		oaSysConstantCode.setOsccCode(SysConstanct.AREA);
		
		List<OaSysConstantCode> list = oaSysConstantCodeService.queryListChildren(oaSysConstantCode);
		
		pageTreeWriteOut(list);
	}
	
	/**
	 * 常量
	 * 性别
	 * @throws Exception
	 */
	public void queryGenderList() throws Exception {
		OaSysConstantCode oaSysConstantCode = new OaSysConstantCode();
		oaSysConstantCode.setOsccCode(SysConstanct.GENDER);
		
		List<OaSysConstantCode> list = oaSysConstantCodeService.queryListChildren(oaSysConstantCode);
		
		pageTreeWriteOut(list);
	}
	
	/**
	 * 常量
	 * 组织类型
	 * @throws Exception
	 */
	public void queryOrgTypeList() throws Exception {
		OaSysConstantCode oaSysConstantCode = new OaSysConstantCode();
		oaSysConstantCode.setOsccCode(SysConstanct.ORG_TYPE_CODE);
		
		List<OaSysConstantCode> list = oaSysConstantCodeService.queryListChildren(oaSysConstantCode);
		
		pageTreeWriteOut(list);
	}
	
	/**
	 * 常量
	 * 证件类型
	 * @throws Exception
	 */
	public void queryIdCardTypeList() throws Exception {
		OaSysConstantCode oaSysConstantCode = new OaSysConstantCode();
		oaSysConstantCode.setOsccCode(SysConstanct.ID_CARD_TYPE_CODE);
		
		List<OaSysConstantCode> list = oaSysConstantCodeService.queryListChildren(oaSysConstantCode);
		
		pageTreeWriteOut(list);
	}
	
	/**
	 * 常量
	 * 血型
	 * @throws Exception
	 */
	public void queryBloodTypeList() throws Exception {
		OaSysConstantCode oaSysConstantCode = new OaSysConstantCode();
		oaSysConstantCode.setOsccCode(SysConstanct.BLOOD_TYPE_CODE);
		
		List<OaSysConstantCode> list = oaSysConstantCodeService.queryListChildren(oaSysConstantCode);
		
		pageTreeWriteOut(list);
	}
	
	/**
	 * 常量
	 * 品牌
	 * @throws Exception
	 */
	public void queryBrandList() throws Exception {
		OaSysConstantCode oaSysConstantCode = new OaSysConstantCode();
		oaSysConstantCode.setOsccCode(SysConstanct.BRAND);
		
		List<OaSysConstantCode> list = oaSysConstantCodeService.queryListChildren(oaSysConstantCode);
		
		pageTreeWriteOut(list);
	}
	
	/**
	 * 常量
	 * 根据区域主键
	 * 获得子区域列表
	 * @throws Exception
	 */
	public void queryAreaChildrenList() throws Exception {
		String auarParentGuid = getRequest().getParameter("auarParentGuid");
		OaOrgArea oaOrgArea = new OaOrgArea();
		oaOrgArea.setAuarParentGuid(auarParentGuid);
		
		List<OaOrgArea> list = oaOrgAreaService.queryListOaOrgArea(oaOrgArea);
		
		pageTreeWriteOut(list);
	}
	
	/**
	 * 常量
	 * 大区
	 * @throws Exception
	 */
	public void queryRegionList() throws Exception {
		OaOrgArea oaOrgArea = new OaOrgArea();
		oaOrgArea.setAuarTypeCode(SysConstanct.AREA_REGION);
		
		List<OaOrgArea> list = oaOrgAreaService.queryListOaOrgArea(oaOrgArea);
		
		pageTreeWriteOut(list);
	}
	
	/**
	 * 常量
	 * 省份/直辖市
	 * @throws Exception
	 */
	public void queryProvinceList() throws Exception {
		OaOrgArea oaOrgArea = new OaOrgArea();
		oaOrgArea.setAuarTypeCode(SysConstanct.AREA_PROVINCE);
		
		List<OaOrgArea> list = oaOrgAreaService.queryListOaOrgArea(oaOrgArea);
		
		pageTreeWriteOut(list);
	}
	
	/**
	 * 常量
	 * 城市
	 * @throws Exception
	 */
	public void queryCityList() throws Exception {
		OaOrgArea oaOrgArea = new OaOrgArea();
		oaOrgArea.setAuarTypeCode(SysConstanct.AREA_CITY);
		
		List<OaOrgArea> list = oaOrgAreaService.queryListOaOrgArea(oaOrgArea);
		
		pageTreeWriteOut(list);
	}

}
