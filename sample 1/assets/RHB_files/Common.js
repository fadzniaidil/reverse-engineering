var click = 1;
var control_index = 0;
var control_id = '';
var today = new Date();
var day   = today.getDate();
var month = today.getMonth();
var year  = y2k(today.getYear());
var szValueTableShow = "Page Undefined. Please contact your system administrator.";
var szValueStatus = "<td></td>";
//Added by CWPOON 06/08/2004

// browser sniffer
var bV = parseInt(navigator.appVersion);
var agt = navigator.userAgent.toLowerCase();
var ie = (agt.indexOf("msie") != -1);
var ie4  = (ie && (bV == 4) && (agt.indexOf("msie 5.0") == -1) );
var IE55 = (ie && !(ie4));
NS4 = (document.layers) ? true : false;
ver4 = (NS4 || IE55) ? true : false;
NS6	= ((document.getElementById) && (bV >= 5)) ? true:false;
// browser sniffer ends here
//BEGIN - [OSKAR] - 31/03/2005 - Added for DRIB P3 April Release
var strDownloadPath;
//END - [OSKAR] - 31/03/2005


function encrypt(s){
    //Function to encrypt any string with by
    //     te ranges from 0 To 255
    var es="", ct="", nc;
    //Build ASCII table
    for(c=0;c<=255;c++) ct+=String.fromCharCode(c);

    for(i=0;i<s.length;i++){
    //Convert the ASCII key code of the
    //current char to its hexadecimal equiva
    //     lent
    nc=ct.indexOf(s.charAt(i)).toString(16);
    //If hex string is not 2 chars then add 
    //     a 0 before it
    if(nc.length!=2) nc="0"+nc;
    es+=nc;
	}
	
    return es;
}


function decrypt(e){
//Function to decrypt string encrypted w
//     ith HEX encryption
	var ds="";

    for(i=0;i<e.length;i+=2){
    //Get two chars and then convert them 
    //from hexadecimal to an ASCII char
    ds+=String.fromCharCode(parseInt(e.substring(i,i+2), 16));
	}
	return ds;
}





function y2k(number)    { return (number < 1000) ? number + 1900 : number; }

function padout(number) { return (number < 10) ? '0' + number : number; }

function restart() {
	for (var i=0;i < document.Default.elements.length;i++)
	{
		if (document.Default.elements[i].id == control_id)
		{
			control_index = i;
		}
	}
	document.Default.elements[control_index].value = '' + padout(day) + '-' + padout(month - 0 + 1) + '-' + year;
	mywindow.close();
}

function newWindow(ctl_id)
{
	// modified: Jacky Yong 17 Oct
	// reason: to populate window in the centre of the screen.
	var WindowHeight = 200;
	var WindowWidth = 240;
	var WindowTop = ((screen.availHeight - WindowHeight) / 2);
	var WindowLeft = ((screen.availWidth - WindowWidth) / 2);
	control_id = ctl_id;
	var szFeatures = 'resizable=no,width=' + WindowWidth + ',height=' + WindowHeight + ',top=' + WindowTop + ',left=' + WindowLeft;
	mywindow=open('calendar.aspx', 'myname', szFeatures);
	mywindow.location.href = 'calendar.aspx';
	if (mywindow.opener == null) mywindow.opener = self;
}

/************************************************
Author:		Jacky Yong
Date:		19 Nov 2003
Purpose:	Checks whether a user really wants
			to continue, or perhaps the user
			has pressed the button by accident.
			Note that it also checks for
			clicking twice.
************************************************/
function IsNotConfirm(strConfirmMsg)
{
	if(confirm(strConfirmMsg)) //"Are you sure you want to cancel this instruction?"
	{
		// user want to cancel
		if(isClickedTwice())
			return true; // user clicked twice
		else
			return false;
	}
	else
	{
		return true; // accidently pressed cancel
	}
}

