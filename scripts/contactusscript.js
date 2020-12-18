function checkempty() {

    var fname = document.forms["contactform"]["fname"].value;
    var lname = document.forms["contactform"]["lname"].value;
    var address = document.forms["contactform"]["addr"].value;
    var mobno = document.forms["contactform"]["mobile"].value;
    var email = document.forms["contactform"]["email"].value;

    if (fname == "") {
        alert('First name is mandatory');
        // fname.focus();
    }
    else if (lname == "") {
        alert('Last name is mandatory');
        // lname.focus();
    }
    else if (address== "") {
        alert('Address is mandatory');
        // address.focus();
    }
    else if (mobno== "") {
        // mobno.focus();
        alert('Mobile Number is mandatory');
    }
    else if (email== "") {  
        // email.focus();
        alert('Email is mandatory');
    }
    else
        return false;

    // if(fname == "" || lname == "" || address == "" ||mobno == "" || )
    return true;
}

function checkregex() {
    var fname = document.forms["contactform"]["fname"].value;
    var lname = document.forms["contactform"]["lname"].value;
    var email = document.forms["contactform"]["email"].value;
    var mobno = document.forms["contactform"]["mobile"].value;

    var regex = /^[a-zA-Z\s]+$/;
    var count = (email.match(/.com/g) || []).length;
    var mobnolen = document.contactform.mobile.value.length;

    if (regex.test(fname) === false) {
        alert("First Name should not contain any special character or number");
        // fname.focus();
    }
    else if (regex.test(lname) === false) {
        alert("Last Name should not contain any special character or number");
        // lname.focus();
    }
    else if (!(email.includes("@") && email.includes(".com")) || count != 1) {
        alert("Please enter correct email address");
        // email.focus();
    }
    else if (!(mobnolen >= 10 && mobnolen <= 11) || !(mobno.toString().startsWith("9")
        || mobno.toString().startsWith("8") || mobno.toString().startsWith("7"))) {
        alert("Invalid Mobile number");
        // mobno.focus();
    }
    else
        return false;


    return true;
}

function formvalidate() {

    if (checkempty())
        return false;

    if (checkregex())
        return false;


    return true;
}