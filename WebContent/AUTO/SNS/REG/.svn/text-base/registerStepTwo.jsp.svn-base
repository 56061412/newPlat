<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="author" content="Tocersoft" />
		<meta name="keywords"
			content="社交网络，协作平台，私密的社交网络，沟通、协作和分享，修车，社交服务，sns，SNS" />
		<meta name="description"
			content="国内第一个为修车人服务的社交网络平台，为汽修公司、厂家创建免费的、私密的内部社交网络，并与同事进行基于工作的沟通、协作和分享" />
		<meta name="robots" content="all" />
		<title>注册成功-国内第一个为修车人服务的社交网络平台</title>

		<%@include file="../include/autoSNSBaseInclude.jsp" %>
		
		<c:set var="recommendUserInfo" value="${recommendUserInfo}"/>
	</head>
	
	
	<body>
	<form id="loginUserInfo" method="post">
<!--  隐藏表单  开始	-->
		<div style="display: none;">
			<input class="mini-textbox" label="推荐人代码" name="srreUserCode" value="${recommendUserInfo.auserName}"/>
			<input class="mini-textbox" label="推荐人姓名" name="srreUserName" value="${recommendUserInfo.auserCode}"/>
			<input class="mini-textbox" label="注册信息-选择的组织名称" name="srulOrgName" id="srulOrgName" />
		</div>
<!--  隐藏表单  结束	-->
		<div class="head-part">
			<div class="head-main">
				<a class="logo-white fl" href=""></a>
				<a class="help-buttom fr ml10 mt40" href=""></a>
				<a class="login-buttom fr  ml10 mt40" href=""></a>
			</div>
			<div class="cb"></div>
		</div>

		<div class="rs-main pr">
			<div class="rs-second-layout">
				<div class="rs-second"></div>
				<div class="personal-msg">
					<div class="ps-msg-title">
						个人信息
					</div>
					<div class="form-item">
						<div class="fl">
							<span class="item-title-w90">
								<label class="red mr5">	*</label>
								设置密码：
							</span>
							<input name="srulUserPassword" class="mini-password" errorMode="none" required="true" 
								vtype="maxLength:12" onvalidation="onValidation" maxLengthErrorText="密码长度不能超过12个位"/>
						</div>
						<div class="fl ml50">
							<label id="srulUserPassword_error" class="">
							</label>
						</div>
						<div class="cb"></div>
					</div>
					<div class="form-item">
						<div class="fl">
							<span class="item-title-w90">
								<label class="red mr5">	*</label>
								确认密码：
							</span>
							<input name="srulUserPasswordRep" class="mini-password" errorMode="none" required="true" 
								vtype="maxLength:12" onvalidation="onValidation" maxLengthErrorText="密码长度不能超过12位"/>
						</div>
						<div class="fl ml50">
							<label id="srulUserPasswordRep_error" class="">
							</label>
						</div>
					</div>
					<div class="form-item">
						<div class="fl">
							<span class="item-title-w90">
								<label class="red mr5">	*</label>
								真实姓名：
							</span>
							<input name="srulUserName" class="mini-textbox" errorMode="none" required="true" 
								vtype="maxLength:50" onvalidation="onValidation" maxLengthErrorText="真实姓名不能超过50位"/>
						</div>
						<div class="fl ml50">
							<label id="srulUserName_error" class="">
							</label>
						</div>
					</div>
					<div class="form-item">
						<div class="fl">
							<span class="item-title-w90">
								<label class="red mr5">	*</label>
								年龄：
							</span>
							<input name="srulUserAge" class="mini-textbox w400" errorMode="none" required="true" 
								vtype="int" onvalidation="onValidation" maxLengthErrorText="年龄只能是数字"/>
						</div>
						<div class="fl ml50">
							<label id="srulUserName_error" class="">
							</label>
						</div>
					</div>
					<div class="form-item">
						<div class="fl">
							<span class="item-title-w90">
								<label class="red mr5">	*</label>
								身份证号：
							</span>
							<input name="srulUserIdCode" class="mini-textbox" errorMode="none" required="true" 
								vtype="rangeLength:18,18" onvalidation="onValidation" maxLengthErrorText="请输入18位身份证号"/>
						</div>
						<div class="fl ml50">
							<label id="srulUserIdCode_error" class="">
							</label>
						</div>
					</div>

					<div class="form-item">
						<div class="fl">
							<span class="item-title-w90">
								<label class="red mr5">
									*
								</label>生日：
							</span>
							<input name="srulUserBirthday" id="srulUserBirthday" type="text" size="20" 
								onfocus="c.showMoreDay = false;c.show(this);" readonly="readonly" />
						</div>
						<div class="fl ml50">
							<label id="srulUserBirthday_error" class="">
							</label>
						</div>
					</div>
					<div class="form-item">
						<div class="fl">
							<span class="item-title-w90">
								<label class="red mr5">
									*
								</label>性别：
							</span>