/***************************************************
Author:		Jacky Yong
Purpose:	Used to check whether or not user
			clicked twice
***************************************************/
function isClickedTwice()
{
//	if ( click == 1 ) // clicked once only
//	{
//		click++;
//		return false;
//	}
//	else // clicked twice
//	{
//		alert('Your application is being processed');
//		return true;
//	}
	if ( !isSubmitted ) // clicked once only
	{
		isSubmitted = true;
		return false;
	}
	else // clicked twice or more
	{
		alert('Your application is being processed');
		return true;
	}
}

function isClickedTwiceNoAlert()
{
	if ( !isSubmitted ) // clicked once only
	{
		isSubmitted = true;
		return false;
	}
	else // clicked twice
	{
		return true;
	}
}

function isClicked()
{
	if ( !isSubmitted ) // clicked once only
	{
		return false;
	}
	else // clicked twice or more
	{
		return true;
	}
}

function resetDoubleClick()
{
	isSubmitted = false;
	//alert(isSubmitted);
}

//BEGIN - [TIMOTHY SUMALI] - 17/03/2005 - Added for DRIB P3 April release
/*********************************
Author: Timothy Sumali
Desc  : reset flag if print/save pop window took too long to reset flag
*********************************/
function resetPopFlag()
{
	if(isPopped)
	{
		isPopped = false;
		resetDoubleClick();
	}
}
//END - [TIMOTHY SUMALI] - 17/03/2005 

/*********************************
Author: Tan Chee Keong
Desc  : "Extend" print/save function to accept path
*********************************/
function OpenPrintSaveWindow(strTableName, strStatus)
{
	//BEGIN - [TIMOTHY SUMALI] - 17/03/2005 - Commented off for DRIB P3 April release
	//OpenPrintSaveWindowEx(strTableName, strStatus, "ebPrintSave.aspx");
	//END - [TIMOTHY SUMALI] - 17/03/2005
		
	//BEGIN - [TIMOTHY SUMALI] - 17/03/2005 - Added for DRIB P3 April release
	if(isClickedTwiceNoAlert())	
		return;
		
	OpenPrintSaveWindowEx(strTableName, strStatus, "ebPrintSave.aspx");
	isPopped = true;
	setTimeout('resetPopFlag()', 5000);
	//END - [TIMOTHY SUMALI] - 17/03/2005 
}

function OpenPrintSaveWindowEx(strTableName, strStatus, strPrintSaveURL)
{
    var HeaderFooterHeight = 100;   //13/01/2009 - added by keechuan - height for Header and Footer in ebPrintSave
	//alert("OpenPrintSaveWindow");
	//if(strTableName == undefined)
		//strTableName = "_ctl0_tblMain";
	document.getElementById(strTableName).width = document.getElementById(strTableName).offsetWidth;
	szValueTableShow = document.getElementById(strTableName).innerHTML; // changed to innerHTML to support Netscape
	
	// by Pang : 26/08/2004
	// szValueTableShow = encrypt(szValueTableShow);
	
	//alert(szValueTableShow);
	//if(strStatus != undefined)        //Commented : LihChyun    26/08/2009
	if(strStatus != undefined && document.getElementById(strStatus))    //LihChyun    26/08/2009    -   check whether the control is NULL/undefined or not before getting innerHTML
		szValueStatus = document.getElementById(strStatus).innerHTML; // changed to innerHTML to support Netscape

	var WindowWidth = document.getElementById(strTableName).offsetWidth + 50;
	var WindowHeight = document.getElementById(strTableName).offsetHeight + 130 + HeaderFooterHeight;
	var WindowTop = 0;
	var WindowLeft = 0;
	var IsTallerThanScreen = true;
	var IsWiderThanScreen = true;

	// checks whether the table is taller than the screen
	if((screen.availHeight - WindowHeight) > 0)
	{
		WindowTop = ((screen.availHeight - WindowHeight) / 2);
		IsTallerThanScreen = false;
	}
	else
	{
		WindowHeight = screen.availHeight - 30;
		IsTallerThanScreen = true;
	}
	// checks whether the table is wider than the screen
	if((screen.availWidth - WindowWidth) > 0)
	{
		WindowLeft = ((screen.availWidth - WindowWidth) / 2);
		IsWiderThanScreen = false;
	}
	else
	{
		WindowWidth = screen.availWidth - 30;
		IsWiderThanScreen = true;
	}

	var szFeatures = "";
	//if(IsWiderThanScreen || IsTallerThanScreen) //13/01/2009 - remarked by keechuan - always show scrollbars
		szFeatures = "location=no,menubar=no,scrollbars=yes,resizable=no,status=no,toolbar=no,width=" + WindowWidth + ",height=" + WindowHeight + ",top=" + WindowTop + ",left=" + WindowLeft;
	//else
	//	szFeatures = "location=no,menubar=no,scrollbars=no,resizable=no,status=no,toolbar=no,width=" + WindowWidth + ",height=" + WindowHeight + ",top=" + WindowTop + ",left=" + WindowLeft;

	// creates the popup window
	var childwin = window.open(strPrintSaveURL, "_blank", szFeatures);
	childwin.focus();
}

