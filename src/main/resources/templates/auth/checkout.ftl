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
                <h2>活动规则</h2>
                <p>1,用户支付定金￥100元，可获得￥300元优宠熊购猫现金。</p>
                <p>2,支付成功，会收到公众号的支付成功通知，可在任意时间使用优宠熊购猫现金。</p>
                <p>3,支付成功后可按照提示内容，使用优宠熊购猫现金，但是每只猫咪只限使用一次购猫现金。</p>
                <p>4,￥300元购猫现金一旦购买，可以转增他人使用，但是不可退换。</p>
                <p>5,如有疑问，可咨询优宠熊公众号客服，回复人工即可。</p>
                <p>6,如有使用不良手段恶意违反规则者，优宠熊有权利取消其购得的优宠熊购猫现金。</p>
                <p>7,最终解释权归优宠熊平台所有。</p>
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
<script src="https://gw.alipayobjects.com/as/g/h5-lib/alipayjsapi/3.1.1/alipayjsapi.inc.min.js"></script>

<script type="text/javascript">

    function pay() {
        ap.tradePay({
            orderStr: 'alipay_sdk=alipay-sdk-java-4.8.73.ALL&app_id=2018113062382543&biz_content=%7B%22amount%22%3A%220.02%22%2C%22enable_pay_channels%22%3A%22%5B%7B%5C%22payChannelType%5C%22%3A%5C%22CREDITZHIMA%5C%22%7D%5D%22%2C%22extra_param%22%3A%22%7B%5C%22category%5C%22%3A%5C%22xxx%5C%22%2C%5C%22outStoreCode%5C%22%3A%5C%22charge001%5C%22%2C%5C%22outStoreAlias%5C%22%3A%5C%22%E5%85%85%E7%94%B5%E6%A1%A9%E5%8C%97%E4%BA%AC%E8%B7%AF%E7%82%B9%5C%22%7D%22%2C%22order_title%22%3A%22%E6%94%AF%E4%BB%98%E5%AE%9D%E9%A2%84%E6%8E%88%E6%9D%83%22%2C%22out_order_no%22%3A%222019077735255938023a%22%2C%22out_request_no%22%3A%222019077735255938023a%22%2C%22payee_logon_id%22%3A%22Payee_logon_id%22%2C%22payee_user_id%22%3A%22payee_user_id%22%2C%22product_code%22%3A%22PRE_AUTH_ONLINE%22%7D&charset=utf-8&format=json&method=alipay.fund.auth.order.app.freeze&notify_url=http%3A%2F%2Fwww.youchongxiong.com%2Fali%2Fnotice%2Findex&sign=JN6z8aMbNFR90HQ4SRb9QTdkMnntqxPcUgsIlT8cpx1dA7%2FmCCsBdGcTseJ%2BNeNB0TFxLBCJ6jhsWp8yncX8%2BQX1UM2pPQmADS3C1GOzsO9GHtzb5F2qSno2KuahLGrfdgBKEGjMpKnM27YmJfiTBLKosmMRhqVCHaF6OLwi%2FDLFsQYdv3DinSfJRSRUe6QU56ChYNqqU9xiG%2FNkPsmsaWvvb1xs%2FxOqXXUjLyjyLhrDW1lJMrHYJPpJ6rUzF7%2BAOcv2bfFioxdZJ%2FQ4qohowoCb3V6RaHS%2FUkSCoX%2Fq1lmtwSayM%2FfsNzJNHOGBRW%2B0IYFCFuyy2g2U%2FZGBShvZ2g%3D%3D&sign_type=RSA2&timestamp=2019-12-26+03%3A06%3A42&version=1.0.'
        }, function(res){
            ap.alert(res.resultCode);
        });
    }

</script>


</body>
</html>
