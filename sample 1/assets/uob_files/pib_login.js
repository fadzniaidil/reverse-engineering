var AppletOK=false;
	var stat=0;
	var ONCE=false;
	var _sbmDn = false;
 var RN_String;
	var  pubKeyValue ;
	var Mod_siz; 
	var Pub_String;
	var Mod_String;
   	var idMinLength ;
	var idMaxLength ;
	var pwdMinLength ;
   	var pwdMaxLegth ;
   	var clearAction ;
   	var uobApplet = new UOBApplet();   
   	var isCKSAppletEnabled;
	function disableCtrlKeyCombination(e)
        {
        var forbiddenKeys = new Array('a','n','c','v','x','j');
        var key;
        var isCtrl;
        if(window.event)
	        {
	                key = window.event.keyCode;     
	                if(window.event.ctrlKey)
	                        isCtrl = true;
	                else
	                        isCtrl = false;
	        }
	        else
	        {
	                key = e.which;     
	                if(e.ctrlKey)
	                        isCtrl = true;
	                else
	                        isCtrl = false;
	        }
        if(isCtrl)
        {
                for(i=0; i<forbiddenKeys.length; i++)
                {
                        
                        if(forbiddenKeys[i].toLowerCase() == String.fromCharCode(key).toLowerCase())
                        {

                                return false;
                        }
                }
        }
     return true;
	}
	function clickIE4(){
                  if (event.button==2){
                  return false;
                  }
    }
    function clickNS4(e){
                  if (document.layers||document.getElementById&&!document.all){
                                 if (e.which==2||e.which==3){
                                           return false;
                                 }
                         }
    }
    if (document.layers){
                  document.captureEvents(Event.MOUSEDOWN);
                  document.onmousedown=clickNS4;
    }

    else if (document.all&&!document.getElementById){
                  document.onmousedown=clickIE4;
    }
    document.oncontextmenu=new Function("return false;")
	function init() {
		if (!document.getElementById) 
		return false;
		var f = document.getElementById('logon');
		f.setAttribute("autocomplete", "off");
	} 
  	function dostoreRSApublickey()
		{
			//alert("Inside dostoreRSApublickey function");
			//alert("Mod_siz :: "+Mod_siz);
			var errorNum = uobApplet.OBM_SpecifyRSAPublicKey( parseInt (Mod_siz)/8 , Pub_String, Mod_String);
			//alert("errorNum :: "+errorNum);
			if(errorNum != 0){		
			    return false;
			}
			return true;
	  }
     function doEncryptUserLoginMsg()
      {

		  //alert("Inside doEncryptUserLoginMsg function");
      	  uobApplet = new UOBApplet();
      	  dostoreRSApublickey();
		  var C_String = "";    
		  var P_String = "";    
		  var PINString = document.getElementById("PASSWORD1").value;
		  
		 // alert("PINString"+PINString +"::RN_String::"+RN_String);
		  
		  var errorNum = uobApplet.OBM_EncryptPassword(PINString, RN_String);
		 // alert("errorNum::"+errorNum);
		  if (errorNum != 0){
		    return false;
		  }
		  else{
			//  alert("pass 1...");
		  	C_String = uobApplet.OBM_GetEncryptedPassword();
		    P_String = uobApplet.OBM_GetEncodingParameter();
			if (C_String != ""){
			//	alert("Pass 1.1 C_String.toUpperCase()::"+C_String.toUpperCase());
				//document.loginHdForm.NEWPASSWORD.value = C_String.toUpperCase();
				//document.loginHdForm.ENCODINGPARAM.value = P_String.toUpperCase();
				
				document.getElementById("loginHdForm").NEWPASSWORD.value = C_String.toUpperCase();
				document.getElementById("loginHdForm").ENCODINGPARAM.value = P_String.toUpperCase();
		    }
		    else{
		      return false;
		    }
		  }
		  return true;
		}
     
	function doClearNSubmit(){
		if(isCKSAppletEnabled){
			var appletobj=document.applets['TrustFieldExtApp'];
			
			if (!AppletOK ||appletobj==null ) {
				bSuccess = false;
			//	alert(strErrMessage);
				return false;			
			}
		}
		if(isFirstReq){
			isFirstReq=false;
			document.logon1.userName.value = "";
			document.getElementById("userName").className ="form-short";
			document.logon1.PASSWORD1.value = "";
			document.getElementById("PASSWORD1").className ="form-short";
			document.getElementById('genricErrorDiv').style.display = 'none';
			document.logon.action =  clearAction;
			document.logon.submit();
			return false;
		}else{
			return false;
		}
	}		  
  /*function userNameToUpper() {
	  document.login.userName.value = document.login.userName.value.toUpperCase();
	}*/
	
	function userNameToUpper() {
		  if($('#userName').val() != ""){
			  $('#userName').css("text-transform", "uppercase");
		  }
		  else 
			  $('#userName').css("text-transform", "");
		}
	  
	  function loginUpperCase() {
		  if($('#userName').val().length > 0) {
			  $('#userName').val($('#userName').val().toUpperCase());
		  }
	  }

	
  function formValidation(){
  var validated = false;
//	 	// assuming there will be only one form with data-validate=parsley in page scope.
  $('form[data-validate="parsley"]').each(function () {
  	$('#userName').parsley('addConstraint',{'minlength': 6});
	$('#userName').parsley('addConstraint',{'maxlength': 16});
	$('#userName').parsley('addConstraint',{'charonlycheck': 10});
	$('#userName').parsley('addConstraint',{'specialchar': 10});

	$('#PASSWORD1').parsley('addConstraint',{'minlength': 6});
	$('#PASSWORD1').parsley('addConstraint',{'maxlength': 24});
	$('#PASSWORD1').parsley('addConstraint',{'digitcheck': 10});
	$('#PASSWORD1').parsley('addConstraint',{'specialchar': 10});

 

		  if($(this).parsley().validate()) {

			  validated = true;
		  }
		
		
  });
    //return validated;

 		if(_sbmDn == true){
 			return false;
 		}
 		
   		//var userName =document.getElementById("userName").value;
 		var userName = $("#userName").val();
 		var passWord = $("#PASSWORD1").val();
   		userName = userName.replace(/^\s+|\s+$/g, '') ;
   		
		var errArray = new Array(2);
		var i = 0;
		var j=0;
		//elem1 = document.getElementById("userName");
		//elem2 = document.getElementById("PASSWORD1");
		var clearArray = new Array(2);
		var isPassWordValidated = true;
		var isUserNameValidated = true;
		if(isEmpty(userName)){
				isUserNameValidated  = false;
			 }
		if((userName.length < idMinLength)||(userName.length > idMaxLength))  {
				isUserNameValidated  = false;
			 }
		if(!isAlphaNumericPassword(userName)){
				isUserNameValidated  = false;
			 }
		if(isEmpty(passWord)){
				isPassWordValidated  = false;
			 }
		if((passWord.length < pwdMinLength)||(passWord.length > pwdMaxLegth))  {
				isPassWordValidated  = false;
			 }
 		if(!isAlphaNumericPassword(passWord)){
				isPassWordValidated  = false;
			}
			if(isUserNameValidated&&isPassWordValidated){
				clearArray[j] ="userName";
				j = j +1;
				clearArray[j] ="PASSWORD1";
				j = j +1;
			}else{
				if (clearUserID != 'SKIP')
				{
					errArray[i] ="userName";
					i = i +1;
				}
				errArray[i] ="PASSWORD1";
				i = i +1;
			}
		if(i < 1){
				errArray = new Array(0);
			}
			pibJSValidationToDefault(clearArray);
			
			var retVal = pibJSValidation(errArray);
			if(errArray != '' && errArray.length > 0){
				for(var i = 0; i <errArray.length; i++){				
						$("#"+errArray[i]).addClass("parsley-error");
				}
				retVal = false;
			}
			
			if(retVal){
				_sbmDn = true;
			}
			return retVal;
 }
