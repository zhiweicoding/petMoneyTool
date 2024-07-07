<#import "common/desktopCss.ftl" as css>
<#import "common/desktopJs.ftl" as js>
<#import "common/desktopCommon.ftl" as common>
<!DOCTYPE html>
<html class="js rgba opacity cssanimations borderradius boxshadow csstransitions csstransforms textshadow">
<head>
    <meta charset="utf-8"/>
    <title>优宠熊正规宠物购买平台</title>
    <meta name="keywords" content="买猫在哪里买,金渐层哪里买,宠物猫,布偶猫哪里买,卖猫市场,宠物猫交易网,宠物平台,宠物猫,正规购宠平台,买猫,卖猫,猫市场,宠物猫交易网,优宠熊,宠物平台,天津宠物交易,天津买猫,天津宠物市场,猫,优宠,家庭繁育猫舍">
    <meta name="description"
          content="广州哪里有卖猫的？就到优宠熊正规宠物购买平台，秉承优宠科技一贯的严谨态度，致力于把健康的猫咪送到用户家中，金渐层、银渐层猫、缅因猫多少钱一只？布偶猫哪里买？买猫在哪个平台比较好？就到优宠熊！。">
    <meta name="theme-color" content="#3baa24">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <meta http-equiv="Cache-Control" content="no-transform"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="applicable-device" content="pc,mobile">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta property="og:url" content="http://www.youchongxiong.com/">
    <meta property="og:type" content="article">
    <meta property="og:title" content="优宠熊正规宠物购买平台">
    <meta property="og:description" content="广州哪里有卖猫的？就到优宠熊正规宠物购买平台，秉承优宠科技一贯的严谨态度，致力于把健康的猫咪送到用户家中，金渐层、银渐层猫、缅因猫多少钱一只？布偶猫哪里买？买猫在哪个平台比较好？就到优宠熊！。">
    <meta property="og:image" content="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/bitbug_favicon.ico">
    <meta name="renderer" content="webkit">
    <meta name="HandheldFriendly" content="True">
    <meta name="MobileOptimized" content="320">
    <meta name="baidu-site-verification" content="b1Yp8ETSz9"/>
    <link rel="shortcut icon" href="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/bitbug_favicon.ico"
          type="image/x-icon"/>
    <@css.commonCss/>
    <@css.payCss/>
    <@css.endCss/>
    <script>
        $(function () {
            var u = navigator.userAgent, app = navigator.appVersion;
            var isAndroid = u.indexOf('Android') > -1 || u.indexOf('Linux') > -1; //android终端或者uc浏览器
            var isiOS = !!u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/); //ios终端
            if (isAndroid || isiOS) {
                window.location.href = "${base}/webMobile/"
            }
        });
    </script>
<body style="">
<@common.topDiv />
<@common.rightDiv />
<@common.rightDivFloat />

<div class="g-bd-list back-white" id="j-freemarkerRender">

    <div class="g-bd">
        <div class="g-row">
            <div class="m-weixinPayPanel">
                <p class="title">请及时付款，以便订单尽快处理！</p>
                <p class="yxTradeNo">交易号：20180330104549YXMPDD11595956</p>
                <p class="tip">请在
                    <span class="f-txt-red">29分钟</span>内付款，否则交易会被取消</p>
                <p class="actualPrice">
                    <span>实付：</span>
                    <span class="f-txt-red">¥113.50</span>
                </p>
            </div>
            <div class="m-weixinSaoYiSao">
                <div class="bd f-clearfix">
                    <div class="code f-left">
                        <div class="bd">
                            <img src="${base}/resources/info/qrImage.png">
                        </div>
                        <p class="text">微信扫一扫支付</p>
                    </div>
                    <img class="phone f-left"
                         src="http://ystore.nos.netease.com/000fb2569f08b434de22fa9c74894728.png?imageView&amp;quality=95">
                </div>
            </div>
        </div>
    </div>

    <@common.footer/>
    <script>
        var basePath = '${base}/resources/';
    </script>
    <@js.commonJs/>
</body>

</html>