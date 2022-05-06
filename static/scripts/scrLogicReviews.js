function rev_btn() {
    const pattern_mail = /^[a-zA-Z0-9_.+-]+@[a-z]+.[a-z]{2,3}$/;
    const pattern_phone = /^[+]\d[(]\d{3}[)]\d{3}[-]\d{2}[-]\d{2}$/;

    if ((document.getElementById("review").value == "") && (document.getElementById("mail").value == "") && (document.getElementById("phone").value == "")) {
        alert("Enter the data!");
    } else if (document.getElementById("review").value == "") {
        alert("Enter your review!");
    } else if (document.getElementById("mail").value == "") {
        alert("Enter your mail!-" + document.getElementById("review").value + "-");
    } else if (document.getElementById("phone").value == "") {
        alert("Enter your phone!");
    } else if (!pattern_mail.test(document.getElementById("mail").value)) {
        alert("Email entred not corrected!");
    } else if (!pattern_phone.test(document.getElementById("phone").value)) {
        alert("Phone number entred not corrected!");
    } else {
        document.getElementById("form_user_review").action = "/user_review";
        document.getElementById("form_user_review").method = "post";
    }
}