<!-- 							<input name="srulUserGender" class="mini-radiobuttonlist" errorMode="none" required="true"  -->
<%-- 				    			textField="osccName" valueField="osccCode" url="${ctx}/sys/queryGenderList.action" /> --%>
				    		<input name="srulUserGender"  type="radio"  value="F"/>女
				    		<input name="srulUserGender"  type="radio"  value="M"/>男
						</div>
						<div class="fl ml50">
							<label id="srulUserGender_error" class="">
							</label>
						</div>
					</div>
					<div class="form-item">
						<div class="fl">
							<span class="item-title-w90">
								<label class="red mr5">	*</label>
								血型：
							</span>
				    		<input name="srulUserBloodType" class="mini-radiobuttonlist" errorMode="none" required="true" 
				    			textField="osccName" valueField="osccCode" url="${ctx}/sys/queryBloodTypeList.action" />
<%-- 				    			${ctx}/rest/oaSysRest/getBloodType --%>
						</div>
						<div class="fl ml50">
							<label id="srulUserBloodType_error" class="">
							</label>
						</div>
					</div>
					<div class="form-item">
						<div class="fl">
							<span class="item-title-w90">
								<label class="red mr5">	*</label>
								QQ号码：
							</span>
							<input name="srulUserQq" class="mini-textbox" errorMode="none" required="true" 
								vtype="int;minLength:5" onvalidation="onValidation" maxLengthErrorText="QQ号码必须是数字，不能少于5位"/>
						</div>
						<div class="fl ml50">
							<label id="srulUserQq_error" class="">
							</label>
						</div>
					</div>
					<div class="form-item">
						<div class="fl">
							<span class="item-title-w90">
								<label class="red mr5">	*</label>
								手机号码：
							</span>
							<input name="srulUserMobile" class="mini-textbox" errorMode="none" required="true" 
								vtype="int;rangeLength:11,11;" onvalidation="onValidation" maxLengthErrorText="手机号码必须是数字，必须11位"/>
						</div>
						<div class="fl ml50">
							<label id="srulUserMobile_error" class="">
							</label>
						</div>
					</div>
					<div class="form-item">
						<div class="fl">
							<span class="item-title-w90">
								<label class="red mr5">	*</label>
								邮箱：
							</span>
							<input name="srulUserMail" class="mini-textbox" errorMode="none" required="true" 
								vtype="email;rangeLength:5,50;" onvalidation="onValidation" maxLengthErrorText="邮箱不能超过50位"/>
						</div>
						<div class="fl ml50">
							<label id="srulUserMail_error" class="">
							</label>
						</div>
					</div>
					<div class="form-item">
						<div class="fl">
							<span class="item-title-w90">
								所在城市：
							</span>
							<span class="lh-span">
								<input id="myRegionCombo" class="mini-combobox" style="width:100px;text-align: center;" 
									textField="auarName" valueField="auarGuid" onvaluechanged="onMyRegionChanged" url="${ctx}/rest/oaOrgRest/getAreaRegion" showNullItem="true" nullItemText="请选择区域"
						         />
						        <input id="myProvinceCombo" class="mini-combobox" style="width:150px;text-align: center;" 
						        	textField="auarName" valueField="auarGuid"  onvaluechanged="onMyProvinceChanged"  showNullItem="true" nullItemText="请选择省份"/>
								<input id="myCityCombo" name="srulUserCity" class="mini-combobox" style="width:100px;text-align: center;" 
									textField="auarName" valueField="auarGuid"  showNullItem="true" nullItemText="请选择城市"/>
						    </span>
						</div>
						<div class="fl ml50">
							<label id="srulUserAddress_error" class="">
							</label>
						</div>
					</div>
					<div class="form-item">
						<div class="fl">
							<span class="item-title-w90">
								邮编：
							</span>
							<input name="srulUserZipcode" class="mini-textbox" errorMode="none" 
								vtype="maxLength:10" onvalidation="onValidation" maxLengthErrorText="邮编不能超过10位"/>
						</div>
						<div class="fl ml50">
							<label id="srulUserZipcode_error" class="">
							</label>
						</div>
					</div>
					<div class="form-item">
						<div class="fl">
							<span class="item-title-w90">
								地址：
							</span>
							<input name="srulUserAddress" class="mini-textbox" errorMode="none" 
								vtype="maxLength:25" onvalidation="onValidation" maxLengthErrorText="地址不能超过25位"/>
						</div>
						<div class="fl ml50">
							<label id="srulUserAddress_error" class="">
							</label>
						</div>
					</div>
					<div class="form-item">
						<div class="fl">
							<span class="item-title-w90">
								毕业院校：
							</span>
							<input name="srulUserGraduateSchool" class="mini-textbox" errorMode="none" 
								vtype="maxLength:50" onvalidation="onValidation" maxLengthErrorText="毕业院校不能超过50位"/>
						</div>
						<div class="fl ml50">
							<label id="srulUserGraduateSchool_error" class="">
							</label>
						</div>
					</div>
					<div class="form-item">
						<div class="fl">
							<span class="item-title-w90">
								工作经历：
							</span>
							<input name="srulUserWorkExperience" class="mini-textbox" errorMode="none" 
								vtype="maxLength:200" onvalidation="onValidation" maxLengthErrorText="工作经历不能超过200位"/>
						</div>
						<div class="fl ml50">
							<label id="srulUserWorkExperience_error" class="">
							</label>
						</div>
					</div>
					<div class="next-div">
						<a href="javascript:void(0)" id="nextPage" class="next-btn fr"></a>
					</div>
					<div class="cb pt30 fb">
						我们重视并尊重您的隐私权。阅读我们的
						<a href="#" class="red fb a-style">在线隐私权政策</a>，了解我们如何保护用户信息。
					</div>
				</div>
				<div class="register-bg"></div>
			</div>


			<div class="rs-third-layout none">
				<div class="rs-third"></div>
				<div class="company-msg">
					<div class="company-msg-title">
						公司信息
					</div>

					<div class="form-item">
						<div class="fl">
							<span class="item-title-w90">
								<label class="red mr5">	*</label>
								公司类型：
							</span>
							<input name="auorgTypeCode" class="mini-radiobuttonlist" errorMode="none" required="true" 
				    			textField="osccName" valueField="osccCode" url="${ctx}/rest/oaSysRest/getOrgType" maxLengthErrorText="请选择公司类型"/>
						</div>
						<div class="fl ml50">
							<label id="orgTypeCode_error" class="">
							</label>
						</div>
					</div>
					
					<div class="form-item">
						<div class="fl">
							<span class="item-title-w90">
								<label class="red mr5">	*</label>
								选择品牌：
							</span>
							<span class="lh-span">
							<input name="auorgBrandCode" class="mini-combobox" textField="osccName" valueField="osccCode" 
    							url="${ctx}/rest/oaSysRest/getOrgBrand" required="true"  showNullItem="true" nullItemText="请选择品牌"/>
							</span>
						</div>
					</div>
					
					<div class="form-item">
						<div class="fl">
							<span class="item-title-w90">
								<label class="red mr5">	*</label>
								所属区域：
							</span>
							<span class="lh-span">
								 <input id="regionCombo" class="mini-combobox" style="width:100px;text-align: center;" textField="auarName" valueField="auarGuid" 
							        onvaluechanged="onRegionChanged" url="${ctx}/rest/oaOrgRest/getAreaRegion" showNullItem="true" nullItemText="请选择区域"
						         />
								<input id="provinceCombo" class="mini-combobox" style="width:150px;text-align: center;" textField="auarName" valueField="auarGuid"  
									onvaluechanged="onProvinceChanged" showNullItem="true" nullItemText="请选择省份"/>
								<input id="cityCombo" name="auorgArea" class="mini-combobox" style="width:100px;text-align: center;" 
									textField="auarName" valueField="auarGuid" onvaluechanged="onCityChanged"  showNullItem="true" nullItemText="请选择城市"/>
							</span>
						</div>
					</div>

					

					<div class="form-item">
						<div class="fl">
							<span class="item-title-w90">
								<label class="red mr5">	*</label>
								选择公司：
							</span>
							<span class="lh-span">
								<input id="orgCombo" name="auorgCode" class="mini-combobox" style="width: 400px;text-align: center;" 
									textField="auorgName" valueField="auorgCode" orgAddressField="auorgAddress"  onvaluechanged="onOrgChanged"  showNullItem="true" nullItemText="请选择公司"/>
							</span>
						</div>
					</div>
					<div class="form-item">
						<div class="fl">
							<span class="item-title-w90">
								<label class="red mr5">	*</label>
								公司编号：
							</span>
							<input type="text" id="orgCode"  name="srulOrgCode" readonly="readonly" class="ui-input-text w400" />
						</div>
					</div>
					<div class="form-item">
						<div class="fl">
							<span class="item-title-w90">
								<label class="red mr5">	*</label>
								公司名称：
							</span>
							<input type="text" id="orgName" name="srulOrgName" readonly="readonly" class="ui-input-text w400" />
						</div>
					</div>
					<div class="form-item">
						<div class="fl">
							<span class="item-title-w90">
								<label class="red mr5">	*</label>
								公司地址：
							</span>
							<input type="text" id="orgAddress" readonly="readonly" class="ui-input-text w400" />
						</div>
					</div>
