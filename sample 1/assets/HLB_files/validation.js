if (window.addEventListener) {
    window.addEventListener("keydown", disableRefreshButtons, false);
    window.addEventListener("contextmenu", function (e) {e.preventDefault(); return false}, false);
} else if (window.attachEvent) {
    window.attachEvent("keydown", disableRefreshButtons, false);
    window.attachEvent("contextmenu", function (e) {e.preventDefault(); return false}, false);
} else {
    window.onkeydown = disableRefreshButtons;
    window.oncontextmenu = function (e) {e.preventDefault(); return false};
}

function disableRefreshButtons(e) {
    if (!e) e = window.event;
    // console.log("keyCode:" + e.keyCode + "; key:" + e.key);
    if (e.key === 'F5' || (e.which || e.keyCode) === 116 || e.charCode === 116
        || e.key === 'F6' || (e.which || e.keyCode) === 117 || e.charCode === 117
        || e.key === 'F4' || (e.which || e.keyCode) === 115 || e.charCode === 115
        || (e.ctrlKey && (e.key === 'F5' || (e.which || e.keyCode) === 116 || e.charCode === 116))
        || e.key === 'ContextMenu' || (e.which || e.keyCode) === 93 || e.charCode === 93
        || e.ctrlKey
        // || e.altKey
        || (e.ctrlKey && (e.key === 'r' || e.key === 'R' || (e.which || e.keyCode) === 82 || e.charCode === 82))
        || e.key === 'F12' || (e.which || e.keyCode) === 123 || e.charCode === 123
    ) {
        e.preventDefault();
        e.stopPropagation();
        return false;
    }
    return true;
}
if (!String.prototype.startsWith) {
    Object.defineProperty(String.prototype, 'startsWith', {
        value: function(search, pos) {
            return this.substring(!pos || pos < 0 ? 0 : +pos, search.length) === search;
        }
    });
}
if (!String.prototype.endsWith) {
    String.prototype.endsWith = function(search, this_len) {
        if (this_len === undefined || this_len > this.length) {
            this_len = this.length;
        }
        return this.substring(this_len - search.length, this_len) === search;
    };
}
(function () {
    var cookies = document.cookie.split("; ");
    for (var c = 0; c < cookies.length; c++) {
        var ck = cookies[c];
        if(ck !== null && typeof ck != 'undefined' && (ck.startsWith("reloaded") || ck.startsWith("confirm")
            || ck.startsWith("selacc") || ck.startsWith("back_confirm"))) {
            var d = window.location.hostname.split(".");
            while (d.length > 0) {
                var cookieBase = encodeURIComponent(ck.split(";")[0].split("=")[0]) + '=; expires=Thu, 01-Jan-1970' +
                    ' 00:00:01 GMT; domain=' + d.join('.') + ' ;max-age=0';
                var p = location.pathname.split('/');
                document.cookie = cookieBase + '/';
                while (p.length > 0) {
                    document.cookie = cookieBase + p.join('/');
                    p.pop();
                }
                d.shift();
            }
        }
    }
})();
var timeoutMyOswego;
function doSubmitLogin(btnSubmit, btnReset) {

    //btnSubmit.value = "Please wait";
    btnSubmit.disabled = "true";
    btnReset.disabled = "true";
    return true;
}

function doSubmit(btnSubmit, btnBack) {

    //btnSubmit.value = "Please wait";
    btnSubmit.disabled = "true";
    btnBack.disabled = "true";
    return true;
}

function doSubmit2(btnSubmit, btnCancel) {

    //btnSubmit.value = "Please wait";
    btnSubmit.disabled = "true";
    btnCancel.disabled = "true";
    return true;
}

function chkNumeric(strString) {
    //check for valid numeric strings
    var strValidChars = "0123456789.";
    var strChar;
    var blnResult = true;

    //test strString consists of valid characters listed above
    for (j = 0; j < strString.length && blnResult == true; j++) {
        strChar = strString.charAt(j);
        if (strValidChars.indexOf(strChar) == -1) {
            blnResult = false;
        }
    }
    return blnResult;
}


function rightClickOnClick() {
    //removing coz Some of the pages haven't included jquery libraries[Bhushan].
/*    $(document).bind('contextmenu', function (e) {
        e.preventDefault();
        // jAlert('Thank you for using Hong Leong Online !', 'Alert Dialog');
        return false;
    });*/
    return false;
}

function format(num) {
    num = num.toString().replace(/\,/g, '');

    if (isNaN(num))
        num = "0";

    if (num > 0) {
        sign = (num == (num = Math.abs(num)));
        num = Math.floor(num * 100 + 0.50000000001);
        cents = num % 100;
        num = Math.floor(num / 100).toString();
        if (cents < 10)
            cents = "0" + cents;
        for (var i = 0; i < Math.floor((num.length - (1 + i)) / 3); i++)
            num = num.substring(0, num.length - (4 * i + 3)) + num.substring(num.length - (4 * i + 3));
        return (((sign) ? '' : '-') + num + '.' + cents);
    }
    else
        return num = "0.00";
}


