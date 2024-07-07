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

    </style>
</head>

<body ontouchstart>
<section class="aui-scrollView" style="margin-top: 30px;">
    <div class="aui-mine-box">
        <div class="aui-mine-img">
            <img src="http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKo17faASULS9iapiavro6LBvxC6fjECngx8k1icvIUVQUrVS0qibpct1x6kLmiaokgAzo5ul7Mh2wYyPQ/132"
                 alt="">
        </div>
        <h2>志伟</h2>
    </div>

    <div class="aui-flex aui-flex-bo">
        <div class="aui-flex-box">
            <h2>我的服务</h2>
        </div>
    </div>
    <div class="aui-image-text-new ">
        <a href="javascript:openProject();" class="aui-flex ">
            <div class="aui-flex-box">
                <h2>设置健康提醒</h2>
                <p>查看已购猫咪的购猫协议、条款</p>
            </div>
            <div class="aui-shrink-img">
                <img src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/kj/temp/fl-002.jpg" alt="">
            </div>
        </a>
        <#--<a href="javascript:;" class="aui-flex ">-->
        <#--<div class="aui-flex-box">-->
        <#--<h2>设置公众号提醒</h2>-->
        <#--<p>设置接收疫苗、驱虫提醒，返现到账等通知</p>-->
        <#--</div>-->
        <#--<div class="aui-shrink-img">-->
        <#--<img src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/kj/temp/fl-001.png" alt="">-->
        <#--</div>-->
        <#--</a>-->
        <#--<a href="javascript:;" class="aui-flex ">-->
        <#--<div class="aui-flex-box">-->
        <#--<h2>日常提醒</h2>-->
        <#--<p>根据日常疫苗驱虫习惯智能生成提醒</p>-->
        <#--</div>-->
        <#--<div class="aui-shrink-img">-->
        <#--<img src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/kj/temp/fl-001.png" alt="">-->
        <#--</div>-->
        <#--</a>-->
        <a href="javascript:;" class="aui-flex ">
            <div class="aui-flex-box">
                <h2>查看返现信息</h2>
                <p>查看返现绑定的淘宝、支付宝账号信息</p>
            </div>
            <div class="aui-shrink-img">
                <img src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/kj/temp/fl-003.jpg" alt="">
            </div>
        </a>
        <a href="javascript:;" class="aui-flex ">
            <div class="aui-flex-box">
                <h2>返现记录查询</h2>
                <p>免费购猫用户查看返现记录</p>
            </div>
            <div class="aui-shrink-img">
                <img src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/kj/temp/fl-004.jpg" alt="">
            </div>
        </a>
        <a href="https://www.sobot.com/chat/h5/index.html?sysNum=d7953744f07b4b4a89ace7d2a41d5e27" class="aui-flex ">
            <div class="aui-flex-box">
                <h2>咨询健康顾问</h2>
                <p>可以咨询养宠健康顾问，科学喂养</p>
            </div>
            <div class="aui-shrink-img">
                <img src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/kj/temp/fl-001.png" alt="">
            </div>
        </a>
    </div>

    <#--<div class="aui-flex aui-flex-bo">-->
    <#--<div class="aui-flex-box">-->
    <#--<h2>我的猫咪</h2>-->
    <#--</div>-->
    <#--</div>-->

    <#--<div class="aui-image-text ">-->
    <#--<a href="javascript:;" class="aui-flex ">-->
    <#--<div class="aui-mine-img" style="margin-right: 10px;">-->
    <#--<img src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/kj/temp/EDl1jVPWkAAUd36.jpeg"-->
    <#--alt="">-->
    <#--</div>-->
    <#--<div class="aui-flex-box">-->
    <#--<h2>志伟的猫咪</h2>-->
    <#--<p>2019年6月15日出生</p>-->
    <#--<span><em>点击编辑</em></span>-->
    <#--</div>-->
    <#--<div class="aui-shrink-img">-->
    <#--<img src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/kj/temp/fl-001.png" alt="">-->
    <#--</div>-->
    <#--</a>-->
    <#--</div>-->

</section>

<script src="${base}/resources/shopJs/jquery.min.js"></script>
<script src="${base}/resources/shopJs/swiper.min.js"></script>
<script src="${base}/resources/shopJs/fastclick.min.js"></script>
<script src="https://res.wx.qq.com/open/js/jweixin-1.4.0.js"></script>
<script>
    $(function () {
        FastClick.attach(document.body);
    });
    $(function () {
        wx.miniProgram.getEnv(function (res) {
            if (res.miniprogram) {
                // var info = {
                //     wboid: '1234555555',//参数一
                //     wid: '78945454545',//参数二
                // };
                // var json = JSON.stringify(info);
                wx.miniProgram.postMessage({data: json});

            }
        });
    });

    function openProject() {
        wx.miniProgram.getEnv(function (res) {
            if (res.miniprogram) {
                wx.miniProgram.navigateTo({url: '/path/to/page'})
            }
        });
    }
</script>
<script src="${base}/resources/shopJs/jquery-weui.min.js"></script>

</body>
</html>