function loginFormSubmit()
{
	document.getElementById('loginIdxSubmitBtn').click();
}
function initApplet() {
	if(isCKSAppletEnabled){
	   try{
	    var appletobj=document.applets['TrustFieldExtApp'];
	    if(appletobj){
		    appletobj.start();	    
		       
			    AppletOK = true;
			    document.getElementById("PASSWORD1").disabled =false;
			    document.getElementById("userName").disabled =false;		   
				document.getElementById("userName").focus();
	    	
	    }else{
			alert(strErrMessage);
		}
	    }catch(err){
	    	alert(strErrMessage);
	    }
    }else{
    	document.getElementById("PASSWORD1").disabled =false;
		document.getElementById("userName").disabled =false;		   
		document.getElementById("userName").focus();
    }
}

function loginFocus() {
    //document.getElementById("PASSWORD1").disabled =false;
	//document.getElementById("userName").disabled =false;
	//document.getElementById("userName").focus();
	//$('.vbox.login').css('overflow','hidden');
}

function AppletEncription() {
	//alert("AppletEncription 2...");
	bSuccess = true;
	if(isCKSAppletEnabled){
//		var appletobj=document.applets['TrustFieldExtApp'];
//		try{
//		if (!AppletOK ||appletobj==null ) {
//			bSuccess = false;
//			return false;
//		}
//		}catch(err){	
//			bSuccess = false;
//			return false;
//		}
	}
	//alert("Pass 3....");
    var isValidData=formValidation();
    //alert("pass isValidData..." + isValidData);
	if (isValidData) {
     	bSuccess = true;
	} else{
		//alert("pass 3..." + document.getElementById("userName")  + " : : " + document.getElementById("userName") );
		//document.getElementById("userName").value = "";
		//document.getElementById("PASSWORD1").value = "";
		if (clearUserID != 'SKIP')
		{
			$("#userName").val('');
		}
 		$("#PASSWORD1").val('');
		//alert("user name: " + document.getElementById("PASSWORD1").value + " : password : " +  document.getElementById("PASSWORD1").value);  
		bSuccess = false;
		return false;
	}
	
	
	if (bSuccess && bCheckOnce(false)) {
		//alert("alert 5::");
		
		var EPIN1="";
		if(isCKSAppletEnabled){
			
			EPIN1 = IASEAuth.encryptPin(RN_String, document.getElementById("PASSWORD1").value);
			
		}
		document.getElementById("PASSWORD").value = EPIN1;
		
		
  	    doEncryptUserLoginMsg();  	    
  	  //alert("alert 5.1::");
  	  	//login.PASSWORD1.value=login.PASSWORD1.value.replace(/./g,' ');
		document.getElementById("loginForm").PASSWORD1.value=document.getElementById("loginForm").PASSWORD1.value.replace(/./g,' ');
  	  	//loginHdForm.userName.value = login.userName.value;
		document.getElementById("loginHdForm").userName.value = document.getElementById("loginForm").userName.value;
  	  //alert("alert 6:login.PASSWORD1.value: " + loginHdForm.newPIBPassword.value  +  " :loginHdForm.userName.value : " + loginHdForm.userName.value);
		SetOnce();
		//document.loginHdForm.submit();
		//loginHdForm.hiddenButton.click();
		document.getElementById("loginHdForm").hiddenButton.click();
		return false;
		//return true;
	}
}
function bCheckOnce(Set) {
	var ret;
	if (ONCE) {
		ret = false;
	}  
	else {
		ret = true;    
     }
	if (Set) {
		ONCE = true;
	}
	return ret;
}
function SetOnce() {
	ONCE = true;
	return;
}
function doClear(){ 
	//alert("doclear");
	 document.token.tokendatafield.value = "";
	 document.token.tokendatafield.focus();
}

