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
    <link rel="stylesheet" href="${base}/resources/public/mine/mine.css">
    <link rel="stylesheet" href="${base}/resources/common.css">
    <style>

        .kefuImg {
            position: fixed;
            z-index: 888;
            width: 48px;
            height: 48px;
            border-radius: 50%;
            font-size: 14px;
            background: #fff;
            padding: 4px;
            border: 0.5px solid #fe5455;
            top: 42%;
            right: 2%;
        }

        #mcover {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.7);
            display: none;
            z-index: 20000;
        }

        #mcover img {
            position: fixed;
            right: 18px;
            top: 5px;
            width: 260px;
            height: 180px;
            z-index: 20001;
        }

    </style>

</head>

<body ontouchstart>
<div id="mcover" onClick="document.getElementById('mcover').style.display='';" style="">
    <img alt="" src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200424/tishi.png">
</div>
<a href="https://youchongxiong.sobot.com/chat/h5/v2/index.html?sysnum=d7953744f07b4b4a89ace7d2a41d5e27&channelid=1">
    <img alt="优宠熊网络客服" class="kefuImg" src='https://photo.youchongxiong.com/%E5%AE%A2%E6%9C%8D.png'/>
</a>
<section class="aui-flexView">
    <section class="aui-scrollView">
        <div class="aui-head-body">
            <#--<i class="icon icon-news"></i>-->
            <img src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200427/head.png" alt="">
            <div class="aui-user-item">
                <div class="aui-mine-user">
                    <img src="${userOrg.headimgurl}" alt="">
                </div>
                <#--<i class="icon icon-edit"></i>-->
                <div class="aui-mine-name">
                    <h2>${userOrg.nickname}</h2>
                </div>
            </div>
        </div>
        <div class="aui-palace">
            <a href="javascript:;" class="aui-palace-grid" style="height: 50px;">
                <div class="aui-palace-grid-icon">
                    <wx-open-launch-weapp
                            username="gh_cd1af4b09642"
                            path="pages/mine/order/order.html">
                        <template>
                            <style> .iconImgSelf {
                                    display: block;
                                    width: 40px;
                                    height: 40px;
                                    border: none;
                                }
                            </style>
                            <img class="iconImgSelf"
                                 src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200711/order.png"
                                 alt="">
                        </template>
                    </wx-open-launch-weapp>
                </div>
                <div class="aui-palace-grid-text">
                    <wx-open-launch-weapp
                            username="gh_cd1af4b09642"
                            path="pages/mine/order/order.html">
                        <template>
                            <style> .h2Self {
                                    font-size: 0.85rem;
                                    font-weight: normal;
                                    color: #2b2f32;
                                    padding-top: 0;
                                    margin-top: 0;
                                }
                            </style>
                            <h2 class="h2Self">我的订单</h2>
                        </template>
                    </wx-open-launch-weapp>
                </div>
            </a>
            <a href="http://www.youchongxiong.com/wxPublic/discounts/index/null"
               class="aui-palace-grid">
                <div class="aui-palace-grid-icon">
                    <img src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200711/discounts.png" alt="">
                </div>
                <div class="aui-palace-grid-text">
                    <h2>我的优惠</h2>
                </div>
            </a>
            <a href="http://www.youchongxiong.com/si/pr/signPage" class="aui-palace-grid">
                <div class="aui-palace-grid-icon">
                    <img src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200711/protect.png" alt="">
                </div>
                <div class="aui-palace-grid-text">
                    <h2>购猫协议</h2>
                </div>
            </a>
            <a href="javascript:;" class="aui-palace-grid" style="height: 50px;">
                <div class="aui-palace-grid-icon">
                    <wx-open-launch-weapp
                            username="gh_cd1af4b09642"
                            path="pages/mine/feedback/feedback.html">
                        <template>
                            <style> .iconImgSelf {
                                    display: block;
                                    width: 40px;
                                    height: 40px;
                                    border: none;
                                }
                            </style>
                            <img class="iconImgSelf"
                                 src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200711/pingjia.png"
                                 alt="">
                        </template>
                    </wx-open-launch-weapp>
                </div>
                <div class="aui-palace-grid-text">
                    <wx-open-launch-weapp
                            username="gh_cd1af4b09642"
                            path="pages/mine/feedback/feedback.html">
                        <template>
                            <style> .h2Self {
                                    font-size: 0.85rem;
                                    font-weight: normal;
                                    color: #2b2f32;
                                    padding-top: 0;
                                    margin-top: 0;
                                }
                            </style>
                            <h2 class="h2Self">投诉建议</h2>
                        </template>
                    </wx-open-launch-weapp>
                </div>
            </a>
            <a href="http://www.youchongxiong.com/wxPublic/service/list" class="aui-palace-grid">
                <div class="aui-palace-grid-icon">
                    <img src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200711/cat.png" alt="">
                </div>
                <div class="aui-palace-grid-text">
                    <h2>购猫记录</h2>
                </div>
            </a>
            <a href="http://www.youchongxiong.com/wxPublic/luck/index2" class="aui-palace-grid">
                <div class="aui-palace-grid-icon">
                    <img src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200711/choujiang.png"
                         alt="">
                </div>
                <div class="aui-palace-grid-text">
                    <h2>幸运大抽奖</h2>
                </div>
            </a>
            <a href="javascript:;" class="aui-palace-grid" style="height: 50px;">
                <div class="aui-palace-grid-icon">
                    <wx-open-launch-weapp
                            username="gh_38e92ee1b82e"
                            path="pages/shelf/shelf.html">
                        <template>
                            <style> .iconImgSelf {
                                    display: block;
                                    width: 40px;
                                    height: 40px;
                                    border: none;
                                }
                            </style>
                            <img class="iconImgSelf"
                                 src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200711/good.png"
                                 alt="">
                        </template>
                    </wx-open-launch-weapp>
                </div>
                <div class="aui-palace-grid-text">
                    <wx-open-launch-weapp
                            username="gh_9966cc5d25ac"
                            path="pages/index/index.html">
                        <template>
                            <style> .h2Self {
                                    font-size: 0.85rem;
                                    font-weight: normal;
                                    color: #2b2f32;
                                    padding-top: 0;
                                    margin-top: 0;
                                }
                            </style>
                            <h2 class="h2Self">折扣商品</h2>
                        </template>
                    </wx-open-launch-weapp>
                </div>
            </a>
            <#--<a href="javascript:;" class="aui-palace-grid">-->
            <#--<div class="aui-palace-grid-icon">-->
            <#--<img src="${base}/resources/public/mine/hezuo.png" alt="">-->
            <#--</div>-->
            <#--<div class="aui-palace-grid-text">-->
            <#--<h2>商旅合作</h2>-->
            <#--</div>-->
            <#--</a>-->
        </div>
        <#--<div class="aui-landlady" onclick="openShop();">-->
        <#--<h2>我是猫舍人员</h2>-->
        <#--</div>-->
        <div class="aui-landlady">
            <#--<a href="javascript:showMask();" class="aui-flex">-->
            <#--<div class="aui-flex-box">-->
            <#--<h3>向朋友推荐</h3>-->
            <#--</div>-->
            <#--<div class="aui-arrow">-->
            <#--<p></p>-->
            <#--</div>-->
            <#--</a>-->
            <#--<a href="javascript:;" class="aui-flex">-->
            <#--<div class="aui-flex-box">-->
            <#--<h3>喜欢我们，打分鼓励一下</h3>-->
            <#--</div>-->
            <#--<div class="aui-arrow">-->
            <#--<p></p>-->
            <#--</div>-->
            <#--</a>-->
            <a href="http://www.youchongxiong.com" class="aui-flex">
                <div class="aui-flex-box">
                    <h3>关于我们</h3>
                </div>
                <div class="aui-arrow">
                    <p></p>
                </div>
            </a>
            <a href="http://www.youchongxiong.com/shop/goodPage/index" class="aui-flex">
                <div class="aui-flex-box">
                    <h3>商户入口</h3>
                </div>
                <div class="aui-arrow">
                    <p></p>
                </div>
            </a>
        </div>
        <div style="height:5rem"></div>
    </section>
</section>

<script type="text/javascript"
        src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/banner07142243/jquery.min.js"></script>
<script src="https://res.wx.qq.com/open/js/jweixin-1.6.0.js" type="text/javascript"></script>
<script type="text/javascript" src="${base}/resources/common.js"></script>
<script type="text/javascript">
    $(function () {
        if ('${auth}' == 'no') {
            showPic('https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200607/guanzhu.jpg')
        }
    })
    $(function () {
        console.log(document.location.href)
        wx.config({
            debug: false, // 是否开启调试模式
            appId: '${appId}', //appid
            timestamp: '${timestamp}', // 时间戳
            nonceStr: '${nonceStr}', // 随机字符串
            signature: '${signature}', // 签名
            jsApiList: [
                "onMenuShareTimeline",
                "onMenuShareAppMessage",
                "onMenuShareQQ",
                "onMenuShareWeibo",
                "onMenuShareQZone",
                "openLocation",
                "chooseWXPay",
            ],
            openTagList: [
                'wx-open-launch-weapp',  //跳转小程序
                'wx-open-launch-app'      //跳转app
            ]
        });
    })

    function openShop() {
        window.location.href = 'http://www.youchongxiong.com/shop/goodPage/index'
    }
</script>
</body>

</html>