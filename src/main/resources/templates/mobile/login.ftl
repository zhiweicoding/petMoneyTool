<#import "common/mobileCss.ftl" as css>
<#import "common/mobileJs.ftl" as js>
<#import "common/mobileCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title>登陆_优宠熊</title>
    <meta name="viewport"
          content="width=device-width,initial-scale=1,user-scalable=0,minimum-scale=1,maximum-scale=1,minimal-ui,viewport-fit=cover">
    <meta name="format-detection" content="telephone=no">
    <meta name="baidu-site-verification" content="b1Yp8ETSz9"/>
    <meta name="keywords" content="买猫在哪里买,金渐层哪里买,宠物猫,布偶猫哪里买,卖猫市场,宠物猫交易网,宠物平台,宠物猫,正规购宠平台,买猫,卖猫,猫市场,宠物猫交易网,优宠熊,宠物平台,天津宠物交易,天津买猫,天津宠物市场,猫,优宠,家庭繁育猫舍">
    <meta name="description"
          content="广州哪里有卖猫的？就到优宠熊正规宠物购买平台，秉承优宠科技一贯的严谨态度，致力于把健康的猫咪送到用户家中，金渐层、银渐层猫、缅因猫多少钱一只？布偶猫哪里买？买猫在哪个平台比较好？就到优宠熊！。">
    <meta name="theme-color" content="#3baa24">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-status-bar-style" content="default">
    <link rel="apple-touch-icon-precomposed"
          href="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/bitbug_favicon.ico">
    <link rel="shortcut icon" href="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/bitbug_favicon.ico"
          type="image/x-icon">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge;chrome=1">
    <meta name="screen-orientation" content="portrait">
    <meta name="x5-orientation" content="portrait">
    <style type="text/css" abt="234"></style>
    <meta name="screen-orientation" content="portrait">
    <meta name="x5-orientation" content="portrait">
    <meta name="theme-color" content="#ffffff">
    <meta name="pathname" content="aweme_mobile_video">
    <link href="${base}/resources/mobileCss/mob-login-style.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="https://cdn.bootcss.com/weui/1.1.2/style/weui.min.css">
    <link rel="stylesheet" href="https://cdn.bootcss.com/jquery-weui/1.2.0/css/jquery-weui.min.css">
    <style type="text/css">
    </style>
</head>
<body ontouchstart>

<section class="aui-flexView">
    <header class="aui-navBar aui-navBar-fixed">
        <a href="javascript:history.go(-1);" class="aui-navBar-item">
            <i class="icon icon-return"></i>
        </a>
        <div class="aui-center">
            <span class="aui-center-title"></span>
        </div>
        <a href="javascript:;" class="aui-navBar-item">
            <i class="icon icon-sys"></i>
        </a>
    </header>
    <section class="aui-scrollView">
        <div class="aui-sign-head">
            <img src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/webhelp/mobile-login-head.jpg" alt="">
        </div>
        <div class="aui-sign-form">
            <form action="">
                <div class="aui-flex">
                    <i class="icon icon-phone"></i>
                    <div class="aui-flex-box">
                        <input style="font-size: 16px;" type="text" id="phone1" autocomplete="off" placeholder="输入手机号码">
                    </div>
                </div>
                <div class="aui-flex">
                    <i class="icon icon-code"></i>
                    <div class="aui-flex-box">
                        <input style="font-size: 16px;" type="text" id="code1" autocomplete="off" placeholder="输入验证码">
                    </div>
                    <div class="aui-code">
                        <input style="font-size: 16px;" id="btnSendCode1" type="button" class="btn btn-default"
                               value="获取验证码"
                               onClick="sendMessage1()"/>
                    </div>
                </div>
                <button class="aui-sign-login"
                        style="background-color: #E02125;font-size: 18px;width: 90%;margin-left: 5%;margin-right: 5%;height: 45px;line-height: 45px;"
                        onClick="binding()" type="button">
                    立即登录
                </button>
                <div class="aui-flex aui-flex-clear">
                    <#--<div class="aui-flex-box">-->
                    <#--<a href="javascript:;">手机注册</a>-->
                    <#--</div>-->
                    <div class="aui-links">
                        <a href="javascript:;" style="font-size: 14px;">如无优宠熊账号，会自动帮您创建账号</a>
                    </div>
                </div>
            </form>

        </div>

    </section>
</section>
<script type="text/javascript" src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script src="http://apps.bdimg.com/libs/fastclick/1.0.0/fastclick.min.js"></script>
<script>
    $(function () {
        FastClick.attach(document.body);
    });
</script>
<script src="https://photo.youchongxiong.com/jquery-weui.min.js"></script>
<script type="text/javascript">
    var phoneReg = /(^1[3|4|5|7|8]\d{9}$)|(^09\d{8}$)/;
    var codeReg = /^[0-9]*$/;
    var count = 60;
    var InterValObj1;
    var curCount1;

    //验证码
    function sendMessage1() {
        curCount1 = count;
        var phone = $.trim($('#phone1').val());
        if (!phoneReg.test(phone)) {
            alert(" 请输入有效的手机号码");
            return false;
        } else {
            $.showLoading('正在发送..');
            $.post('${base}/webMobile/mobileLoginPage/sendSms', {
                phone: phone,
            }, function (data) {
                $.hideLoading()
                if (data.msgCode != 10000) {
                    alert(data.msgBody)
                }
            })
        }

        $("#btnSendCode1").attr("disabled", "true");
        $("#btnSendCode1").val(+curCount1 + "秒再获取");
        InterValObj1 = window.setInterval(SetRemainTime1, 1000);

    }

    function SetRemainTime1() {
        if (curCount1 == 0) {
            window.clearInterval(InterValObj1);
            $("#btnSendCode1").removeAttr("disabled");
            $("#btnSendCode1").val("重新发送");
        } else {
            curCount1--;
            $("#btnSendCode1").val(+curCount1 + "秒再获取");
        }
    }

    //登陆
    function binding() {
        var phone = $('#phone1').val()
        var code = $('#code1').val()
        if (!phoneReg.test(phone)) {
            alert(" 请输入有效的手机号码");
            return false;
        }
        if (code.length < 3 || !codeReg.test(code)) {
            alert(" 请输入有效的验证码");
            return false;
        }

        $.showLoading();
        $.post('${base}/webMobile/mobileLoginPage/checkPassword', {
            phone: phone,
            password: code
        }, function (data) {
            $.hideLoading()
            if (data.msgCode == 10000) {
                window.location.href = '${base}/webMobile/'
            } else {
                alert(data.msgBody)
            }
        })
    }
</script>
<div style="display:none">
    <script type="text/javascript" src="http://s23.cnzz.com/z_stat.php?id=1277406154&web_id=1277406154"></script>
</div>
<script>
    (function () {
        var bp = document.createElement('script');
        var curProtocol = window.location.protocol.split(':')[0];
        if (curProtocol === 'https') {
            bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';
        } else {
            bp.src = 'http://push.zhanzhang.baidu.com/push.js';
        }
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(bp, s);
    })();

    // $(function () {
    //     $('#phone1').focus();
    // })

</script>
<script>
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?17beb155aceef2dd9b74677419a1b70d";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>
</body>
</html>