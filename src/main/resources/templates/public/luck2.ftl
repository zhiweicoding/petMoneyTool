<#import "common/mobileCommon.ftl" as common>
<#import "common/mobileCss.ftl" as css>
<#import "common/mobileJs.ftl" as js>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>幸运抽奖</title>
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
    <link rel="stylesheet" href="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200427/mui.min.css">
    <link rel="stylesheet" href="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200427/component.css">
    <link rel="stylesheet" href="${base}/resources/public/luck/award.css">
    <link rel="stylesheet" href="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200427/animate.min.css">
    <link rel="stylesheet" href="${base}/resources/activityCss/style.css">
    <link rel="stylesheet" href="https://cdn.bootcss.com/weui/1.1.2/style/weui.min.css">
    <link rel="stylesheet" href="https://cdn.bootcss.com/jquery-weui/1.2.0/css/jquery-weui.min.css">
    <link rel="stylesheet" href="${base}/resources/common.css">
    <link rel="stylesheet" href="${base}/resources/zdialog.css">
    <link rel="stylesheet" href="${base}/resources/public/luck/luckDialog.css">
    <style>
        .kefuImg {
            position: fixed;
            z-index: 888;
            top: 30%;
            left: 4%;
            width: 64px;
            height: 64px;
            border-radius: 50%;
            font-size: 14px;
            background: #fff;
            padding: 4px;
            border: 0.5px solid #fe5455;
        }

        .kefuImg {
            -webkit-animation: free_download 1s linear alternate infinite;
            animation: free_download 1s linear alternate infinite;
        }

        @-webkit-keyframes free_download {
            0% {
                -webkit-transform: scale(0.9);
            }
            100% {
                -webkit-transform: scale(1);
            }
        }

        @keyframes free_download {
            0% {
                transform: scale(0.9);
            }
            100% {
                transform: scale(1);
            }
        }

        #mask-rule, #mask {
            display: none;
            position: fixed;
            left: 0;
            top: 0;
            z-index: 10;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.85);
        }

        #mask-rule #close-rule {
            position: absolute;
            right: 0.45333333rem;
            top: 0.50666667rem;
            width: 0.53333333rem;
            height: 0.53333333rem;
            background-image: url(https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200506/close.png);
        }

        canvas.item {
            width: 100%;
            height: 100%;
        }

        .turnplate {
            width: 100%;
            height: 100%;
            line-height: 23px;
        }

        .toggleFather {
            position: fixed;
            z-index: 888;
            top: 20%;
            left: 0;
        }

        .toggle {
            background: #febc42;
            padding: 6px 10px 6px 5px;
            color: #fff;
            border-radius: 0 20px 20px 0;
            border: none;
            box-shadow: 3px 5px 3px 2px rgba(0, 0, 0, 0.2);
            font-size: 18px;
        }

        @-webkit-keyframes changeImg {
            from {
                left: -100%;
            }
            100% {
                left: 70%;
            }
        }

        .shan {
            position: absolute;
            -webkit-animation: changeImg 1.5s ease 0s;
            -o-animation: changeImg 1.5s ease 0s;
            animation: changeImg 1.5s ease 0s;
            top: 0;
            width: 30%;
            height: 100%;
            content: "";
            background: -webkit-linear-gradient(left, rgba(255, 255, 255, 0) 0, rgba(255, 255, 255, .4) 50%, rgba(255, 255, 255, 0) 100%);
            background: -o-linear-gradient(left, rgba(255, 255, 255, 0) 0, rgba(255, 255, 255, .4) 50%, rgba(255, 255, 255, 0) 100%);
            background: -moz-linear-gradient(left, rgba(255, 255, 255, 0) 0, rgba(255, 255, 255, .4) 50%, rgba(255, 255, 255, 0) 100%);
            background: linear-gradient(to right, rgba(255, 255, 255, 0) 0, rgba(255, 255, 255, .4) 50%, rgba(255, 255, 255, 0) 100%);
            transform: skewX(-45deg);
            animation-iteration-count: infinite;
            -moz-animation-iteration-count: infinite;
            -webkit-animation-iteration-count: infinite;
        }

        .ml-main .kePublic2 {
            width: 80%;
            height: auto;
            position: absolute;
            top: 166vw;
            left: 10%;
            z-index: 999;
        }

        .record_line {
            width: 90vw;
            height: 8vw;
            position: absolute;
            top: 248vw;
            left: 5vw;
            line-height: 8vw;
            font-size: 3vw;
            color: #EECFCF;
            text-align: center;
            background: rgba(0, 0, 0, 0.3);
            border-radius: 20px;
            overflow: hidden;
            white-space: nowrap;
            text-overflow: ellipsis;
            z-index: 2;
        }

        .rule_title {
            width: 40vw;
            position: absolute;
            top: 262vw;
            left: 30vw;
            z-index: 2;
        }

        .rule_text {
            width: 90vw;
            position: absolute;
            top: 268vw;
            left: 5vw;
            font-size: 3.5vw;
            line-height: 6vw;
            color: #FEEEEE;
            margin-bottom: 5vw;
            z-index: 2;
        }

        .bottom_shadow2 {
            width: 50vw;
            position: absolute;
            top: 237vw;
            left: 25vw;
            z-index: 1;
        }

        .kePublic_back2 {
            width: 85vw;
            position: absolute;
            top: 172vw;
            left: 6vw;
            z-index: 2;
        }

        .rule_title1 {
            width: 50vw;
            position: absolute;
            top: 70vw;
            left: 24vw;
            z-index: 222;
        }

        .rule_title2 {
            width: 50vw;
            position: absolute;
            top: 160vw;
            left: 24vw;
            z-index: 222;
        }

        .ml-main .kePublic {
            width: 80%;
            height: auto;
            position: absolute;
            top: 78vw;
            left: 10%;
            z-index: 999;
        }

        .bottom_shadow {
            width: 50vw;
            position: absolute;
            top: 149vw;
            left: 25vw;
            z-index: 1;
        }

        .kePublic_back {
            width: 85vw;
            position: absolute;
            top: 83vw;
            left: 6vw;
            z-index: 2;
        }
    </style>
