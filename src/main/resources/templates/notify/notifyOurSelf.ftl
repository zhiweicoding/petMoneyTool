<!DOCTYPE html>
<html>
<head>
    <title>随机支付1.2-3元</title>
    <meta charset="utf-8">
    <meta name="theme-color" content="#3baa24">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <meta http-equiv="Cache-Control" content="no-transform"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="applicable-device" content="pc,mobile">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no"/>
    <link rel="shortcut icon" href="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/bitbug_favicon.ico"
          type="image/x-icon"/>
    <link rel="stylesheet" href="${base}/resources/activityCss/style.css">
    <link rel="stylesheet" href="https://cdn.bootcss.com/weui/1.1.2/style/weui.min.css">
    <link rel="stylesheet" href="https://cdn.bootcss.com/jquery-weui/1.2.0/css/jquery-weui.min.css">
</head>

<body ontouchstart>
<div class="weui-msg">
    <div class="weui-msg__icon-area"><i class="weui-icon-success weui-icon_msg"></i></div>
    <div class="weui-msg__text-area">
        <h2 class="weui-msg__title">随机支付1.2-3元</h2>
        <p class="weui-msg__desc">咱们坚持30天，为了开通微信转账，每个人都转一下</p>
    </div>
    <div class="weui-msg__opr-area">
        <p class="weui-btn-area">
            <button id="copyBtn"
                    class="weui-btn weui-btn_primary" onclick="pay()">立即支付
            </button>
        </p>
    </div>
    <div class="weui-msg__extra-area">
        <div class="weui-footer">
            <p class="weui-footer__links">
                <a href="http://www.youchongxiong.com" class="weui-footer__link">优宠熊</a>
            </p>
            <p class="weui-footer__text">Copyright © 2021 youchongxiong.com</p>
        </div>


    </div>

</div>

<script src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/expansion/jquery.min.js"></script>
<script type="text/javascript"
        src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/expansion/jquery-weui.min.js"></script>
<script src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/expansion/fastclick.min.js"></script>
<script>
    $(function () {
        FastClick.attach(document.body);

    });
</script>
<script type="text/javascript">
    function onBridgeReady(appid, timeStamp, nonceStr, packageStr, signType, paySign) {
        // alert(appid + "," + timeStamp + "," + nonceStr + "," + packageStr + "," + signType + "," + paySign);
        WeixinJSBridge.invoke(
            'getBrandWCPayRequest', {
                "appId": appid,
                "timeStamp": timeStamp,
                "nonceStr": nonceStr,
                "package": packageStr,
                "signType": signType,
                "paySign": paySign
            },
            function (res) {
                if (res.err_msg == "get_brand_wcpay_request:ok") {
                    $.toast("支付成功", "success");
                } else if (res.err_msg == 'get_brand_wcpay_request:fail') {
                    $.toast("支付失败", "cancel", function (toast) {
                        console.log(toast);
                    });
                } else if (res.err_msg == 'get_brand_wcpay_request:cancel') {
                    $.toast("取消支付", "cancel", function (toast) {
                        console.log(toast);
                    });
                }
                // alert(res.err_code + res.err_desc + res.err_msg);
            }
        );
    }

    function pay() {
        var randomStr = randomInt();
        $.showLoading();
        $.post('${base}/activity/expansion/dymPay', {
            price: randomStr,
            userId: '${userId}'
        }, function (data) {
            $.hideLoading();
            if (data.msgCode == 10000) {
                if (typeof WeixinJSBridge == "undefined") {
                    if (document.addEventListener) {
                        document.addEventListener('WeixinJSBridgeReady', onBridgeReady, false);
                    } else if (document.attachEvent) {
                        document.attachEvent('WeixinJSBridgeReady', onBridgeReady);
                        document.attachEvent('onWeixinJSBridgeReady', onBridgeReady);
                    }
                } else {
                    var resultMsg = data.msgBody;

                    onBridgeReady(resultMsg.appId,
                        resultMsg.signTimeStamp,
                        resultMsg.signNonceStr,
                        resultMsg.signPackage,
                        resultMsg.signType,
                        resultMsg.signPaySign);
                }
            } else {
                $.toast("操作失败", "cancel", function (toast) {
                    console.log(toast);
                });
            }
        });

    }

    function randomInt() {
        var randomFloat = parseFloat((Math.random() * 3).toFixed(1));
        while (randomFloat <= 1.2) {
            randomFloat = parseFloat((Math.random() * 3).toFixed(1));
        }
        return randomFloat + ''
    }

</script>
<script type="text/javascript">


    function b() {
        t = parseInt(x.css('top'));
        y.css('top', '25px');
        x.animate({
            top: t - 25 + 'px'
        }, 'slow');
        if (Math.abs(t) == h - 25) {
            y.animate({
                top: '0px'
            }, 'slow');
            z = x;
            x = y;
            y = z;
        }
        setTimeout(b, 3000);
    }

    $(document).ready(function () {
        $('.swap').html($('.news_li').html());
        x = $('.news_li');
        y = $('.swap');
        h = $('.news_li li').length * 25;
        setTimeout(b, 3000);
    })
</script>


</body>
</html>
