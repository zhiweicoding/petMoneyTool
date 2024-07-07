<#import "common/mobileCommon.ftl" as common>
<#import "common/mobileCss.ftl" as css>
<#import "common/mobileJs.ftl" as js>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>买家秀-优宠熊</title>
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
    <link rel="stylesheet" href="${base}/resources/mobileCss/buyShow.css">
    <link rel="stylesheet" href="${base}/resources/mobileCss/suspend.css">
    <link rel="stylesheet" type="text/css"
          href="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/miniprogram/icon.css">
    <link rel="stylesheet" type="text/css" href="${base}/resources/mobileCss/home.css">
    <link rel="stylesheet" type="text/css" href="${base}/resources/mobileCss/core.css">
    <link rel="stylesheet" href="https://cdn.bootcss.com/weui/1.1.2/style/weui.min.css">
    <link rel="stylesheet" href="https://cdn.bootcss.com/jquery-weui/1.2.0/css/jquery-weui.min.css">

    <style type="text/css">
        body {
            width: 100%;
            min-height: 100%;
        }

        html body span {
            font-size: 16px;
            font-family: arial, sans-serif;
        }

        .type-head {
            margin-top: -50px;
            position: absolute;
            right: 10%;
        }

        .type-span-head {
            border: 1px solid white;
            border-radius: 20px;
            font-size: 14px;
            color: #fff;
            padding: 5px 10px;
            cursor: pointer;
        }

        .type-span-head:active {
            border: 1px solid #b1b1b1;
            border-radius: 20px;
            font-size: 14px;
            color: #b1b1b1;
            padding: 5px 10px;
            cursor: pointer;
        }

        .aui-list-product-item {
            margin-top: 8px;
            margin-bottom: 8px;
        }

        .aui-list-product-item-img-img {
            padding: 0 5px;
        }

        .aui-list-product-item-text-title {
            font-size: 16px;
            margin-top: 3px;
            margin-bottom: 3px;
        }

        .aui-list-product-item-text-desc {
            font-size: 14px;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }

        .aui-list-product-item-price {
            font-weight: bold;
            font-size: 18px;
        }

        .aui-comment {
            font-size: 13px;
        }

        .aui-grid {
            width: 100%;
            height: 40%;
            z-index: 8888;
            background: #fff;
            position: absolute;
            top: 6.2%;
            display: none;
        }

        .aui-new-search-content {
            padding-top: 0px;
            position: fixed;
            overflow-y: auto;
            z-index: 9999;
            width: 100%;
        }

        .aui-col-xs-3 {
            height: 50px;
        }

        .tab-type-active {
            font-size: 14px;
        }

        .tab-type {
            font-size: 14px;
        }
    </style>

</head>

<body ontouchstart>
<header class="aui-header-default aui-header-fixed " style="height: 52px;">
    <a href="javascript:history.go(-1);" class="aui-header-item">
        <i class="aui-icon aui-icon-back"></i>
    </a>
    <div class="aui-header-center aui-header-center-clear">
        <div class="aui-header-center-logo" style="width:auto;">
            <div class="" style="width:auto;">买家秀</div>
        </div>
    </div>
    <a href="${base}/" class="aui-header-item-icon select" style="min-width:0;">
        <i class="aui-icon aui-footer-icon-home"></i>
    </a>
</header>
<div class="aui-content-box">
    <div scroll-y class="orders">
        <#list  list as resultArray>
            <div class="order">
                <div class="h">
                    <div class="l">
                        <img alt="评价优宠熊购猫体验"
                             src='${resultArray.avatarUrl}' class='buyerImg' lazy-load mode='aspectFill'/>
                        <div class='buyerDetailBody'>
                            ${resultArray.nickName}
                        </div>
                    </div>
                    <div class="r">${resultArray.createTimeStr}</div>
                </div>

                <div class="goodsItem">
                    <span>${resultArray.msg}</span>

                </div>
            </div>

        </#list>

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
<script type="text/javascript"
        src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/banner07142243/jquery.min.js"></script>
<script type="text/javascript"
        src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/banner07142243/tab.js"></script>
<script type="text/javascript"
        src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/banner07142243/slider.js"></script>

<script type="text/javascript"
        src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/banner07142243/jquery.min.js"></script>
<script src="http://apps.bdimg.com/libs/jquery-lazyload/1.9.5/jquery.lazyload.min.js"></script>
<script src="https://photo.youchongxiong.com/jquery-weui.min.js"></script>

<script>
    $(function () {
        $('.img').lazyload();
    })

    function imgTap(imgUrl) {
        $.toast("点击图片可关闭", "text");
        $('#showImg').attr('src', imgUrl).show()
    }

    function imgShow() {
        $('#showImg').toggle()
    }

    $(document).ready(function () {
        if ('${scrollId}' != '0') {
            $('html, body').animate({
                scrollTop: $("#${scrollId}").offset().top - 20
            }, 1000);
        }
    });
</script>
<script src="http://apps.bdimg.com/libs/fastclick/1.0.0/fastclick.min.js"></script>
<script>
    $(function () {
        FastClick.attach(document.body);
    });
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