</head>

<body ontouchstart>
<div>
    <img alt="优宠熊网络客服" class="kefuImg" onclick="openActivity()"
         src='https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/activitydetail.jpg'/>
</div>
<div class="toggleFather">
    <button class="toggle" onclick="gotoOne()">抽取半价猫咪</button>
    <b class="shan"></b>
</div>

<!-------------抽奖页面-------------->
<div class="ml-main" id="ml-main">
    <img class="main_back" src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200427/back.png"/>
    <img class="animated zoomIn img_2_1"
         src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200427/img_1.png">
    <img class="animated bounceIn img_2_2"
         src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200427/img_2.png">

    <img class="rule_title1"
         src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200530/rule_title1.png"/>
    <div class="kePublic">
        <!--转盘效果开始-->
        <div style="margin:0 auto">
            <div class="banner">
                <div class="turnplate"
                     style="background-image:url(https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200427/turnplate-bg_2.png);background-size:100% 100%;font-size:24px !important;">
                    <canvas class="item" id="wheelcanvas" width="516" height="516"></canvas>
                    <img id="tupBtn" class="pointer"
                         src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200427/turnplate-pointer_2.png"/>
                </div>
            </div>
        </div>
        <!--转盘效果结束-->
        <div class="clear"></div>
    </div>
    <img class="bottom_shadow"
         src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200427/bottom_shadow.png"/>
    <img class="animated zoomIn kePublic_back"
         src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200427/back1.png"/>

    <img class="rule_title2"
         src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200530/rule_title2.png"/>
    <div class="kePublic2">
        <!--转盘效果开始-->
        <div style="margin:0 auto">
            <div class="banner">
                <div class="turnplate"
                     style="background-image:url(https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200427/turnplate-bg_2.png);background-size:100% 100%;font-size:24px !important;">
                    <canvas class="item" id="wheelcanvas2" width="516" height="516"></canvas>
                    <img id="tupBtn2" class="pointer"
                         src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200427/turnplate-pointer_2.png"/>
                </div>
            </div>
        </div>
        <!--转盘效果结束-->
        <div class="clear"></div>
    </div>
    <img class="bottom_shadow2"
         src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200427/bottom_shadow.png"/>
    <img class="animated zoomIn kePublic_back2"
         src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200427/back1.png"/>

    <!--------------滚动中奖纪录---------------->
    <div class="record_line" id="Marquee">
        <div id="">
            恭喜 一个神奇的男士 的用户抽中 <span id="gift_coupon">100抵200元福利</span>
        </div>
        <div id="">
            恭喜 山野布衣 的用户抽中 <span id="gift_coupon">成猫7折福利</span>
        </div>
        <div id="">
            恭喜 您逗我呢 的用户抽中 <span id="gift_coupon">50抵100元福利</span>
        </div>
        <div id="">
            恭喜 提拉米苏的小优 的用户抽中 <span id="gift_coupon">中国平安保险一份</span>
        </div>
        <div id="">
            恭喜 我笑呵呵 的用户抽中 <span id="gift_coupon">用品8这优惠</span>
        </div>
        <div id="">
            恭喜 >ོ࿐空城 的用户抽中 <span id="gift_coupon">50抵100元福利</span>
        </div>
        <div id="">
            恭喜 食在芜蓼 的用户抽中 <span id="gift_coupon">100抵200元福利</span>
        </div>
        <div id="">
            恭喜 小福泥小脑斧 的用户抽中 <span id="gift_coupon">100抵200元福利</span>
        </div>
        <div id="">
            恭喜 笑成沙雕了 的用户抽中 <span id="gift_coupon">50抵100元福利</span>
        </div>
        <div id="">
            恭喜 阿宅 的用户抽中 <span id="gift_coupon">中国平安保险一份</span>
        </div>
        <div id="">
            恭喜 投资精英部郭经理 的用户抽中 <span id="gift_coupon">一年用品8这优惠</span>
        </div>
        <div id="">
            恭喜 陈莲兮clx 的用户抽中 <span id="gift_coupon">成猫7折福利</span>
        </div>
        <div id="">
            恭喜 小福泥小脑斧 的用户抽中 <span id="gift_coupon">成猫7折福利</span>
        </div>
        <div id="">
            恭喜 时光熬人心 的用户抽中 <span id="gift_coupon">500元代金券</span>
        </div>
    </div>
    <!-------------底部声明-------------->
    <img class="rule_title" src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200427/rule_title.png"/>
    <div class="rule_text">
        每日一抽奖项：<br>
        <strong>·</strong> 30元1斤装混合冻干优惠券<br>
        <strong>·</strong> 10元麦德氏益生菌抵扣券<br>
        <strong>·</strong> 20元卫仕营养膏优惠券<br>
        <strong>·</strong> 7折红狗化毛膏优惠券<br>
        <strong>·</strong> 免费领6L豆腐猫砂一袋<br>
        <br>
        购猫专享奖项：<br>
        <strong>·</strong> 1斤装混合冻干买一送一<br>
        <strong>·</strong> 麦德氏益生菌买一送一<br>
        <strong>·</strong> 7折渔极幼猫罐头优惠券<br>
        <strong>·</strong> 半价红狗化毛膏优惠券<br>
        <strong>·</strong> 免费领渔极罐头一份<br>
        <br>
        抽奖规则：<br>
        1.<strong>关注优宠熊公众号</strong><br>
        2.每个关注用户每日可免费获得<strong>一次</strong>抽奖机会<br>
        3.购猫用户每日可额外获得<strong>一次</strong>抽奖机会<br>
        3.所有抽中的奖项都可以在优惠券列表中查看<br>
        注：本次抽奖所得奖品，<strong>14日内有效</strong>，中奖后请及时使用<br>
        * 本次活动最终解释权归优宠熊所有
    </div>
