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
    <link rel="shortcut icon" href="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/bitbug_favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="${base}/resources/shopCss/weui.min.css">
    <link rel="stylesheet" href="${base}/resources/shopCss/jquery-weui.min.css">
    <link rel="stylesheet" href="${base}/resources/shopCss/demos.css"/>
    <script
            type="text/javascript">!function () {
            function t(t) {
                return this.config = t, this
            }

            t.prototype = {
                reset: function () {
                    var t = Math.min(document.documentElement.clientWidth, 750) / 750 * 100;
                }
            }, window.Adapter = new t, window.Adapter.reset(), window.onload = function () {
                window.Adapter.reset()
            }, window.onresize = function () {
                window.Adapter.reset()
            }
        }();
    </script>
    <style type="text/css">
        .panel {
            width: 100%;
            height: 92%;
        }

        .weui-tabbar__item.weui-bar__item--on .weui-tabbar__label {
            color: #d81e06
        }

    </style>
</head>

<body ontouchstart>

<div class="weui-tab">
    <div class="weui-tab__bd">
        <div id="tab1" class="weui-tab__bd-item weui-tab__bd-item--active">
            <div class="panel">
                <iframe align="center" style="padding: 0px; width: 100%; height: 100%;"
                        src="http://www.youchongxiong.com" frameborder="no"></iframe>
            </div>
        </div>
        <div id="tab4" class="weui-tab__bd-item">

            <div class="panel">
                <iframe align="center" style="padding: 0px; width: 100%; height: 100%;"
                        src="http://www.baidu.com" frameborder="no"></iframe>
            </div>
        </div>
    </div>

    <div class="weui-tabbar">
        <a href="#tab1" class="weui-tabbar__item weui-bar__item--on">
            <#--<span class="weui-badge" style="position: absolute;top: -.4em;right: 1em;">8</span>-->
            <div class="weui-tabbar__icon">
                <img id="leftBook" onclick="leftTab()" src="${base}/resources/noticeImg/icon_nav_bookC.png" alt="">
            </div>
            <p class="weui-tabbar__label">笔记</p>
        </a>
        <a href="#tab4" class="weui-tabbar__item">
            <div class="weui-tabbar__icon">
                <img id="rightMine" onclick="rightTab()" src="${base}/resources/noticeImg/icon_nav_mine.png" alt="">
            </div>
            <p class="weui-tabbar__label">我的</p>
        </a>
    </div>
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
<script type="text/javascript">
    function leftTab() {
        $('#leftBook').attr('src', '${base}/resources/noticeImg/icon_nav_bookC.png')
        $('#rightMine').attr('src', '${base}/resources/noticeImg/icon_nav_mine.png')
    }

    function rightTab() {
        $('#leftBook').attr('src', '${base}/resources/noticeImg/icon_nav_book.png')
        $('#rightMine').attr('src', '${base}/resources/noticeImg/icon_nav_mineC.png')
    }
</script>
</body>
</html>
