<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>暂无签署协议</title>

    <meta name="theme-color" content="#3baa24">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <meta http-equiv="Cache-Control" content="no-transform"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="applicable-device" content="pc,mobile">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no"/>
    <link rel="shortcut icon" href="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/favicon.ico"
          type="image/x-icon"/>
    <link rel="stylesheet" href="https://res.wx.qq.com/open/libs/weui/1.1.2/weui.min.css">
    <link rel="stylesheet" href="${base}/resources/shopCss/jquery-weui.min.css">
    <link rel="stylesheet" href="${base}/resources/shopCss/demos.css"/>
    <style>
        .weui-footer {
            margin: 150px 0 10px;
        }
    </style>
</head>
<body ontouchstart>

<div class="weui-msg">
    <div class="weui-msg__icon-area"><i class="weui-icon-info weui-icon_msg"></i></div>
    <div class="weui-msg__text-area">
        <h2 class="weui-msg__title">暂无签署协议</h2>
        <p class="weui-msg__desc">暂时没有查询到已签署的协议，如有异议可以联系客服查询</p>
    </div>
</div>

<script src="${base}/resources/shopJs/jquery.min.js"></script>
<script src="${base}/resources/shopJs/fastclick.min.js"></script>
<script>
    $(function () {
        FastClick.attach(document.body);
    });
</script>
<script src="${base}/resources/shopJs/jquery-weui.min.js"></script>
<script src="${base}/resources/shopJs/swiper.min.js"></script>
<script type="text/javascript" src="https://res.wx.qq.com/open/js/jweixin-1.3.2.js"></script>
<script>

    var openId = '${openId}'

    $(function () {
        var regSelf = /^[1][3,4,5,6,7,8,9][0-9]{9}$/;
        $.prompt({
            text: "您可以输入签署协议填写的手机号码，绑定查询",
            title: "输入手机号码",
            onOK: function (text) {

                if (!text) {
                    $.toast("请填写手机号码", "cancel");
                } else if (!regSelf.test(text)) {
                    $.toast("手机格式有误", "cancel");
                } else {
                    $.showLoading();

                    setTimeout(function () {
                        $.post('${base}/bind/protect/bindMobile', {
                            openId: openId,
                            phoneNum: text
                        }, function (res) {
                            $.hideLoading();
                            if (res.msgCode == 10000) {
                                window.location.replace('${base}/bind/protect/signPage?openId=' + openId)
                            } else {
                                $.toast("绑定失败", "cancel");
                            }

                        })
                    }, 1000)
                }

            },
            onCancel: function () {
                console.log("取消了");
            },
            input: ''
        });
    })
</script>
</body>
</html>
