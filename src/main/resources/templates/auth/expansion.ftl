<!DOCTYPE html>
<html>
<head>
    <title>双12提前过，100元变300元</title>
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
<section class="aui-flexView">
    <section class="aui-scrollView">
        <div class="aui-cour-body">
            <div class="aui-invite-button">
                <button data-ydui-actionsheet="{target:'#actionSheet',closeElement:'#cancel'}" onclick="pay()">点击支付定金
                </button>
                <h2>${authCode}</h2>
            </div>
            <div class="aui-cour-text">
                <h2>活动规则2023</h2>
            </div>
        </div>

    </section>
</section>

<script type="text/javascript" src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script type="text/javascript" charset="utf-8" src="https://cdn.bootcss.com/layer/3.1.0/layer.js"></script>
<script src="http://apps.bdimg.com/libs/fastclick/1.0.0/fastclick.min.js"></script>
<script src="https://photo.youchongxiong.com/jquery-weui.min.js"></script>
<script>
    $(function () {
        FastClick.attach(document.body);
    });
</script>
<#--<script src="https://gw.alipayobjects.com/as/g/h5-lib/alipayjsapi/3.1.1/alipayjsapi.inc.min.js"></script>-->

<script type="text/javascript">
    function ready(callback) {
        // 如果jsbridge已经注入则直接调用
        if (window.AlipayJSBridge) {
            callback && callback();
        } else {
            // 如果没有注入则监听注入的事件
            document.addEventListener('AlipayJSBridgeReady', callback, false);
        }
    }
    function pay() {
        // ap.tradePay({
        //     tradeNO: "alipay_sdk=alipay-sdk-java-4.8.73.ALL&app_id=2018113062382543&biz_content=%7B%22amount%22%3A%220.1%22%2C%22enable_pay_channels%22%3A%22%5B%7B%5C%22payChannelType%5C%22%3A%5C%22CREDITZHIMA%5C%22%7D%5D%22%2C%22extra_param%22%3A%22%7B%5C%22outStoreAlias%5C%22%3A%5C%22%E4%BC%98%E5%AE%A0%E7%86%8A%E5%8D%8A%E4%BB%B7%E9%AA%8C%E8%AF%81%5C%22%2C%5C%22outStoreCode%5C%22%3A%5C%22youchongxiong001%5C%22%2C%5C%22category%5C%22%3A%5C%22POSTPAY_LOCAL_SERVICE%5C%22%2C%5C%22serviceId%5C%22%3A%5C%222019122600000000000004897400%5C%22%7D%22%2C%22order_title%22%3A%22%E4%BC%98%E5%AE%A0%E7%86%8A%E5%8D%8A%E4%BB%B7%E9%AA%8C%E8%AF%81%22%2C%22out_order_no%22%3A%221578311385412ade11%22%2C%22out_request_no%22%3A%221578311385412ade12%22%2C%22pay_timeout%22%3A%222d%22%2C%22payee_user_id%22%3A%222088302654898683%22%2C%22product_code%22%3A%22PRE_AUTH_ONLINE%22%2C%22scene_code%22%3A%22ONLINE_AUTH_COMMON_SCENE%22%7D&charset=utf-8&format=json&method=alipay.fund.auth.order.app.freeze&notify_url=http%3A%2F%2Fwww.youchongxiong.com%2Fali%2Fnotice%2Findex&sign=AYdzJOR7GzqTBkHUxDsY9Ay8fUUWPrKRQsIK1rOG6dVP9dKCfUyqaAaF8oI%2BAQxPrp%2FpINFiZn7gs41PywgP%2FOPHRnZ2u7HgshzB1i6NtFp4Sy9MhSf%2BXINJ%2BTPSKYGZ670udKMxN62h2kn8ZE1eoLFoOAmaLNsypvEQ58Hu0mtacFXLr%2FjsXJ6%2Fk4i3h9eFsyfdcMxN1uwTtMmt6D9eb%2FyfpIX21SfNP%2FJ6ML4NP%2FHVOh58AGwYq1VeftUypUiaaGgDhXA4vdWsh7%2BcltZle0fKEzNaSAfsUF3kZGY45L78UVVdeBgZAoL2G5bzpvNEpMRiLpOAtRww9Yg329U8KA%3D%3D&sign_type=RSA2&timestamp=2020-01-06+19%3A49%3A45&version=1.0"
        // }, function (res) {
        //     ap.alert(res.resultCode);
        // });
        AlipayJSBridge.call("tradePay", {
            tradeNO: "201802282100100427058809844"
        }, function (result) {
            alert(JSON.stringify(result));
        });
    }


</script>

</body>
</html>
