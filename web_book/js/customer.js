function ktra() {
    var regExp = /^[A-Za-z][\w$.]+@[\w]+\.\w+$/;
    var hoten = document.forms["formkh"]["name"].value;
    var phone = document.forms["formkh"]["phone"].value;
    var addr = document.forms["formkh"]["addr"].value;

    if ( hoten == "" ||phone == "" || addr == "") {
        alert('Vui lòng nhập đầy đủ thông tin giao hàng!!!');
        return false;

    }
    else if (phone.length < 10 || !(/^[0-9]{10}$/.test(phone))) {
        alert('Số điện thoại không đúng!!!');
        return false;
    }
    


}