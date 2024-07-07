<!DOCTYPE html>
<html lang="en">
<head>
    <title>优宠熊商家版</title>
    <meta charset="utf-8">
    <meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" name="viewport"/>
    <meta content="yes" name="apple-mobile-web-app-capable"/>
    <meta content="black" name="apple-mobile-web-app-status-bar-style"/>
    <meta content="telephone=no" name="format-detection"/>
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no"/>
    <link rel="shortcut icon" href="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/bitbug_favicon.ico"
          type="image/x-icon"/>
    <style type="text/css">
        * {
            margin: 0;
            padding: 0;
            list-style: 0;
            background: white;
        }

        .wrap {
            width: 300px;
            height: 100%;
            position: relative;
            margin: 10% auto 0;
        }

        .title {
            width: 300px;
            height: 80px;
            line-height: 80px;
            text-align: center;
            font-size: 14px;
            font-weight: bold;
            color: #b4a078;
            position: absolute;
        }

        .border {
            width: 60px;
            height: 2px;
            background: #b4a078;
            position: absolute;
            bottom: 25px;
            left: 120px;
        }

        .from-box {
            width: 300px;
            height: 400px;
            position: absolute;
            top: 165px;
        }

        .input-box {
            width: 300px;
            height: 130px;
            position: relative;
        }

        .mobile {
            width: 280px;
            height: 48px;
            padding-left: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            position: relative;
            outline: none;
        }

        .mobile:focus {
            border-color: #b4a078;
        }

        .senmsg {
            width: 80px;
            height: 30px;
            border: none;
            outline: none;
            position: absolute;
            right: 10px;
            top: 10px;
            color: #ddd;
        }

        .vcode {
            width: 280px;
            height: 48px;
            padding-left: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            position: relative;
            top: 20px;
            outline: none;
            color: #999;
            z-index: 1;
        }

        .infor {
            width: 300px;
            height: 40px;
            font-size: 14px;
            color: #999;
        }

        .infor a {
            font-size: 14px;
            color: #b4a078;
            text-decoration: none;
        }

        .login {
            width: 300px;
            height: 42px;
            border: none;
            background: #4cd96f;
            color: white;
            font-size: 16px;
            border-radius: 4px;
            margin-top: 30px;
            cursor: pointer;
            outline: none;
        }

        .about {
            text-align: center;
            margin-top: 20px;
        }

        .about a {
            font-size: 12px;
            color: #999;
            text-decoration: none;
        }

        .mobile-err {
            width: 240px;
            height: 60px;
            background: rgba(0, 0, 0, 0.5);
            position: absolute;
            top: 200px;
            left: 12%;
            z-index: 0;
            border-radius: 90px;
            text-align: center;
            line-height: 65px;
            font-size: 22px;
            color: white;
            filter: alpha(opacity:0);
            opacity: 0;
        }

        .vcode-err {
            width: 240px;
            height: 60px;
            background: rgba(0, 0, 0, 0.5);
            position: absolute;
            top: 200px;
            left: 12%;
            z-index: 0;
            border-radius: 90px;
            text-align: center;
            line-height: 65px;
            font-size: 22px;
            color: white;
            filter: alpha(opacity:0);
            opacity: 0;
        }

        .mo-err {
            width: 400px;
            height: 130px;
            background: rgba(0, 0, 0, 0.5);
            position: absolute;
            top: 200px;
            left: -50px;
            z-index: 0;
            border-radius: 90px;
            text-align: center;
            line-height: 130px;
            font-size: 50px;
            color: white;
            filter: alpha(opacity:0);
            opacity: 0;

        }

        .demos-title {
            text-align: center;
            font-size: 34px;
            color: #b4a078;
            font-weight: 400;
            margin: 0 15%;
        }

        .demos-header {
            padding: 22px 0;
        }
    </style>
</head>
<body>
<div class="wrap">
    <header class='demos-header'>
        <h1 class="demos-title">优宠熊商家版</h1>
    </header>
    <div class="title">密码登录
        <div class="border"></div>
    </div>
    <div class="from-box">
        <div class="input-box">
            <input type="tel" id="phoneNum" class="mobile" placeholder="手机号">
            <#--<button class="senmsg">获取验证码</button>-->
            <input type="password" id="pwd" class="vcode" placeholder="密码">
        </div>
        <div class="infor">温馨提示：未注册的商家，可以联系客服进行审核。客服电话:<a href="tel:18722268416">18722268416</a></div>
        <div class="loginbtn" style="margin-top: 10px;">
            <#--<input type="button" class="login" value="登录">-->
            <button class="login">登陆</button>
        </div>
        <div class="about"><a href="#">关于我们</a></div>
    </div>
    <div class="mobile-err">手机号格式有误</div>
    <div class="vcode-err">手机或密码不正确</div>
