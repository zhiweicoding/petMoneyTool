<#import "common/mobileCommon.ftl" as common>
<#import "common/mobileCss.ftl" as css>
<#import "common/mobileJs.ftl" as js>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>新闻列表-优宠熊正规宠物购买平台</title>
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
    <link rel="stylesheet" href="${base}/resources/mobileCss/index.css">
    <link rel="stylesheet" type="text/css" href="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/miniprogram/icon.css">
    <link rel="stylesheet" type="text/css" href="${base}/resources/mobileCss/home.css">
    <link rel="stylesheet" type="text/css" href="${base}/resources/mobileCss/core.css">
    <link rel="stylesheet" href="${base}/resources/mobileCss/suspend.css">


    <style type="text/css">

        html, body {
            color: #333;
            margin: 0;
            height: 100%;
            font-family: "Myriad Set Pro", "Helvetica Neue", Helvetica, Arial, Verdana, sans-serif;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
            font-weight: normal;
        }

        * {
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        a {
            text-decoration: none;
            color: #000;
        }

        a, label, button, input, select {
            -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
        }

        img {
            border: 0;
        }

        body {
            background: #fff;
            color: #666;
        }

        html, body, div, dl, dt, dd, ol, ul, li, h1, h2, h3, h4, h5, h6, p, blockquote, pre, button, fieldset, form, input, legend, textarea, th, td {
            margin: 0;
            padding: 0;
        }

        a {
            text-decoration: none;
            color: #08acee;
        }

        button {
            outline: 0;
        }

        img {
            border: 0;
        }

        button, input, optgroup, select, textarea {
            margin: 0;
            font: inherit;
            color: inherit;
            outline: none;
        }

        li {
            list-style: none;
        }

        a {
            color: #666;
        }

        .clearfix::after {
            clear: both;
            content: ".";
            display: block;
            height: 0;
            visibility: hidden;
        }

        .clearfix {
        }


        .divHeight {
            width: 100%;
            height: 6px;
            background: #f5f5f5;
            position: relative;
            overflow: hidden;
        }

        .r-line {
            position: relative;
        }

        .r-line:after {
            content: '';
            position: absolute;
            z-index: 0;
            top: 0;
            right: 0;
            height: 100%;
            border-right: 1px solid #D9D9D9;
            -webkit-transform: scaleX(0.5);
            transform: scaleX(0.5);
            -webkit-transform-origin: 100% 0;
            transform-origin: 100% 0;
        }

        .b-line {
            position: relative;
        }

        .b-line:after {
            content: '';
            position: absolute;
            z-index: 2;
            bottom: 0;
            left: 0;
            width: 100%;
            height: 1px;
            border-bottom: 1px solid #e2e2e2;
            -webkit-transform: scaleY(0.5);
            transform: scaleY(0.5);
            -webkit-transform-origin: 0 100%;
            transform-origin: 0 100%;
        }

        .aui-flex {
            display: -webkit-box;
            display: -webkit-flex;
            display: flex;
            -webkit-box-align: center;
            -webkit-align-items: center;
            align-items: center;
            padding: 15px;
            position: relative;
        }

        .aui-flex-box {
            -webkit-box-flex: 1;
            -webkit-flex: 1;
            flex: 1;
            min-width: 0;
            font-size: 14px;
            color: #333;
        }


        /* 必要布局样式css */

        .aui-flexView {
            width: 100%;
            height: 100%;
            margin: 0 auto;
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-orient: vertical;
            -webkit-box-direction: normal;
            -webkit-flex-direction: column;
            -ms-flex-direction: column;
            flex-direction: column;
        }

        .aui-scrollView {
            width: 100%;
            height: 100%;
            -webkit-box-flex: 1;
            -webkit-flex: 1;
            -ms-flex: 1;
            flex: 1;
            overflow-y: auto;
            overflow-x: hidden;
            -webkit-overflow-scrolling: touch;
            position: relative;
            margin-top: 0;
        }

        .aui-navBar {
            height: 44px;
            position: relative;
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
            z-index: 1002;
            background: #fdfdfd;
        }


        .aui-navBar-item {
            height: 44px;
            min-width: 25%;
            -webkit-box-flex: 0;
            -webkit-flex: 0 0 25%;
            -ms-flex: 0 0 25%;
            flex: 0 0 25%;
            padding: 0 0.9rem;
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-align: center;
            -webkit-align-items: center;
            -ms-flex-align: center;
            align-items: center;
            font-size: 0.7rem;
            white-space: nowrap;
            overflow: hidden;
            color: #808080;
            position: relative;
        }

        .aui-navBar-item:first-child {
            -webkit-box-ordinal-group: 2;
            -webkit-order: 1;
            -ms-flex-order: 1;
            order: 1;
            margin-right: -25%;
            font-size: 0.9rem;
            font-weight: bold;
        }

        .aui-navBar-item:last-child {
            -webkit-box-ordinal-group: 4;
            -webkit-order: 3;
            -ms-flex-order: 3;
            order: 3;
            -webkit-box-pack: end;
            -webkit-justify-content: flex-end;
            -ms-flex-pack: end;
            justify-content: flex-end;
        }

        .aui-center {
            -webkit-box-ordinal-group: 3;
            -webkit-order: 2;
            -ms-flex-order: 2;
            order: 2;
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-pack: center;
            -webkit-justify-content: center;
            -ms-flex-pack: center;
            justify-content: center;
            -webkit-box-align: center;
            -webkit-align-items: center;
            -ms-flex-align: center;
            align-items: center;
            height: 44px;
            width: 50%;
            margin-left: 25%;
        }

        .aui-center-title {
            text-align: center;
            width: 100%;
            white-space: nowrap;
            overflow: hidden;
            display: block;
            text-overflow: ellipsis;
            font-size: 0.95rem;
            color: #333;
            font-weight: bold;
        }

        .icon {
            width: 20px;
            height: 20px;
            display: block;
            border: none;
            float: left;
            background-size: 20px;
            background-repeat: no-repeat;
        }

        .icon-return {
            background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADwAAAA8CAYAAAA6/NlyAAAB/0lEQVRoQ+3bzUrDQBAA4Nkgnn2rVqgFPejJVwmTzauINz2oF0EoXnweb6JoRgKpBGnSTTIzO0nae0O//ZnZnUwdzOzjZuaFA3jqM25+hhHxBBHfuSbCNBgR10VR3CRJskTENw60WXCapmfOuXsAOCKiDyI6zfP8dSjaJLiO3QKJ6JOIFkPR5sC7sJxoU+A2bIX+IqK19/6579I2A9bAloNkAqyFNQHWxEYHa2OjggOw30S0GhKgdgW2KHs4EHvhvX/sG42bvqcOjolVX9KxsapgC1g1sBWsCtgSVhycpunCOfdUXvF2RU0i+gGAc4lorB6lK+wDABy3YK+893fcqafteSJpySpWZElbxrKDrWNZwWPAsoHHgmUB78MCQEFEl9rRWCQthWAB4DrLslvN1COWlmYHLkdybGiWg0cI2so+ZgGHzHR1blY/Sv7fz2zgsaBZwWNAs4Oto0XAltFi4A7oaRQAttExIGWVBXeRGnS0Qvy+Ug8AqKFFl3R9hK0U89TA1Z7+69toOOCLz7Qq2AJaHdwBzf7mkKUA0PeeG7CnB/dzRIvSTYMSAx1lSXeM3qwzHR0cuKfZ0CbAmmgz4A7opfd+0zdYmgLvQ5f9lkmSrBDxZTLgJvRkm0trt6z5tA9v0bNqEK+h5/MXgL6BSexVi8QPkn6mubR0ADOPwC8Tvs5MmEDGggAAAABJRU5ErkJggg==');
        }


        .aui-grids {
            position: relative;
            overflow: hidden;
            padding: 1rem 0;
        }


        .aui-grids-item {
            width: 25%;
            float: left;
            position: relative;
            z-index: 0;
            padding: 0.4rem 0;
            font-size: 0.85rem;
            text-align: center;
            color: #fff;
        }

        .aui-grids-item-icon {
            width: 50px;
            height: 50px;
            margin: 0 auto;
            position: relative;
        }

        .aui-grids-item-icon img {
            width: 50px;
            height: 50px;
            display: block;
            border: none;
        }

        .aui-grids-item-text {
            color: #333333;
            font-size: 0.8rem;
            padding-top: 0.3rem;
        }


        .aui-flex-box h2 {
            color: #333333;
            font-size: 0.9rem;
            margin-bottom: 1rem;
        }


        .aui-flex-box p {
            color: #b7b7bf;
            font-size: 0.8rem;
        }

        .aui-flex-box p em {
            color: #b7b7bf;
            font-style: normal;
            margin-right: 0.3rem
        }

        .aui-flex-box p .aui-flex-info {
            color: #b7b7bf;
        }

        .aui-science-user {
            width: 160px;
            height: auto;
            margin-left: 0.8rem;
            position: relative;
        }

        .aui-science-user img {
            width: 160px;
            height: 100px;
            display: block;
            border: none;
        }


    </style>

</head>

<body ontouchstart>
<div class="aui-content-box">
    <div>
        <#list arrays as arrays>
            <a href="${base}/msgList/${arrays.msgId}" class="aui-flex b-line">
                <div class="aui-flex-box">
                    <h2>${arrays.msgTitle}</h2>
                    <p><em>时间: ${(arrays.createTime?string('yyyy-MM-dd'))!}</em>
                        <em class="aui-flex-info">阅读：${arrays.readNum}</em></p>
                </div>
                <div class="aui-science-user">
                    <img class="detail-class-img" data-original="${arrays.msgImgUrl}"
                         src="${base}/resources/img/loadingsmall.jpg" alt="${arrays.msgContent}-${arrays.msgTag}">
                </div>
            </a>
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

<@common.footerDiv/>

<script type="text/javascript"
        src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/banner07142243/jquery.min.js"></script>
<script src="http://apps.bdimg.com/libs/jquery-lazyload/1.9.5/jquery.lazyload.min.js"></script>
<script>
    $(function () {
        $('.detail-class-img').lazyload();
    })
</script>
<script type="text/javascript"
        src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/banner07142243/tab.js"></script>
<script type="text/javascript"
        src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/banner07142243/slider.js"></script>

<script>
    var footerActive = $('.aui-footer-item');
    footerActive.removeClass('aui-footer-active');
    footerActive.eq(2).addClass('aui-footer-active');
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