</div>


<div class="zj-main" id="activity_detail" style="z-index: 20000">
    <div class="txzl"
         style="top: 8%; width: 80%;left: 10%;background-color: rgba(255,255,255, 0.95); border-radius: 10px;color: #444444;">
        <div class="zj_text" style="width: 80%;font-size: 13px;text-align: left;">
            抽奖规则：<br>
            1.<strong>关注优宠熊公众号</strong><br>
            2.每个关注用户每日可免费获得<strong>一次</strong>抽奖机会<br>
            3.购猫用户每日可额外获得<strong>一次</strong>抽奖机会<br>
            3.所有抽中的奖项都可以在优惠券列表中查看<br>
            注：本次抽奖所得奖品，<strong>14日内有效</strong>，中奖后请及时使用<br>
            * 本次活动最终解释权归优宠熊所有
        </div>
        <div class="close_zj" id="close_activity_detail" onclick="closeActivity()">确定</div>
    </div>
</div>


<script type="text/javascript"
        src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/banner07142243/jquery.min.js"></script>
<script type="text/javascript"
        src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200427/mui.min.js"></script>
<script type="text/javascript"
        src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200427/awardRotate.js"></script>
<script type="text/javascript" src="${base}/resources/public/luck/award1.js"></script>
<script type="text/javascript" src="${base}/resources/public/luck/award2.js"></script>
<script type="text/javascript" src="${base}/resources/public/luck/luck.js"></script>
<script type="text/javascript" src="${base}/resources/public/luck/luck2.js"></script>
<script type="text/javascript" src="${base}/resources/common.js"></script>
<script type="text/javascript" src="${base}/resources/zdialog.js"></script>
<script type="text/javascript" src="${base}/resources/public/luck/luckDialog.js"></script>