function OpenPrintSaveWindow2(strTableName, strStatus, strPath)
{
	//alert("OpenPrintSaveWindow");
	//if(strTableName == undefined)
		//strTableName = "_ctl0_tblMain";
	document.getElementById(strTableName).width = document.getElementById(strTableName).offsetWidth;
	szValueTableShow = document.getElementById(strTableName).innerHTML; // changed to innerHTML to support Netscape
	
	szValueTableShow = encrypt(szValueTableShow);
	
	//alert(szValueTableShow);
	if(strStatus != undefined)
		szValueStatus = document.getElementById(strStatus).innerHTML; // changed to innerHTML to support Netscape

	var WindowWidth = document.getElementById(strTableName).offsetWidth + 50;
	var WindowHeight = document.getElementById(strTableName).offsetHeight + 130;
	var WindowTop = 0;
	var WindowLeft = 0;
	var IsTallerThanScreen = true;
	var IsWiderThanScreen = true;

	// checks whether the table is taller than the screen
	if((screen.availHeight - WindowHeight) > 0)
	{
		WindowTop = ((screen.availHeight - WindowHeight) / 2);
		IsTallerThanScreen = false;
	}
	else
	{
		WindowHeight = screen.availHeight - 30;
		IsTallerThanScreen = true;
	}
	// checks whether the table is wider than the screen
	if((screen.availWidth - WindowWidth) > 0)
	{
		WindowLeft = ((screen.availWidth - WindowWidth) / 2);
		IsWiderThanScreen = false;
	}
	else
	{
		WindowWidth = screen.availWidth - 30;
		IsWiderThanScreen = true;
	}

	var szFeatures = "";
	if(IsWiderThanScreen || IsTallerThanScreen)
		szFeatures = "location=no,menubar=no,scrollbars=yes,resizable=no,status=no,toolbar=no,width=" + WindowWidth + ",height=" + WindowHeight + ",top=" + WindowTop + ",left=" + WindowLeft;
	else
		szFeatures = "location=no,menubar=no,scrollbars=no,resizable=no,status=no,toolbar=no,width=" + WindowWidth + ",height=" + WindowHeight + ",top=" + WindowTop + ",left=" + WindowLeft;

	// creates the popup window
	var childwin = window.open(strPath, "_blank", szFeatures);
	childwin.focus();
}

