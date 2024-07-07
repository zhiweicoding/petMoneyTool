(function () {
    var MessageCodeError = $(".register_content .register_box p"),  //获取验证
        IsError = $("#iserror"),                       //获取是否
        ErrorText = $("#pop_load .error"),            //获取错误提示
        PopLoad = $("#pop_load"),                      //获取失败弹窗
        My_Form = $("#my_from"),                       //获取form表单
        Formbtn = $(".submit_btn"),                    //获取form提交的按钮
        Usernameinput = $(".username"),                 //获取用户名输入框
        Passwordinput = $(".password"),                 //获取密码输入框
        Passwordagain = $(".password_again"),          //获取再次输入密码框
        Phonenum = $(".phone_num"),                     //获取手机号
        Messagecode = $(".message_code"),               //获取短信验证码
        Photocode = $(".photo_code input"),             //获取图形验证码的输入框
        Checkboxinput = $(".my_agreement input"),       //获取同意协议框
        MessagecodeBtn = $(".message_code_btn"),        //获取发送验证码的按钮
        MessageCodeAgain = $(".message_code_again"),    //再次发送的按钮
        CountDown = $(".message_code_again em");        //倒计时节点

    var memberType = $("#registeruser_type");           //获取注册的用户类型
    //失去焦点的时候清空用户名、密码里面的空格
    Usernameinput.on("blur", function () {
        Usernameinput.val(Usernameinput.val().replace(/\s+/g, ""));
    });
    Passwordinput.on("blur", function () {
        Passwordinput.val(Passwordinput.val().replace(/\s+/g, ""));
    });
    Passwordagain.on("blur", function () {
        Passwordagain.val(Passwordagain.val().replace(/\s+/g, ""));
    });

    //控制节点的显示显示隐藏
    function domTest(type, dom, txt) {
        if (type == 1) {
            dom.hide()
        } else if (type == 2) {
            dom.text(txt);
            dom.show();
        }
    };
    //判断是否选择协议
    Checkboxinput.on("click", function () {
        if (!Checkboxinput.is(':checked')) {
            Formbtn.css("background", "#696969");
        } else {
            Formbtn.css("background", "#B4A078");
        }
    });
    //错误弹窗
    if (IsError.val().length > 0) {
        ErrorText.text(IsError.val());
        pop_method({
            type: 1,
            title: false,
            closeBtn: 1,
            area: ["440px", "252px"],
            skin: 'layui-layer-nobg',
            shadeClose: false,
            content: PopLoad
        });
    }
    //发送短信验证码
    MessagecodeBtn.on("click", function () {
        MessageCodeError.hide();
        if (!Webphone_Regular.test(Phonenum.val())) {
            domTest(2, Phonenum.next(), "请先输入正确的手机号!");
            return false;
        } else if (Photocode.val().length != 4) {
            domTest(2, Photocode.parent("div").next(), "请先输入正确的验证码!");
            return false;
        } else {
            $.ajax({
                url: base + "loginPage/sendSms",
                type: "post",
                dataType: "json",
                data: {
                    phoneNum: Phonenum.val(),
                    code: Photocode.val()
                }
            }).done(function (datacon) {
                if (datacon.msgCode == 10000) {
                    domTest(1, Phonenum.next());
                    domTest(1, Photocode.parent("div").next());
                    $('#phoneSmsCode').val(datacon.msgBody);
                    MessagecodeBtn.hide();
                    MessageCodeAgain.show();
                    clearInterval(time);
                    var time;
                    time = setInterval(function () {
                        CountDown.text(parseFloat(CountDown.text()) - 1);
                        if (parseFloat(CountDown.text()) < 1) {
                            clearInterval(time);
                            MessagecodeBtn.show();
                            MessageCodeAgain.hide();
                            CountDown.text(60);
                        }
                    }, 1000);
                } else {
                    domTest(1, Phonenum.next());
                    domTest(2, Photocode.parent("div").next(), datacon.msgBody);
                }
            });
        }
    });
    //点击注册提交数据
    Formbtn.on("click", function () {
        MessageCodeError.hide();
        //用户同意协议的验证
        if (!Checkboxinput.is(':checked')) {
            domTest(2, Checkboxinput.parent("div").next(), "请先同意用户协议!");
            return false;
        }

        if (memberType.val() == 1) {
            if (!membernamefun() || !PassWordfun() || !PassWordAgainfun() || !PhoneNumberfun() || !PhotoCodefun() || !PhoneCodefun()) {
                return false;
            }
        } else {
            if (!PhoneNumberfun() || !PhotoCodefun() || !PhoneCodefun() || !PassWordfun()) {
                return false;
            }
        }

        function membernamefun() {//昵称的验证
            if (Usernameinput.val().length < 1) {
                domTest(2, Usernameinput.next(), "用户昵称不能为空!");
                return false;
            } else if (Webname_Regular.test(Usernameinput.val()) && Usernameinput.val().length > 3 && Usernameinput.val().length < 21) {
                domTest(1, Usernameinput.next());
                return true;
            } else {
                domTest(2, Usernameinput.next(), "昵称格式错误，格式为4-20位汉字或字母和数字!");
                return false;
            }
        }

        function PassWordfun() {  //密码的验证
            if (Webpassword_Regular.test(Passwordinput.val())) {
                domTest(1, Passwordinput.next());
                return true;
            } else {
                if (Passwordinput.val().length < 1) {
                    domTest(2, Passwordinput.next(), "密码不能为空!");
                    return false;
                } else {
                    domTest(2, Passwordinput.next(), "密码格式错误，格式为6-16位英文+数字组成!");
                    return false;
                }
            }
        }

        function PassWordAgainfun() {//再次确认密码
            if (Webpassword_Regular.test(Passwordagain.val())) {
                if (Passwordagain.val() === Passwordinput.val()) {
                    domTest(1, Passwordagain.next());
                    return true;
                } else {
                    domTest(2, Passwordagain.next(), "两次密码输入不一样!");
                    return false;
                }
            } else {
                if (Passwordagain.val().length < 1) {
                    domTest(2, Passwordagain.next(), "二次确认密码不能为空!");
                    return false;
                } else {
                    domTest(2, Passwordagain.next(), "密码格式错误，格式为6-16位英文+数字组成!");
                    return false;
                }
            }
        }

        function PhoneNumberfun() {     //手机号的验证
            if (Phonenum.val().length < 1) {
                domTest(2, Phonenum.next(), "手机号不能为空!");
                return false;
            } else if (Webphone_Regular.test(Phonenum.val())) {
                domTest(1, Phonenum.next());
                return true;
            } else {
                domTest(2, Phonenum.next(), "手机号格式不正确!");
                return false;
            }
        }

        function PhotoCodefun() {//图形验证码
            if (Photocode.val().length != 4) {
                domTest(2, Photocode.parent("div").next(), "请先输入正确的图形验证码!");
                return false;
            } else {
                domTest(1, Photocode.parent("div").next());
                return true;
            }
        }

        /**
         * @return {boolean}
         */
        function PhoneCodefun() { //手机验证码
            if (Messagecode.val().length < 4) {
                domTest(2, Messagecode.parent("div").next(), "请先输入正确的手机验证码!");
                return false;
            } else {
                var phoneSmsCode = $('#phoneSmsCode').val()
                if (phoneSmsCode == Messagecode.val()) {
                    return true;
                } else {
                    domTest(2, Messagecode.parent("div").next(), "手机验证码输入有误，请确认!");
                    return false;
                }
            }
        }

        My_Form.ajaxSubmit(function (data) {
            if (data.msgCode == 10000) {
                window.location.href = base;
            } else {
                ErrorText.text(data.msgBody);
                pop_method({
                    type: 1,
                    title: false,
                    closeBtn: 1,
                    area: ["440px", "252px"],
                    skin: 'layui-layer-nobg',
                    shadeClose: false,
                    content: PopLoad
                });
            }
        });
    });
    //手机号只能输入正整数
    keyboards(Phonenum);
    //验证码
    keyboards(Messagecode);
}());




















