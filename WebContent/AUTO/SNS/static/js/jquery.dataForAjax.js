/*
 * jQuery dataForAjax plug-in 1.0
 *
 * http://www.biuuu.com/
 * http://plugins.jquery.com/project/dataForAjax
 *
 * Copyright (c) 2009 biuuu.com
 *
 * Dual licensed under the MIT and GPL licenses:
 *   http://www.opensource.org/licenses/mit-license.php
 *   http://www.gnu.org/licenses/gpl.html
 */
jQuery.fn.dataForAjax = function(options){
	var message = [];
	var error = [];
	var searchKey = '';
	var key;
	var data = '';
	var status = false;
	var inputchkValue = '';
	var id = "#"+this.get()[0].id;
	var notInEle = [];
	setting = jQuery.extend({
		showMessage:'showmessage',
		message:message,
		inputCheckBox : false,
		notIncludeElement:''
	},options);
	
	//jQuery("#"+setting.showMessage).empty();
	for(key in setting.message){
		//searchKey +=key+',';
		searchKey ='@#';
	}
	var formObj = jQuery(id);
	
	if(setting.notIncludeElement.indexOf("text")<0)
	jQuery('input:text', formObj).each(function(){
		var name = jQuery(this).attr("name");
		var value = jQuery(this).val();
		//alert(((searchKey.indexOf(name)) != -1) && (value == ''));
		if(((searchKey.indexOf(name)) != -1) && (value == '')&& name!=''){
			error.push(setting.message[name]);
			jQuery(this).focus(); 
			status = true;
			//return false;
		}
		if(name!=undefined && name!='' && value!=undefined )
			//data += '&'+name+'='+encodeURIComponent(value); 
			data = dataToNewVal(data,name,value);
	});
	if(setting.notIncludeElement.indexOf("hidden")<0)
	jQuery('input:hidden', formObj).each(function(){	
		var name = jQuery(this).attr("name");
		var value = jQuery(this).val();
		if(data==''||(data.indexOf('&'+name+'=')==-1&&data.indexOf(name+'=')!=0)){
			if(((searchKey.indexOf(name)) != -1) && (value == '')&& name!=''){
				//alert(name);
				error.push(setting.message[name]);
				jQuery(this).focus(); 
				//status = true;
				//return false;		
			}
			if(name!=undefined && name!='' && value!=undefined)
				//data += '&'+name+'='+encodeURIComponent(value); 		
				data = dataToNewVal(data,name,value);
		}		
	});	
	if(setting.notIncludeElement.indexOf("password")<0)
	jQuery('input:password', formObj).each(function(){
		var name = jQuery(this).attr("name");
		var value = jQuery(this).val();
		if(((searchKey.indexOf(name)) != -1) && (value == '')&& name!=''){
			error.push(setting.message[name]);
			jQuery(this).focus(); 
			status = true;
			//return false;
		}
		if(name!=undefined && name!='' && value!=undefined )
			//data += '&'+name+'='+value; 
			data = dataToNewVal(data,name,value);
	});
	if(setting.notIncludeElement.indexOf("textarea")<0)
	jQuery('textarea', formObj).each(function(){
		var name = jQuery(this).attr("name");
		var value = jQuery(this).val();
		//alert(((searchKey.indexOf(name)) != -1) && (value == ''));
		if(((searchKey.indexOf(name)) != -1) && (value == '')&& name!=''){
			error.push(setting.message[name]);
			jQuery(this).focus(); 
			status = true;
			//return false;
		}
		if(name!=undefined && name!='' && value!=undefined )
			//data += '&'+name+'='+encodeURIComponent(value); 
			data = dataToNewVal(data,name,value);
	});	
	if(setting.notIncludeElement.indexOf("radio")<0)
	jQuery('input:radio:checked', formObj).each(function(){
		var name = jQuery(this).attr("name");
		var value = jQuery(this).val();
		if(data==''||(data.indexOf('&'+name+'=')==-1&&data.indexOf(name+'=')!=0)){
			if(((searchKey.indexOf(name)) != -1) && (value == '')&& name!=''){
				error.push(setting.message[name]);
				jQuery(this).focus(); 
				status = true;
				//return false;
			}
			if(name!=undefined && name!='' && value!=undefined )
				//data += '&'+name+'='+encodeURIComponent(value); 
				data = dataToNewVal(data,name,value);
		}
	});
	//alert(notInEle['checkbox']);
	if(setting.notIncludeElement.indexOf("checkbox")<0)
	jQuery('input:checkbox:checked', formObj).each(function(){
		var name = jQuery(this).attr("name");
		var value = jQuery(this).val();
		if(((searchKey.indexOf(name)) != -1) && (value == '')&& name!=''){
			error.push(setting.message[name]);
			jQuery(this).focus(); 
			status = true;
			//return false;
		}
		if(name!=undefined && name!='' && value!=undefined ){
			inputchkValue+='&'+name+'='+value; 
			//data += '&'+name+'='+encodeURIComponent(value); 
			data = dataToNewVal(data,name,value);
		}
	});
	jQuery('select option:selected', formObj).each(function(){
		var name = jQuery(this).parent("select").attr("name");
		var value = jQuery(this).val();
		//if(name=='i-0-ngDept') alert("select====="+value);
		//alert(((searchKey.indexOf(name)) != -1) && (value == ''));
		if(((searchKey.indexOf(name)) != -1) && (value == '')&& name!=''){
			error.push(setting.message[name]);
			jQuery(this).focus(); 
			status = true;
			//return false;
		}
		if(name!=undefined && name!='' && value!=undefined)
			//data += '&'+name+'='+encodeURIComponent(value); 
			data = dataToNewVal(data,name,value);
	});	
	
	
	if(status){
		alert("error!="+error.join(","));
		jQuery("#"+setting.showMessage).html(error.join(","));
		return '';
	}
	if(setting.inputCheckBox==true){
		//alert(inputchkValue);
		return inputchkValue;
	}
	return data;
}
function dataToNewVal(data,name,value){
	//value.replace(new RegExp("&","gm"),encodeURIComponent("&"));
	data += '&'+name+'='+encodeURIComponent(value);
	return data;
}