function OpenPrintSaveWindowWithImage(strTableName, strStatus, strPath)
{
	//alert("OpenPrintSaveWindow");
	//if(strTableName == undefined)
		//strTableName = "_ctl0_tblMain";
	document.getElementById(strTableName).width = document.getElementById(strTableName).offsetWidth;
	szValueTableShow = document.getElementById(strTableName).innerHTML; // changed to innerHTML to support Netscape
	var re = new RegExp("../image", "g");
	szValueTableShow = szValueTableShow.replace(re,"image");
	
	
	szValueTableShow = encrypt(szValueTableShow);
	
	if(strStatus != undefined)
	{
		szValueStatus = document.getElementById(strStatus).innerHTML; // changed to innerHTML to support Netscape	
	}

	var WindowWidth = document.getElementById(strTableName).offsetWidth + 50;
	var WindowHeight = document.getElementById(strTableName).offsetHeight + 130;
	var WindowTop = 0;
	var WindowLeft = 0;
	var IsTallerThanScreen = true;
	var IsWiderThanScreen = true;

	// checks whether the table is taller than the screen
	if((screen.availHeight - WindowHeight) > 0)
	{
		WindowTop = ((screen.availHeight - WindowHeight) / 2);
		IsTallerThanScreen = false;
	}
	else
	{
		WindowHeight = screen.availHeight - 30;
		IsTallerThanScreen = true;
	}
	// checks whether the table is wider than the screen
	if((screen.availWidth - WindowWidth) > 0)
	{
		WindowLeft = ((screen.availWidth - WindowWidth) / 2);
		IsWiderThanScreen = false;
	}
	else
	{
		WindowWidth = screen.availWidth - 30;
		IsWiderThanScreen = true;
	}

	var szFeatures = "";
	if(IsWiderThanScreen || IsTallerThanScreen)
		szFeatures = "location=no,menubar=no,scrollbars=yes,resizable=no,status=no,toolbar=no,width=" + WindowWidth + ",height=" + WindowHeight + ",top=" + WindowTop + ",left=" + WindowLeft;
	else
		szFeatures = "location=no,menubar=no,scrollbars=no,resizable=no,status=no,toolbar=no,width=" + WindowWidth + ",height=" + WindowHeight + ",top=" + WindowTop + ",left=" + WindowLeft;

	// creates the popup window
	var childwin = window.open(strPath, "_blank", szFeatures);
	childwin.focus();
}

function onSaveClick()
{ 			
	document.forms[0].method = 'POST';	
 	if (!(IE55) && document.all) 
 	{
 		if( parent.workspace )                                  
 			parent.workspace.document.execCommand('SaveAs',null,'');
 		else                                                        
 			document.execCommand( 'SaveAs',null,'');               
 	} 
 	else if (IE55  && document.all) 
 	{ 
 		document.forms[0].savefile.value = 'true';			
 		document.forms[0].submit();	
 	} 
 	else if (NS4) 
 	{ 
 		document.forms[0].savefile.value = 'true';			
 		document.forms[0].submit();	
 	} 
 	else if (NS6) 
 	{ 
 		document.forms[0].savefile.value = 'true';			
 		document.forms[0].submit();	
 	}
}
		
function onPrintClick()
{
 	if( parent.workspace )                                  
 		parent.frames.workspace.print();	
	else 
 		print();
}

function formatCurrency(num) 
{
	if(num == "")
		return "";
	num = num.toString().replace(/\$|\,/g,'');
	
	//if(isNaN(num)) num = "0"; // modified 23 Aug 2003
	if(isNaN(num)) return "";
	
	/*
		This part is an enhancement. It just truncates the last digits
		after 2 decimal places. Can be removed when necessary.
	*/
	//num = ((Math.floor(num*100))/100).toString();
	var intDotIndex = num.indexOf("."); // position index of the '.'
	if(intDotIndex != -1)
		num = num.substring(0, intDotIndex + 3);

	/*
	  The floor function returns a floating-point value representing the 
	  largest integer that is less than or equal to x.There is no error 
      return.
    */
	cents = Math.floor(( (Math.abs(num)) * 100 + 0.5 )%100);
	if(Number(num) >= 0)
		num = Math.floor( ( Math.floor(num*100+0.5) )/100 ).toString();
	else
		num = (-1 * Math.floor( ( Math.floor(Math.abs(num)*100+0.5) )/100 )).toString();

	if(cents < 10) cents = "0" + cents; 

	//for (var i = 0; i < Math.floor((num.length-(1+i))/3); i++) 
	//{
	//	num = num.substring(0,num.length-(4*i+3))+','+num.substring(num.length-(4*i+3)); 
	//}	
	return ('' + num + '.' + cents); 
}