<script src="https://photo.youchongxiong.com/jquery-weui.min.js"></script>
<script src="http://res.wx.qq.com/open/js/jweixin-1.6.0.js"></script>
<script type="text/javascript">
    var msgBody = ""
    var luckArrayStr2FromBack = '${luck.goodVipArray}'
    var luckArrayStrFromBack = '${luck.goodArray}'
    var baseUrl = '${base}'

    var isPlay = '${luck.isPlay}'
    var isPay = '${luck.isPay}'
    var luckName = '${luck.luckName}'
    var luckMoney = '${luck.money}'

    var userIdFromBack = '${luck.userId}'

    var wxOrderNoFromBack = '${luck.wxOrderNo}'
    var moneyForBack = '${luck.money}'
    var showAuthLogin='${authLogin}'

    $(function () {
        if(showAuthLogin==0){
            showPic('https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200607/guanzhu.jpg')
        }
    })

    var turnplate2 = {
        restaraunts: [],
        colors: [],
        outsideRadius: 222,
        textRadius: 165,
        insideRadius: 65,
        startAngle: 0,
        bRotate: false
    };

    var turnplate = {
        restaraunts: [],
        colors: [],
        outsideRadius: 222,
        textRadius: 165,
        insideRadius: 65,
        startAngle: 0,
        bRotate: false
    };

    var Mar = document.getElementById("Marquee");
    var child_div = Mar.getElementsByTagName("div")
    var picH = 35;//移动高度
    var scrollstep = 3;//移动步幅,越大越快
    var scrolltime = 50;//移动频度(毫秒)越大越慢
    var stoptime = 3000;//间断时间(毫秒)
    var tmpH = 0;
    Mar.innerHTML += Mar.innerHTML;

    function start() {
        if (tmpH < picH) {
            tmpH += scrollstep;
            if (tmpH > picH) tmpH = picH;
            Mar.scrollTop = tmpH;
            setTimeout(start, scrolltime);
        } else {
            tmpH = 0;
            Mar.appendChild(child_div[0]);
            Mar.scrollTop = 0;
            setTimeout(start, stoptime);
        }
    }

    function rnd(n, m) {
        var random = Math.floor(Math.random() * (m - n + 1) + n);
        return random;
    }

    //页面所有元素加载完毕后执行drawRouletteWheel()方法对转盘进行渲染
    window.onload = function () {
        console.log("testst 开始了")
        drawRouletteWheel();
        drawRouletteWheel2();
        // loadingShow('张三的示范');
        // loadingHidden();  // 关闭窗口
        // showPic('https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200531/shuoming.jpg');
    };


    function gotoOne() {
        window.location.replace('${base}/wxPublic/luck/index1')
    }
</script>

</body>

</html>