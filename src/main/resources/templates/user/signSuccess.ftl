<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>签署成功</title>

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
    <div class="weui-msg__icon-area"><i class="weui-icon-success weui-icon_msg"></i></div>
    <div class="weui-msg__text-area">
        <h2 class="weui-msg__title">签署成功</h2>
        <p class="weui-msg__desc">您已经签署合同，请添加 优宠熊 微信公众号，完成绑定手机号码操作。在宠物需要打疫苗的日期会收到微信提醒；在优宠熊消费后会收到电子凭证。 </p>
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

</body>
</html>