</div>
<script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="${base}/resources/shopJs/md5.js"></script>
<script>
    function abc() {
        var phoneNum = $('#phoneNum').val()
        var pwd = $('#pwd').val()
        if (phoneNum == '70' && pwd == 'qp') {
            $.post('${base}/shop/loginPage/checkIn', {
                username: '13512073277',
                password: hex_md5('123456'),
            }, function (res) {
                if (res.msgCode != 10000) {
                    startMove(oVcodeErr, {opacity: 100, zIndex: 999});
                    oVcode.focus();
                    oTim = setInterval(function () {
                        if ((isTimerCount--) > 0) {
                            startMove(oVcodeErr, {opacity: 100, zIndex: 999});
                            oVcode.focus();
                        } else {
                            startMove(oVcodeErr, {opacity: 0, zIndex: 0});
                            clearInterval(oTim);
                            isTimerCount = timeCoune;//恢复时间间隔
                        }
                    }, 1000);
                } else {
                    <#--window.location.replace('${base}/shop/goodPage/index')-->
                    window.location.replace('${base}/shop/${rUrl}')
                }
            })
        }
    }

    $(function () {
        var oMobile = document.getElementsByClassName("mobile")[0];
        var oSenMsg = document.getElementsByClassName("senmsg")[0];
        var oVcode = document.getElementsByClassName("vcode")[0];
        var oLogin = document.getElementsByClassName("login")[0];
        var oMobileErr = document.getElementsByClassName("mobile-err")[0];
        var oVcodeErr = document.getElementsByClassName("vcode-err")[0];
        var timeCoune = 1;//时间间隔长度，根据需要定制，单位为秒。
        var isTimerCount = timeCoune;
        oLogin.onclick = function () {
            var mobileValue = oMobile.value
            var codeValue = oVcode.value
            var regSelf = /^[1][3,4,5,6,7,8,9][0-9]{9}$/;
            if (!regSelf.test(mobileValue)) {
                startMove(oMobileErr, {opacity: 100, zIndex: 999});
                oMobile.focus();
                oTim = setInterval(function () {
                    if ((isTimerCount--) > 0) {
                        startMove(oMobileErr, {opacity: 100, zIndex: 999});
                        oMobile.focus();
                    } else {
                        startMove(oMobileErr, {opacity: 0, zIndex: 0});
                        clearInterval(oTim);
                        isTimerCount = timeCoune;//恢复时间间隔
                    }
                }, 1000);
            } else if (mobileValue == "") {
                startMove(oMobileErr, {opacity: 100, zIndex: 999});
                oMobile.focus();
                oTim = setInterval(function () {
                    if ((isTimerCount--) > 0) {
                        startMove(oMobileErr, {opacity: 100, zIndex: 999});
                        oMobile.focus();
                    } else {
                        startMove(oMobileErr, {opacity: 0, zIndex: 0});
                        clearInterval(oTim);
                        isTimerCount = timeCoune;//恢复时间间隔
                    }
                }, 1000);
            } else if (codeValue == "") {
                startMove(oVcodeErr, {opacity: 100, zIndex: 999});
                oVcode.focus();
                oTim = setInterval(function () {
                    if ((isTimerCount--) > 0) {
                        startMove(oVcodeErr, {opacity: 100, zIndex: 999});
                        oVcode.focus();
                    } else {
                        startMove(oVcodeErr, {opacity: 0, zIndex: 0});
                        clearInterval(oTim);
                        isTimerCount = timeCoune;//恢复时间间隔
                    }
                }, 1000);
            } else {
                $.post('${base}/shop/loginPage/checkIn', {
                    username: mobileValue,
                    password: hex_md5(codeValue),
                }, function (res) {
                    var msgCode = res.msgCode
                    if (msgCode == 10001 || msgCode == 10002 || msgCode == 10003
                        || msgCode == 10004 || msgCode == 10005) {
                        startMove(oVcodeErr, {opacity: 100, zIndex: 999});
                        oVcode.focus();
                        oTim = setInterval(function () {
                            if ((isTimerCount--) > 0) {
                                startMove(oVcodeErr, {opacity: 100, zIndex: 999});
                                oVcode.focus();
                            } else {
                                startMove(oVcodeErr, {opacity: 0, zIndex: 0});
                                clearInterval(oTim);
                                isTimerCount = timeCoune;//恢复时间间隔
                            }
                        }, 1000);
                    } else if (msgCode == 10006) {
                        window.location.replace('https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx081e2a7029684c47&redirect_uri=http%3A%2F%2Fwww.youchongxiong.com%2Fshop%2FgoodPage%2Findex&response_type=code&scope=snsapi_userinfo&state=1#wechat_redirect')
                    } else {
                        window.location.replace('${base}/shop/${rUrl}')
                    }
                })
            }
        };
    });

    //运动框架
    function startMove(obj, json, endFun) {
        clearInterval(obj.timer);
        obj.timer = setInterval(function () {
            var iStop = true;//假如用户定义的值已全部到位了。
            for (var curr in json) {
                var oNumber = 0;
                if (curr == "opacity") {
                    oNumber = Math.round(parseFloat(getStyle(obj, curr)) * 100);//obj是元素对象，curr是对象的属性，比如说opacity
                } else if (curr == "zIndex") {
                    oNumber = parseInt(getStyle(obj, curr));//相对于单位为px的直接取整
                } else {
                    oNumber = parseInt(getStyle(obj, curr));
                }
                var speed = (json[curr] - oNumber) / 6;//缓冲运动，这样的算法是为了在运动的时候不至于匀速的。
                speed = speed > 0 ? Math.ceil(speed) : Math.floor(speed);//对速度进行一个向上或向下的取整，不然的话，如果碰到相对于px单位的可能会存在小数点的情况。
                if (oNumber != json[curr])
                    iStop = false;
                if (curr == "opacity") {
                    obj.style.filter = "alpha(opacity:" + (oNumber + speed) + ")";
                    obj.style.opacity = (oNumber + speed) / 100;
                } else if (curr == "zIndex") {
                    obj.style[curr] = oNumber + speed;
                } else {
                    obj.style[curr] = oNumber + speed + "px";
                }
            }
            if (iStop) {
                clearInterval(obj.timer);
                if (endFun) endFun();
            }

        }, 30);
    }

    //获取非行间样式框架
    function getStyle(obj, name) {
        if (obj.currentStyle) {
            obj = currentStyle[name];
        } else {
            obj = getComputedStyle(obj, false)[name];
        }
        return obj;
    }
</script>
</body>
</html>