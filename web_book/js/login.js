//ham kiem tra dang nhap
function ktra_dn() {
    var regExp = /^[A-Za-z][\w$.]+@[\w]+\.\w+$/;
    var email = document.forms["dangnhap"]["email"].value;
    var mk = document.forms["dangnhap"]["pass"].value;
    //  alert(email);
    if (email == null || email == "") {
        alert('Vui lòng nhập đầy đủ thông tin!!!');
        return false;
    }
    else if (mk == null || mk == "") {
        alert('Vui lòng nhập đầy đủ thông tin!!!');
        return false;
    }
    else if (!regExp.test(email)) {
        alert('Email không hợp lệ.Vui lòng nhập lại!!');
        return false;
    }


}

//ham kiem tra dang ky

function ktra_dk() {
    var regExp = /^[A-Za-z][\w$.]+@[\w]+\.\w+$/;
    var hoten = document.forms["formdangky"]["name"].value;
    var phone = document.forms["formdangky"]["phone"].value;
    var email = document.forms["formdangky"]["email"].value;
    var addr = document.forms["formdangky"]["addr"].value;
    var mk1 = document.forms["formdangky"]["pass1"].value;
    var mk2 = document.forms["formdangky"]["pass2"].value;

    if (hoten == "" || phone == "" || email == "" || addr == "" || mk1 == "" || mk2 == "") {
        alert('Vui lòng nhập đầy đủ thông tin!!!');
        return false;

    }

    else if (!regExp.test(email)) {
        alert('Email không hợp lệ.Vui lòng nhập lại!!');
        return false;
    }
    else if (phone.length < 10 || !(/^[0-9]{10}$/.test(phone))) {
        alert('Số điện thoại không đúng!!!');
        return false;
    }
    else if (mk1 != mk2) {
        alert('Mật khẩu không giống nhau!!!');
        return false;
    }

    else if (mk1.length < 8) {
        alert('Mật khẩu quá ngắn!!! Vui lòng nhập mật khẩu hơn 8 kí tự');
        return false;
    }


}