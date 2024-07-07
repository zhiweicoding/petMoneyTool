(function () {
    'use strict';
    var name_regular = /^[0-9a-zA-Z-_ \u4e00-\u9fa5]*$/,    //昵称的正则表达式。
        password_regular = /^(?!(?:\d*$))[A-Za-z0-9]{6,16}$/, //密码的正则表达式。
        SyserrDom = $(".system_error"),                       //获取系统错误的节点。
        MemberType = $("#memberType").val(),                   //获取登录类型。
        Sellerdom = $("#sellertype"),                          //获取商家切换节点
        Userdom = $("#usertype"),                               //获取用户切换节点
        UserName = $("#username"),                              //用户名输入框
        Password = $("#password"),                              //密码输入框
        SubmitBtn = $(".submit_btn"),                         //获取form表单的提交按钮
        Parameter = $("#parameter"),                          //传给后台的type
        My_Form = $('#my_from'),
        PopLoad = $("#pop_load"),
        password_error = $('.password_error'),
        username_error = $('.username_error');
    // SubmitBtn.on("click",function () {
    //     Parameter.val() == 1?window.localStorage.StorageUserType = 1:window.localStorage.StorageUserType = 2
    // });
    // if(window.localStorage.StorageUserType == 2){
    //     Sellerdom.addClass("sign_select");
    //     Sellerdom.removeClass("bor_bottom");
    //     Userdom.addClass("bor_bottom");
    //     Userdom.removeClass("sign_select");
    //     Parameter.val("2");
    // }
    //后台错误的时候选中回传的类型
    if (MemberType == 2) {
        //商家
        Sellerdom.removeClass("bor_bottom");
        Sellerdom.addClass("sign_select");
        Userdom.removeClass("sign_select");
        Userdom.addClass("bor_bottom");
        Parameter.val("2");
    }
    //收藏网站
    $(".collection_web").on("click", function () {
        toDesktop();
    });
    //验证用户名
    UserName.on("blur", function () {
        if (name_regular.test(UserName.val()) && UserName.val().length > 3 && UserName.val().length < 21) {
            UserName.next().children("span").css("display", "none")
        } else if (UserName.val().length < 1) {
            UserName.next().children("span").css("display", "inline-block");
            UserName.next().children("span").text("用户名不能为空！");
            SyserrDom.text("");
        } else if (name_regular.test(UserName.val()) == false) {
            UserName.next().children("span").css("display", "inline-block");
            UserName.next().children("span").text("用户名格式不正确！");
            SyserrDom.text("");
        } else {
            UserName.next().children("span").css("display", "inline-block");
            UserName.next().children("span").text("用户名格式不正确！");
            SyserrDom.text("");
        }
    });
    //验证密码
    Password.blur(function () {
        if (Password.val().length < 1 || password_regular.test(Password.val()) == false) {
            if (Password.val().length < 1) {
                Password.next().children("span").text("密码不能为空！");
                $(".SyserrDom").text("");
            } else {
                Password.next().children("span").text("密码格式不正确！");
                $(".SyserrDom").text("");
            }
            Password.next().children("span").css("display", "block");
        } else {
            Password.next().children("span").css("display", "none")
        }
    });
    //用户切换
    Userdom.on("click", function () {
        if (Userdom.attr("class").indexOf("sign_select") <= -1) {
            Userdom.addClass("sign_select");
            Userdom.removeClass("bor_bottom");
            Sellerdom.addClass("bor_bottom");
            Sellerdom.removeClass("sign_select");
            Parameter.val("1");
        }
    });
    //商家切换
    Sellerdom.on("click", function () {
        if (Sellerdom.attr("class").indexOf("sign_select") <= -1) {
            Sellerdom.addClass("sign_select");
            Sellerdom.removeClass("bor_bottom");
            Userdom.addClass("bor_bottom");
            Userdom.removeClass("sign_select");
            Parameter.val("2");
        }
    });

    //点击注册提交数据
    SubmitBtn.on("click", function () {

        if (!PhoneNumberfun() || !PassWordfun()) {
            return false;
        }

        function PassWordfun() {  //密码的验证
            if (Password.val().length < 1 || password_regular.test(Password.val()) == false) {
                if (Password.val().length < 1) {
                    Password.next().children("span").text("密码不能为空！");
                    $(".SyserrDom").text("");
                } else {
                    Password.next().children("span").text("密码格式不正确！");
                    $(".SyserrDom").text("");
                }
                Password.next().children("span").css("display", "block");
                return false;
            } else {
                Password.next().children("span").css("display", "none")
                return true;
            }
        }

        function PhoneNumberfun() {     //手机号的验证
            if (name_regular.test(UserName.val()) && UserName.val().length > 3 && UserName.val().length < 21) {
                UserName.next().children("span").css("display", "none")
                return true;
            } else if (UserName.val().length < 1) {
                UserName.next().children("span").css("display", "inline-block");
                UserName.next().children("span").text("用户名不能为空！");
                SyserrDom.text("");
                return false;
            } else if (name_regular.test(UserName.val()) == false) {
                UserName.next().children("span").css("display", "inline-block");
                UserName.next().children("span").text("用户名格式不正确！");
                SyserrDom.text("");
                return false;
            } else {
                UserName.next().children("span").css("display", "inline-block");
                UserName.next().children("span").text("用户名格式不正确！");
                SyserrDom.text("");
                return false;
            }
        }

        $.post(base + 'loginPage/checkPassword', {
            nick: UserName.val(),
            password: Password.val()
        }, function (data) {
            if (data.msgCode == 10000) {
                window.location.href = base;
            } else {
                $('#pop_load_error').text(data.msgBody)
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
        })

    });
}());
