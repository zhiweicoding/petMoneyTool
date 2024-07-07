<#import "common/mobileCommon.ftl" as common>
<#import "common/mobileCss.ftl" as css>
<#import "common/mobileJs.ftl" as js>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>我的-优宠熊</title>
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
    <meta name="format-detection" content="telephone=yes"/>
    <script
            type="text/javascript">!function () {
            function t(t) {
                return this.config = t, this
            }

            t.prototype = {
                reset: function () {
                    var t = Math.min(document.documentElement.clientWidth, 750) / 750 * 100;
                    document.documentElement.style.fontSize = t + "px";
                    var e = parseFloat(window.getComputedStyle(document.documentElement).fontSize), n = t / e;
                    /(iPhone|iPad|iPod|iOS)/i.test(navigator.userAgent) || document.documentElement.setAttribute("flatform", "android"), 1 != n && (document.documentElement.style.fontSize = t * n + "px")
                }
            }, window.Adapter = new t, window.Adapter.reset(), window.onload = function () {
                window.Adapter.reset()
            }, window.onresize = function () {
                window.Adapter.reset()
            }
        }();
    </script>
    <link rel="stylesheet" href="${base}/resources/mobileCss/mine.css">
    <link rel="stylesheet" href="${base}/resources/mobileCss/suspend.css">
    <link rel="stylesheet" type="text/css" href="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/miniprogram/icon.css">
    <link rel="stylesheet" type="text/css" href="${base}/resources/mobileCss/home.css">
    <link rel="stylesheet" type="text/css" href="${base}/resources/mobileCss/core.css">

    <style type="text/css">

    </style>

</head>

<body ontouchstart>
<#--<div class="aui-content-box">-->

<div class="container">
    <div class="profile-info">
        <img class="avatar" bindtap="goLogin" src="${Session.user_session_key.avatarUrl}">
        <div class="info">
            <span class="name" bindtap="goLogin">${Session.user_session_key.username}</span>
            <span class="level" bindtap="goLogin">${Session.user_session_key.phone}</span>
        </div>
    </div>

    <div class="divHeight"></div>

    <div class="user-menu">
        <#--<div class="item">-->
        <#--<navigator url="/pages/mine/order/order" class="a">-->
        <#--<span class="icon order"></span>-->
        <#--<span class="txt">我的订单</span>-->
        <#--</navigator>-->
        <#--</div>-->
        <#--<div class="item">-->
            <#--<navigator class='a'-->
                       <#--url='/pages/webViewPro/webViewPro?webView=https%3A%2F%2Fwww.myloveqian.cn%2Fpage%2Fprotect%2FsignPage&barName=我的协议'>-->
                <#--<span class="icon feedback"></span>-->
                <#--<span class="txt">我的协议</span>-->
            <#--</navigator>-->
        <#--</div>-->
        <div class="item ">
            <div onclick="openUrl('${base}/webMobile/mobileMine/collect')" class="a">
                <span class="icon like"></span>
                <span class="txt">我的喜欢</span>
            </div>
        </div>
        <#--<div class="item ">-->
        <#--<navigator url="/pages/mine/address/address" class="a">-->
        <#--<span class="icon address"></span>-->
        <#--<span class="txt">地址管理</span>-->
        <#--</navigator>-->
        <#--</div>-->
        <div class="item ">
            <div class='a' onclick="openUrl('https://www.sobot.com/chat/h5/index.html?sysNum=d7953744f07b4b4a89ace7d2a41d5e27')" >
                <span class="icon kefu"></span>
                <span class="txt">联系客服</span>
            </div>
        </div>
        <div class="item no-border">
            <div onclick="openUrl('${base}/webMobile/mobileMine/discounts')" class="a">
                <span class="icon discounts"></span>
                <span class="txt">优惠券</span>
            </div>
        </div>
        <div class="item ">
            <div onclick="openUrl('${base}/help/protectList')" class="a">
                <span class="icon protect"></span>
                <span class="txt">保障协议</span>
            </div>
        </div>
        <div class="item ">
            <div onclick="openUrl('${base}/webMobile/mobileMine/feedback')" class="a">
                <span class="icon feedback"></span>
                <span class="txt">意见反馈</span>
            </div>
        </div>
        <div class='itemNoBack'></div>

    </div>

</div>

<a href="tel:18822166342">
    <img alt="优宠熊电话联系" class='circle-float'
         src='https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/webhelp/mobilephone.png'/>
</a>

<a href="https://www.sobot.com/chat/h5/index.html?sysNum=d7953744f07b4b4a89ace7d2a41d5e27">
    <img alt="优宠熊网络客服" class='circle-float-kefu'
         src='https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/webhelp/detail_kefu.png'/>
</a>
<#--</div>-->
<@common.footerDiv/>
<script type="text/javascript"
        src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/banner07142243/jquery.min.js"></script>
<script type="text/javascript"
        src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/banner07142243/tab.js"></script>
<script type="text/javascript"
        src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/banner07142243/slider.js"></script>

<script>
    var footerActive = $('.aui-footer-item');
    footerActive.removeClass('aui-footer-active');
    footerActive.eq(3).addClass('aui-footer-active');

    function openUrl(url) {
        window.location.href = url
    }
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