/*****************************************************************************************
Taken from common.js
Jacky Yong, 17 July 2003
Used to trim string value. Used with IsBlank function. Accepts string value,
returns string value.
*****************************************************************************************/
function Trim(v_strTxt)
{
	var lngLoop, lngPos_Front, lngPos_Back;
	var blnChking_Front, blnChking_Back;
	  
	v_strTxt = v_strTxt.toString();
	  
	lngPos_Front    = -1;
	lngPos_Back     = -1;
	  
	blnChking_Front = true;
	for (lngLoop = 0; lngLoop < v_strTxt.length; lngLoop++)
	{
	  blnChking_Front = (v_strTxt.charAt(lngLoop) == ' ');
	  if (!blnChking_Front)
	  {
	    lngPos_Front  = lngLoop;
	    lngLoop       = v_strTxt.length;
	  }
	}
	if (lngPos_Front < 0) return '';
	  
	blnChking_Back = true;
	for (lngLoop = (v_strTxt.length - 1); lngLoop >= 0; lngLoop--)
	{
	  blnChking_Back  = (v_strTxt.charAt(lngLoop) == ' ');
	  if (!blnChking_Back)
	  {
	    lngPos_Back = lngLoop;
	    lngLoop     = -1;
	  }
	}
	  
	if (lngPos_Back < 0)
	  return '';
	else
	  return v_strTxt.substr(lngPos_Front, lngPos_Back - lngPos_Front + 1);
}

function createRequestObject()
{
	FORM_DATA = new Object();
	// The Object ("Array") where our data will be stored.
	
	separator = ',';
	// The token used to separate data from multi-select inputs
	
	query = '' + this.location;
	// Get the current URL so we can parse out the data.
	// Adding a null-string '' forces an implicit type cast
	// from property to string, for NS2 compatibility.
	
	query = query.substring((query.indexOf('?')) + 1);
	// Keep everything after the question mark '?'.
	
	if (query.length < 1) { return false; }  // Perhaps we got some bad data?
	
	keypairs = new Object();
	numKP = 1;
	// Local vars used to store and keep track of name/value pairs
	// as we parse them back into a usable form.
	
	while (query.indexOf('&') > -1) {
	keypairs[numKP] = query.substring(0,query.indexOf('&'));
	query = query.substring((query.indexOf('&')) + 1);
	numKP++;
	// Split the query string at each '&', storing the left-hand side
	// of the split in a new keypairs[] holder, and chopping the query
	// so that it gets the value of the right-hand string.
	}
	
	keypairs[numKP] = query;
	// Store what's left in the query string as the final keypairs[] data.
	
	for (i in keypairs) {
	keyName = keypairs[i].substring(0,keypairs[i].indexOf('='));
	// Left of '=' is name.
	keyValue = keypairs[i].substring((keypairs[i].indexOf('=')) + 1);
	// Right of '=' is value.
	while (keyValue.indexOf('+') > -1) {
	keyValue = keyValue.substring(0,keyValue.indexOf('+')) + ' ' + keyValue.substring(keyValue.indexOf('+') + 1);
	// Replace each '+' in data string with a space.
	}
	
	keyValue = unescape(keyValue);
	// Unescape non-alphanumerics
	
	if (FORM_DATA[keyName]) {
	FORM_DATA[keyName] = FORM_DATA[keyName] + separator + keyValue;
	// Object already exists, it is probably a multi-select input,
	// and we need to generate a separator-delimited string
	// by appending to what we already have stored.
	} else {
	FORM_DATA[keyName] = keyValue;
	// Normal case: name gets value.
	}
	}
	
	return FORM_DATA;
}

//BEGIN - [OSKAR] - 31/03/2005 - Added for DRIB P3 April Release
function openDownload(strWindowName, strLocation)
{
	var intWidth = 300;//(screen.availWidth - 50);
	var intHeight = 50;//(screen.availHeight - 50);
	var strFeature = "location=no,menubar=no,scrollbars=yes,resizable=yes,status=no,toolbar=no,width=" + intWidth + ",height=" + intHeight + ",top=" + (screen.availHeight-intHeight)/2 + ",left=" + (screen.availWidth-intWidth)/2;
	strDownloadPath = strLocation;
	objDLWindow = window.open("download.html", strWindowName, strFeature);
	
    setTimeout("ResetSubmitAfterDownload()", 1000);
}
//END - [OSKAR] - 31/03/2005