<!--
					<div class="company-msg-title mt30">
						职能信息
					</div>

					<div class="form-item">
						<div class="fl">
							<span class="item-title-w90">
								工种：
							</span>
							<span class="lh-span">
								<select class="w200 tc">
									<option>-请选择工种-</option>
								</select>
							</span>
						</div>
					</div>

					<div class="form-item">
						<div class="fl">
							<span class="item-title-w90">
								职称：
							</span>
							<span class="lh-span">
								<select class="w200 tc">
									<option>-请选择职称-</option>
								</select>
							</span>
						</div>
					</div>

					<div class="form-item">
						<span class="item-title-w90">擅长维修：</span>
						<span class="lh-span"> <select class="w200 tc">
								<option>
									--请选择--
								</option>
							</select> </span>
					</div>
					<div class="form-item">
						<span class="item-title-w90">擅长项目：</span>
						<span class="lh-span"> <select class="w200 tc">
								<option>
									--请选择--
								</option>
							</select> </span>
					</div>

					<div class="form-item">
						<span class="work-exp">简介：</span>
						<textarea class="ui_textarea w400 h100"></textarea>
					</div>
-->
					<div class="next-div">
						<a href="###" id="regSubmit" class="commit-btn fr" label="提交"></a>
						<a href="javascript:void(0)" id="last-step"
							class="a-style fr mr10 mt10">返回上一步</a>
					</div>
					<div class="cb pt30 fb">
						我们重视并尊重您的隐私权。阅读我们的
						<a href="#" class="red fb a-style">在线隐私权政策</a>，了解我们如何保护用户信息。
					</div>
				</div>
				<div class="register-third-bg"></div>
			</div>


		</div>


		<div class="cb"></div>
		<div class="login-bottom">
			<div class="fl">
				<label>
					Copyright&copy; 2012 修车人 沪ICP备11027288号
				</label>
			</div>
			<div class="fr">
				<ul>
					<li>
						<a href="#">关于修车人</a>
					</li>
					<li>
						<a href="#">知识共享</a>
					</li>
					<li>
						<a href="#">交流协作</a>
					</li>
					<li>
						<a href="#">员工管理</a>
					</li>
					<li>
						<a href="#">工作反馈</a>
					</li>
					<li>
						<a href="#">发布任务</a>
					</li>
					<li>
						<a href="#">联系我们</a>
					</li>
					<li>
						<a href="#">帮助中心</a>
					</li>
				</ul>
			</div>
			<div class="cb"></div>
		</div>
	</form>
	</body>

	<script>
		mini.parse();
		
		var myRegionCombo = mini.get("myRegionCombo");
		var myProvinceCombo = mini.get("myProvinceCombo");
		var myCityCombo = mini.get("myCityCombo");
		//选择大区 联动省份
		function onMyRegionChanged(e) {
			var id = myRegionCombo.getValue();
			if(id.length==0){
				id = "1";
			}
			myProvinceCombo.setValue("");
			
			var url = "${ctx}/rest/oaOrgRest/getAreaProvince/" + id;
			myProvinceCombo.setUrl(url);
			
			myProvinceCombo.select(0);
		}
		
		//选择省份 联动城市
		function onMyProvinceChanged(e) {
			var id = myProvinceCombo.getValue();
			if(id.length==0){
				id = "1";
			}
			myCityCombo.setValue("");
			
			var url = "${ctx}/rest/oaOrgRest/getAreaCity/" + id;
			myCityCombo.setUrl(url);
			
			myCityCombo.select(0);
		}
		
		var regionCombo = mini.get("regionCombo");
		var provinceCombo = mini.get("provinceCombo");
		var cityCombo = mini.get("cityCombo");
		//选择大区 联动省份
		function onRegionChanged(e) {
			var id = regionCombo.getValue();
			if(id.length==0){
				id = "1";
			}
			
			provinceCombo.setValue("");
			
			var url = "${ctx}/rest/oaOrgRest/getAreaProvince/" + id;
			provinceCombo.setUrl(url);
			
			provinceCombo.select(0);
		}
		
		//选择省份 联动城市
		function onProvinceChanged(e) {
			var id = provinceCombo.getValue();
			if(id.length==0){
				id = "1";
			}
			
			cityCombo.setValue("");
			
			var url = "${ctx}/rest/oaOrgRest/getAreaCity/" + id;
			cityCombo.setUrl(url);
			
			cityCombo.select(0);
		}
		
		var orgCombo = mini.get("orgCombo");
		//选择城市 联动公司信息
		function onCityChanged(e) {
			var orgTypeValue = $('input[name=auorgTypeCode]').val();
			var brandValue = $('input[name=auorgBrandCode]').val();
			var cityValue = cityCombo.getValue();
			if(orgTypeValue.length==0){
				orgTypeValue = "1";
			}
			if(brandValue.length==0){
				brandValue = "1";
			}
			if(cityValue.length==0){
				cityValue = "1";
			}
			
			var url = "${ctx}/rest/oaOrgRest/getOrgInfos/" + orgTypeValue + "/"+brandValue+"/"+cityValue;
			
			orgCombo.setUrl(url);
			
			orgCombo.select(0);
		}
		
		//选择公司
		function onOrgChanged(e) {
			var orgCode = orgCombo.getValue();
			$('#orgCode').val(orgCode);
			var orgName = orgCombo.getText();
			$('#orgName').val(orgName);
			$('#srulOrgName').val(orgName);
			
			var url = "${ctx}/rest/oaOrgRest/getOrgInfo/"+orgCode;
			$.ajax({
			    url: url,
			    type: "get",
			    dataType: 'json',
			    cache: false,
			    success: function (json) {
			    	var orgAddress = json.auorgAddress;
			    	$('#orgAddress').val(orgAddress);
			    },
			    error: function (jqXHR, textStatus, errorThrown) {
		            alert("请选择公司");
		            $('#orgCode').val("");
		            $('#orgName').val("");
		            $('#orgAddress').val("");
		       	}
			    
			});
			
		}

		$(document).ready(function() {
			$("#nextPage").click(function(){
				$(".rs-third-layout").removeClass("none");
				$(".rs-second-layout").addClass("none");
				$(window).scrollTop(0);
				
			});
			$("#last-step").click(function(){
				$(".rs-third-layout").addClass("none");
				$(".rs-second-layout").removeClass("none");
				$(window).scrollTop(0);
			});
			
			
			$("input[class*='ui-input-text']").live('focus', function() {
				$(this).addClass("ui-input-text-hover");
			});
			$("input[class*='ui-input-text']").live('blur', function() {
				$(this).removeClass("ui-input-text-hover");
			});
			//提交
			$('#regSubmit').click(function(){
				var form = new mini.Form("#loginUserInfo");
				var data = form.getData();      //获取表单多个控件的数据
				var json = mini.encode(data);   //序列化成JSON数组
				var srulUserBirthday = $('#srulUserBirthday').val();//出生日期
				var srulOrgCode = $('#orgCode').val();//公司代码
				var srulOrgName = $('#orgName').val();//公司名称

				$.ajax({
				    url: "${ctx}/snsRegister/userRegisterStepTwo.action",
				    type: "post",
				    data: { data: json, 
					    	srulUserBirthday: srulUserBirthday, 
					    	srulOrgCode: srulOrgCode, 
					    	srulOrgName: srulOrgName},
				    cache: false,
				    success: function (text) {
				    	if(text){
				    		alert(text);
				    	}		        
				        //CloseWindow("save");
				    	var url = "${ctx}/AUTO/SNS/REG/regSucs.jsp";
						window.location.href=url;
				    },
				    error: function (jqXHR, textStatus, errorThrown) {
			            alert(jqXHR.responseText);
			            //CloseWindow();
			       	}
				    
				});
				
			});
		});
		//表格验证
		function onValidation(e) {
		    updateError(e);
		}
		function updateError(e) {
		    var id = e.sender.name + "_error";
		    var el = document.getElementById(id);
		    if (el) {
			    if(e.errorText.length>1){
			    	$("#"+id).addClass("error-tip red msg-lh");
			        el.innerHTML = e.errorText;
				}else{
					$("#"+id).removeClass("error-tip red msg-lh");
					el.innerHTML = e.errorText;
				}
		    }
		}
	</script>
</html>
