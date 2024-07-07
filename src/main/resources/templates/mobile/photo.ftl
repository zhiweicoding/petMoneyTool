<!DOCTYPE html>
<html>
<meta charset="utf-8"/>
<title>详情展示</title>
<meta name="viewport"
      content="width=device-width,initial-scale=1,user-scalable=0,minimum-scale=1,maximum-scale=1,minimal-ui,viewport-fit=cover">
<meta name="format-detection" content="telephone=no">
<meta name="baidu-site-verification" content="b1Yp8ETSz9"/>
<meta name="keywords" content="宠物猫,正规购宠平台,买猫,卖猫,猫市场,宠物猫交易网,优宠熊,宠物平台,天津宠物交易,天津买猫,天津买狗,天津宠物市场,猫,优宠">
<meta name="description"
      content="优宠熊正规宠物购买平台，秉承优宠科技一贯的严谨态度，我们深入全国养殖基地源头，全程严格把控价格和质量，力求帮消费者甄选到健康心仪的小伙伴,宠物猫多少钱,买猫,卖猫,宠物猫交易网!">
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
    }();</script>
<style type="text/css" abt="234"></style>
<meta name="screen-orientation" content="portrait">
<meta name="x5-orientation" content="portrait">
<meta name="theme-color" content="#161823">
<meta name="pathname" content="aweme_mobile_video">
<link rel="stylesheet" href="${base}/resources/mobileCss/base.css">
<link rel="stylesheet" href="${base}/resources/mobileCss/detail.css">
<link rel="stylesheet" type="text/css"
      href="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/miniprogram/icon.css">
<link rel="stylesheet" type="text/css" href="${base}/resources/mobileCss/home.css">
<link rel="stylesheet" type="text/css" href="${base}/resources/mobileCss/core.css">
<style type="text/css">

    .aui-header-default {
        height: 60px;
    }

    .aui-header-item {
        height: 60px;
        margin-left: 0;
        padding-right: 0;
        padding-left: 18px;
    }

    .aui-header-center {
        height: 60px;
    }
</style>
</head>

<body ontouchstart>
<header class="aui-header-default aui-header-fixed ">
    <a href="javascript:history.go(-1);" class="aui-header-item">
        <i class="aui-icon aui-icon-back"></i>
    </a>
    <div class="aui-header-center aui-header-center-clear">
        <div class="aui-header-center-logo" style="width:auto;margin-left: -20px;">
            <div class="" style="width:auto;"> 营业执照
            </div>
        </div>
    </div>
    <a href="${base}/" class="aui-header-item-icon select" style="min-width:0;">
        <i class="aui-icon aui-footer-icon-home"></i>
    </a>
</header>
<div class="page-reflow-video aui-content-box">
    <div style="margin-top: 55px;height: 1px;width: 100%;"></div>

    <div class="body-content disscroll">

        <img src="${listUrl}" style="width: 100%;"/>
    </div>
</div>
<script src="${base}/resources/shopJs/jquery.min.js"></script>
<script src="${base}/resources/shopJs/fastclick.min.js"></script>
<script>
    $(function () {
        FastClick.attach(document.body);
    });
</script>
<script type="text/javascript">
    var isplay = -1
    var isHeart = -1

    $(document).ready(function () {
        var windowH = (window.innerHeight - 60) + 'px'
        var windowW = window.innerWidth
        $('#videoWrap').css('height', windowH);
        // var videoUrl=GetQueryString('importUrl')
        // $('#theVideo').attr('src',videoUrl)
        // $('#theVideo').attr('poster',videoUrl+'?vframe/jpg/offset/0')
    });
    //
    //
    // function GetQueryString(name) {
    //     var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
    //     var r = window.location.search.substr(1).match(reg);
    //     if (r != null) return unescape(r[2]);
    //     return null;
    // }

    function theVideoClick() {

        if (isplay < 0) {
            $('#theVideo').trigger('play');
            $('#playBtn').css('display', 'none');
            // $('#theVideo').css('display', 'block');
            isplay = 1
            // FullScreen()
        } else {
            $('#theVideo').trigger('pause');
            $('#playBtn').css('display', 'block');
            // $('#theVideo').css('display', 'none');
            isplay = -1
            // exitFullscreen()
        }

    }

    function startPlay() {
        $('#playBtn').css('display', 'none');
        $('#theVideo').trigger('play');
    }

    function lastStep() {
        document.getElementById('#homeVideo').play();
    }

    function changeHeart() {
        var likeImg = $('#likeImg')
        if (isHeart > 0) {
            likeImg.attr('src', 'https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/mobweb/heart.png');
            isHeart = -1
        } else {
            likeImg.attr('src', 'https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/mobweb/heartC.png');
            isHeart = 1
        }
        theVideoClick()
    }

    function makePhone() {
        $('#playBtn').css('display', 'block');
        isplay = -1
        window.location.href = "tel:13820612143";
    }

    //进入全屏
    function FullScreen() {
        var ele = document.documentElement;
        if (ele.requestFullscreen) {
            ele.requestFullscreen();
        } else if (ele.mozRequestFullScreen) {
            ele.mozRequestFullScreen();
        } else if (ele.webkitRequestFullScreen) {
            ele.webkitRequestFullScreen();
        }
    }

    //退出全屏
    function exitFullscreen() {
        var de = document;
        if (de.exitFullscreen) {
            de.exitFullscreen();
        } else if (de.mozCancelFullScreen) {
            de.mozCancelFullScreen();
        } else if (de.webkitCancelFullScreen) {
            de.webkitCancelFullScreen();
        }
    }

    function callStaff() {
        window.location.href = "https://www.sobot.com/chat/h5/index.html?sysNum=d7953744f07b4b4a89ace7d2a41d5e27"
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