function ResetSubmitAfterDownload()
{
    if(isSubmitted)
    {
        if(objDLWindow.closed)
            isSubmitted = false;
        else
            setTimeout("ResetSubmitAfterDownload()", 1000);
    }
}

//BEGIN - [JOHN KANG] - 06/05/2005 - Added for DRIB P3 July Release
function handleEnter (field, event) 
{
	var keyCode = event.keyCode ? event.keyCode : event.which ? event.which : event.charCode;
	
	if (keyCode == 13) 
	{		
		return false;
	} 
	else
		return true;
} 
//END - [JOHN KANG] - 06/05/2005

//ganck [16-05-2009] [BEGIN] - 
//<param name="strFileName">include file path</param>
function OpenInfoWindow(strFileName)
{
	var intWinWidth = window.screen.availWidth;
	var intWinHeight  = window.screen.availHeight; 
	var intTop = (intWinHeight-400)/2;
	var intLeft = (intWinWidth-800)/2;
	var iii = "location=no,menubar=no,scrollbars=yes,resizable=no,status=no,toolbar=no,width=800,height=400,top="+ intTop +" ,left=" + intLeft;
	var helpWindow = window.open(strFileName,'RHB', iii);
	helpWindow.focus();
}
//ganck [16-05-2009] [END]

//ganck [23-10-2009] [BEGIN]
//To open website in new window with defined size.
//All bars and buttons available
function OpenNewWindow(strFileName, intCustomHeight, intCustomWidth)
{
    var intWinWidth = window.screen.availWidth;
	var intWinHeight  = window.screen.availHeight; 
	var intTop = (intWinHeight-intCustomHeight)/2;
	var intLeft = (intWinWidth-intCustomWidth)/2;
	
	var iii = "location=yes,toolbar=yes,menubar=yes,directories=yes,status=yes,resizable=yes,scrollbars=yes,width=" + intCustomWidth + ",height=" + intCustomHeight + ",top=" + intTop + " ,left=" + intLeft;
	window.open(strFileName,'RHB', iii);
}
//ganck [23-10-2009] [END]

//[Begin] KL pang 27/8/2009
//Open a window with custom width and height
function OpenCustomInfoWindow(strFileName, intCustomHeight, intCustomWidth)
{
	var intWinWidth = window.screen.availWidth;
	var intWinHeight  = window.screen.availHeight; 
	var intTop = (intWinHeight-intCustomHeight)/2;
	var intLeft = (intWinWidth-intCustomWidth)/2;
	
	var iii = "location=no,menubar=no,scrollbars=yes,resizable=no,status=no,toolbar=no,width=" + intCustomWidth + ",height=" + intCustomHeight + ",top="+ intTop +" ,left=" + intLeft;
	var helpWindow = window.open(strFileName,'RHB', iii);
	helpWindow.focus();
}
//ganck [16-05-2009] [END]



function checkEnter(e) //e is event object passed from function invocation
{
    var characterCode;

    if(e && e.which) //if which property of event object is supported (NN4)
    { 
	    e = e
	    characterCode = e.which //character code is contained in NN4's which property
    }
    else
    {							
	    e = event						
	    characterCode = e.keyCode //character code is contained in IE's keyCode property
    }

    if(characterCode == 13) //if generated character code is equal to ascii 13 (if enter key)
    {
        if(ebGetElementByEndWithId("cmdSubmit") != null)
	        ebGetElementByEndWithId("cmdSubmit").focus();
	    if(ebGetElementByEndWithId("cmd_Submit") != null)
	        ebGetElementByEndWithId("cmd_Submit").focus();
        if(ebGetElementByEndWithId("btnSubmit") != null)
	        ebGetElementByEndWithId("btnSubmit").focus();
	    if(ebGetElementByEndWithId("btn_Submit") != null)
	        ebGetElementByEndWithId("btn_Submit").focus();
        if(ebGetElementByEndWithId("cmdOK") != null)
	        ebGetElementByEndWithId("cmdOK").focus();
	    if(ebGetElementByEndWithId("cmd_OK") != null)
	        ebGetElementByEndWithId("cmd_OK").focus();
        if(ebGetElementByEndWithId("btnOK") != null)
	        ebGetElementByEndWithId("btnOK").focus();
	    if(ebGetElementByEndWithId("btn_OK") != null)
	        ebGetElementByEndWithId("btn_OK").focus();
	    if(ebGetElementByEndWithId("cmd_Preview") != null)
	        ebGetElementByEndWithId("cmd_Preview").focus();
	    if(ebGetElementByEndWithId("cmdPreview") != null)
	        ebGetElementByEndWithId("_cmdPreview").focus();
        if(ebGetElementByEndWithId("btnPreview") != null)
            ebGetElementByEndWithId("btnPreview").focus();
        if(ebGetElementByEndWithId("btn_Preview") != null)
            ebGetElementByEndWithId("btn_Preview").focus();
    }
    else
    {
	    return false;
    }
}


