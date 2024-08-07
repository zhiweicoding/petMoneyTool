<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html>
<head>
    <title>铲屎官笔记</title>
    <meta charset="utf-8">
    <meta name="theme-color" content="#3baa24">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <meta http-equiv="Cache-Control" content="no-transform"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="applicable-device" content="pc,mobile">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no"/>
    <link rel="shortcut icon" href="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/bitbug_favicon.ico"
          type="image/x-icon"/>
    <link rel="stylesheet" href="${base}/resources/shopCss/weui.min.css">
    <link rel="stylesheet" href="${base}/resources/shopCss/jquery-weui.min.css">
    <link rel="stylesheet" href="${base}/resources/shopCss/demos.css"/>
    <link rel="stylesheet" href="${base}/resources/noticeCss/aui.css"/>

    <style type="text/css">

        body {
            height: 100%;
        }

        .weui-tabbar__item.weui-bar__item--on .weui-tabbar__label {
            color: #d81e06
        }

        .weui-media-box__desc {
            color: #999;
            font-size: 13px;
            line-height: 1.2;
            overflow: hidden;
            text-overflow: ellipsis;
            display: -webkit-box;
            -webkit-box-orient: vertical;
            -webkit-line-clamp: 3;
        }
        html,body {
            color: #333;
            margin: 0;
            height: 100%;
            font-family: "Myriad Set Pro","Helvetica Neue",Helvetica,Arial,Verdana,sans-serif;
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
            background: #f0f0f0;
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

        button,input,optgroup,select,textarea {
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
            height: 10px;
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
            margin-top:0;
        }

        .aui-navBar {
            height: 44px;
            position: relative;
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
            z-index: 1002;
            background: #fff;
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
            font-size: 0.75rem;
            color: #333;
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

        .icon-return{
            background-image:url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADwAAAA8CAYAAAA6/NlyAAAD6UlEQVRoQ+XaPWgUTRgH8P9jchK45gUr0UosTgLJ3SzYiSR+oY0iIm9jI1i8gpZ+FKKFCGIngh+dnZWNVgoKiiCRmd3EgBcIvIKHEkGQeEGSuPvIyEbksreb9WZ2x3Pau929387czH8+CH9Zob/MC+fBjUbjXyI6SkQvAFyXUi73Ukkug0kIcZuITvwCvCWl/K/vwJ7nVZj5HhEd/hXHzO+VUpv6CjwyMlKtVCoPAIx1wpj5iVJqV9+A6/X6PwMDA08ANBJQX5l5XCn1si/AnudtBKCxtYSa/RyG4b7JycmJXrD6Wic6LSHEViJ6CmBzAugDgHEpZbNXrBPg0dHRxuDg4GMAGxJqdnZpaWl8enr6nQls6WDP88aY+QERVRNAEwsLCweazeYnU9hSwUKIw0R0D0AlAfRobm7uUKvV+moSWxpYCKHDhA4Vq/oQPf4qpY4B+GYaWwpYCHGRiC4lYZj5hlLqNAC2gS0anBQVf7qY+YxS6pot6Mp9CxmWukXF+Ed8i6LomO/7+v9svVgHp0VFALpTOiSlfGRdGj/AKrhWq22oVqt6jF0VFZnZWHrK87KsgXVUZOZnRLTVdnoqHZwRFZuLi4t7TaanUsFpURHAhJ4EBEHwOc+PNPldo006IypaS095XogxcFpUtJ2eCgdnREXr6alQsBDiEhFd7HwoM+t4eLaI9FQUOC0qFpqerIMzomLh6ckqOGNVsZT0ZA08PDy8fmho6DmA7QkPaQHYY2rtKQ8iz3dzDUu6NyaiOwkP0AtseqFNL7g5XXKBPc87D+BKpyiKonO+7191Wvo7syXP8wQzvyKidQnoC77vX3YdnauGNSYjUTkVMpJefm6wvklaZnYpRhoD6xtlzIqcmCgYBcfNO22LpPSpoHFw3Ly7boIBcG64+q3/cOeby9jmbIVhuCMIgrcu9OBGwBqSETk/EtFuKeXrstHGwHHzTjyqECO/hGG4PwgCfTiltGIUvBJmEg6j/PiImRcBHFFKPSxLbAP8w9JtD4mZIyI6LqW8WwbaGjhGd90lLCt/WwWvMYqeKrKmrYOzoiiAu1LK4wCiIuCFgLOiKDM/nJ+fPzI7O6s7NaulMPAaouiLdru9f2Zm5otNcaHglSiassn2enl5effU1NRHW+jCwRqSsY36NoqiMVtRtBTwGqPoThsLgqWBs6KorQ3zUsFZUdTGkQgXwKlRVJ/XMnnoxRlwWhSNN+ZOK6Vu9Np7OwXOiqIATkopb/aCdg6cEUX/l1Ju6TtwtyjKzFNKqdG+BMc1XWPm+0S0DcCnMAwP9rpi4mST7qjBdfV6faTdbr8xMbn4E8C9tOBV134HMhoNWzDw25IAAAAASUVORK5CYII=');

        }

        .icon-time{
            width:17px;
            height:17px;
            background-size:17px;
            margin-right:5px;
            background-image:url('data:image/png;base64,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');
        }

        .aui-assets-box{
            background:#fff;
            padding:20px 15px;
            margin-left:22px;
            position:relative;
        }

        .aui-assets-box:after{
            content: '';
            position: absolute;
            z-index: 0;
            top: 0;
            left: -15px;
            height: 130%;
            border-left: 1px solid #D9D9D9;
            -webkit-transform: scaleX(0.5);
            transform: scaleX(0.5);
            -webkit-transform-origin: 100% 0;
            transform-origin: 100% 0;
        }

        .aui-assets-box h2{
            font-size:15px;
            color:#333;
            font-weight:normal;
        }

        .aui-flex-img img{
            width:55px;
            height:55px;
            display:block;
            border:none;
        }

        .aui-flex-img{
            width:55px;
            height:55px;
            margin-right:14px;
        }

        .aui-assets-box .aui-flex{
            padding:10px 0 0 0;
        }

        .aui-assets-item{
            position:relative;
            overflow:hidden;
            display:block;
            padding:15px;
        }

        .aui-assets-day{
            font-size:14px;
            color:#999999;
            line-height:18px;
            padding-bottom:10px;
        }
    </style>
</head>

<body ontouchstart>
<div class="page__bd">
    <section class="aui-flexView">
        <header class="aui-navBar aui-navBar-fixed b-line">
            <a href="javascript:;" class="aui-navBar-item">
                <i class="icon icon-return"></i>
            </a>
            <div class="aui-center">
                <span class="aui-center-title">我的资产</span>
            </div>
            <a href="javascript:;" class="aui-navBar-item">
                <i class="icon icon-sys"></i>
            </a>
        </header>
        <section class="aui-scrollView">
            <a href="javascript:;" class="aui-assets-item">
                <div class="aui-assets-day">
                    <i class="icon icon-time"></i>昨天
                </div>
                <div class="aui-assets-box">
                    <h2>返现已经到账</h2>
                    <div class="aui-flex">
                        <div class="aui-flex-img">
                            <span style="position: absolute;color: #FFFFFF;left: 18px;top: 30px;">999</span>
                            <img src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/freemsg/voucher-001.png" alt="">
                        </div>
                        <div class="aui-flex-box">
                            <p>你昨日获得了5张优惠券，总计140元，快去看看吧！！</p>
                        </div>
                    </div>
                </div>
            </a>
            <a href="javascript:;" class="aui-assets-item">
                <div class="aui-assets-day">
                    <i class="icon icon-time"></i>2018.09.19
                </div>
                <div class="aui-assets-box">
                    <h2>优惠券到账</h2>
                    <div class="aui-flex">
                        <div class="aui-flex-img">
                            <span style="position: absolute;color: #FFFFFF;left: 18px;top: 30px;">999</span>
                            <img src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/freemsg/voucher-001.png" alt="">
                        </div>
                        <div class="aui-flex-box">
                            <p>你昨日获得了5张优惠券，总计140元，快去看看吧！！</p>
                        </div>
                    </div>
                </div>
            </a>
            <a href="javascript:;" class="aui-assets-item">
                <div class="aui-assets-day">
                    <i class="icon icon-time"></i>2018.09.11
                </div>
                <div class="aui-assets-box">
                    <h2>优惠券到账</h2>
                    <div class="aui-flex">
                        <div class="aui-flex-img">
                            <span style="position: absolute;color: #FFFFFF;left: 18px;top: 30px;">999</span>
                            <img src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/freemsg/voucher-001.png" alt="">
                        </div>
                        <div class="aui-flex-box">
                            <p>你昨日获得了5张优惠券，总计140元，快去看看吧！！</p>
                        </div>
                    </div>
                </div>
            </a>
        </section>
    </section>
</div>

<script src="${base}/resources/shopJs/jquery.min.js"></script>
<script src="${base}/resources/shopJs/swiper.min.js"></script>
<script src="${base}/resources/shopJs/fastclick.min.js"></script>
<script>
    $(function () {
        FastClick.attach(document.body);
    });
</script>
<script src="${base}/resources/shopJs/jquery-weui.min.js"></script>

</body>
</html>