function changePic(elem){

	if (elem.checked){
		document.logterm.proceed.disabled=false;
		document.logterm.proceed.className='button-alignR btnProceed';
	}else{
		document.logterm.proceed.disabled=true;
		document.logterm.proceed.className='button-alignR btnProceed_disabled';
	}
}

function validateOnSubmit(){


	if (!document.logterm.check.checked){
		return false;
	} else {
		return true;
	}
	
}

function changeCursor(){
	if (document.logterm.check.checked){
		document.getElementById("spanPicture").style.cursor = "hand";
	}else{
		document.getElementById("spanPicture").style.cursor = "default";
	}
}
/*function e2eValidateSubmit (validateFlag,e2eFlag,actionUrl){
	alert("Inside e2eValidateSubmit !!!");
	alert("validateFlag :: "+validateFlag);
	alert("actionUrl :: "+actionUrl);
	if(validateFlag)
	{
		e2esubmit(e2eFlag,actionUrl);
	} else {
		return false;
	}
} 
		
function e2esubmit(e2eFlag,actionUrl){
	alert("Inside e2eSubmit !!!");
	//document.getElementById("keyId").value=keyId;
	//alert(document.forms[0]);
	//alert(document.getElementById("keyId").value);
	document.forms[0].action=actionUrl;	
	document.forms[0].submit();
}*/

function validateCustName() {

	bSuccess = true;

    var isValidData = formValidationCustName();

	if (isValidData) {
     	bSuccess = true;
     	return true;
	} else {
		$("#userName").val('');
		bSuccess = false;
		return false;
	}

}

function formValidationCustName(){
  var validated = false;

  $('form[data-validate="parsley"]').each(function () {
  	$('#userName').parsley('addConstraint',{'minlength': 8});
	$('#userName').parsley('addConstraint',{'maxlength': 16});
	$('#userName').parsley('addConstraint',{'charonlycheck': 10});
	$('#userName').parsley('addConstraint',{'specialchar': 10});

		  if($(this).parsley().validate()) {

			  validated = true;
		  }

  });


 		if(_sbmDn == true){
 			return false;
 		}

 		var userName = $("#userName").val();

   		userName = userName.replace(/^\s+|\s+$/g, '') ;

		var errArray = new Array(1);
		var i = 0;
		var j=0;

		var clearArray = new Array(1);
		var isUserNameValidated = true;
		if(isEmpty(userName)){
				isUserNameValidated  = false;
			 }
		if((userName.length < idMinLength)||(userName.length > idMaxLength))  {
				isUserNameValidated  = false;
			 }
		if(!isAlphaNumericPassword(userName)){
				isUserNameValidated  = false;
			 }
			if(isUserNameValidated){
				clearArray[j] ="userName";
				j = j +1;
			}else{
				errArray[i] ="userName";
				i = i +1;
			}
		if(i < 1){
				errArray = new Array(0);
			}

			pibJSValidationToDefault(clearArray);

			var retVal = pibJSValidation(errArray);

			if(errArray != '' && errArray.length > 0){
				for(var i = 0; i <errArray.length; i++){				
						$("#"+errArray[i]).addClass("parsley-error");
				}
				retVal = false;
			}

			if(retVal){
				_sbmDn = true;
			}
			return retVal;
}

function optionSelect(obj) 
{
	if(obj.id=='checkYes') 
	{
		$('#pwd-sec').removeClass('hidden');
		$('#rem-sec').removeClass('hidden');
		$('#log-sec').removeClass('hidden');
		$('#reg-now').removeClass('hidden');
  	}else {
		$('#noSecWord')[0].click();
  	}
}