function resizeText(multiplier) 
{
    if (document.body.style.fontSize == "") {
    document.body.style.fontSize = "1.0em";
    }
    if (multiplier == "0")
    document.body.style.fontSize = "0.8em";
    if (multiplier == "1")
    document.body.style.fontSize = "1.0em";
    if (multiplier == "2")
    document.body.style.fontSize = "1.2em";

}

var IFrameObj; // our IFrame object
function callToServer() {
  if (!document.createElement) {return true};
  var IFrameDoc;
  var URL = 'RefreshSession.aspx';
  if (!IFrameObj && document.createElement) {
    // create the IFrame and assign a reference to the
    // object to our global variable IFrameObj.
    // this will only happen the first time 
    // callToServer() is called
   try {
      var tempIFrame=document.createElement('iframe');
      tempIFrame.setAttribute('id','RSIFrame');
      tempIFrame.style.border='0px';
      tempIFrame.style.width='0px';
      tempIFrame.style.height='0px';
      IFrameObj = document.body.appendChild(tempIFrame);
      
      if (document.frames) {
        // this is for IE5 Mac, because it will only
        // allow access to the document object
        // of the IFrame if we access it through
        // the document.frames array
        IFrameObj = document.frames['RSIFrame'];
      }
    } catch(exception) {
      // This is for IE5 PC, which does not allow dynamic creation
      // and manipulation of an iframe object. Instead, we'll fake
      // it up by creating our own objects.
      iframeHTML='\<iframe id="RSIFrame" style="';
      iframeHTML+='border:0px;';
      iframeHTML+='width:0px;';
      iframeHTML+='height:0px;';
      iframeHTML+='"><\/iframe>';
      document.body.innerHTML+=iframeHTML;
      IFrameObj = new Object();
      IFrameObj.document = new Object();
      IFrameObj.document.location = new Object();
      IFrameObj.document.location.iframe = document.getElementById('RSIFrame');
      IFrameObj.document.location.replace = function(location) {
        this.iframe.src = location;
      }
    }
  }
  
  if (navigator.userAgent.indexOf('Gecko') !=-1 && !IFrameObj.contentDocument) {
    // we have to give NS6 a fraction of a second
    // to recognize the new IFrame
    setTimeout('callToServer()',10);
    return false;
  }
  
  if (IFrameObj.contentDocument) {
    // For NS6
    IFrameDoc = IFrameObj.contentDocument; 
  } else if (IFrameObj.contentWindow) {
    // For IE5.5 and IE6
    IFrameDoc = IFrameObj.contentWindow.document;
  } else if (IFrameObj.document) {
    // For IE5
    IFrameDoc = IFrameObj.document;
  } else {
    return true;
  }
  
  IFrameDoc.location.replace(URL);
  return false;
}

//[S][Beng Keat][03/11/2016][FPX] - Replace the hardcoded id to endwith id
function ebGetElementByEndWithId(elementId)
{
    return $("[id$='" + elementId + "']")[0];
}
//[E][Beng Keat][03/11/2016][FPX]