var TimeoutMS = 240000;	// 4 minutes
var TimeoutMS2 = 60000;	// 1 minute
var TimeoutID = -1;
var TimeoutID2 = -1;
var TimeoutURL = "timeout_payment?page=";
var TimeoutDialogStyleClass = "Timeout_Dialog";
var TimeoutButtonStyleClass = "bluebtn2";
var TimeoutDialog = null;
var TimeoutMask = null;

function Timeout_Start(page)
{
	TimeoutURL = "timeout_payment?page=" + page;
	Timeout_Reset();
}

function Timeout_Reset()
{
	if (TimeoutID >= 0)
		window.clearTimeout(TimeoutID);
	TimeoutID = window.setTimeout(Timeout_Dialog_Open, TimeoutMS);
}

function Timeout_Dialog_Open()
{
	if (TimeoutID2 >= 0)
		window.clearTimeout(TimeoutID2);
	TimeoutID2 = window.setTimeout(Timeout_Confirm, TimeoutMS2);
	if (TimeoutDialog == null)
	{
		TimeoutDialog = document.createElement("div");
		TimeoutDialog.className = TimeoutDialogStyleClass;
		TimeoutDialog.style.cssText = "width:300px;height:150px;margin-left:-150px;margin-top:-75px;left:50%;top:50%;background:#FFFFD1;border:2px ridge #BDBDBD;padding: 30px 10px 30px 10px;text-align:center;vertical-align:middle;opacity:1;position:absolute;z-index:1000;";
		TimeoutDialog.style.display = "none";
		TimeoutDialog.innerHTML = "<p>Sorry, Hong Leong Online services will be automatically terminated after one minute, due to security reason.</p>\n"
			+ "<p>Please press \"Continue\" if you wish to proceed with the payment.</p>\n";
		var e = document.createElement("button");
		e.className = TimeoutButtonStyleClass;
		e.innerHTML = "Continue";
		e.onclick = Timeout_Cancel;
		TimeoutDialog.appendChild(e);
		document.body.appendChild(TimeoutDialog);
	}
	TimeoutDialog.style.display = "block";
	if (TimeoutMask == null)
	{
		TimeoutMask = document.createElement("div");
		TimeoutMask.style.cssText = "width:100%;height:100%;margin-left:0px;margin-top:0px;left:0px;top:0px;background:#000000;border:0px;padding:0px;opacity:0.1;position:absolute;z-index:999;";
		TimeoutMask.style.display = "none";
		document.body.appendChild(TimeoutMask);
	}
	TimeoutMask.style.display = "block";
}

function Timeout_Dialog_Close()
{
	if (TimeoutID2 >= 0)
		window.clearTimeout(TimeoutID2);
	if (TimeoutDialog != null)
		TimeoutDialog.style.display = "none";
	if (TimeoutMask != null)
		TimeoutMask.style.display = "none";
}

function Timeout_Cancel()
{
	Timeout_Dialog_Close();
	// location.reload(true); //removed to stop reloading page on timeout_cancel click. [Bhushan]
    Timeout_Reset();
}

function Timeout_Confirm()
{
	Timeout_Dialog_Close();
	location.href = TimeoutURL;
}
