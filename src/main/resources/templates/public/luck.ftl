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

    </style>
</head>

<body ontouchstart>
<div>
    <img alt="优宠熊网络客服" class="kefuImg" onclick="openActivity()"
         src='https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/activitydetail.jpg'/>
</div>
<div class="toggleFather">
    <button class="toggle" onclick="gotoCat()">抽取免费用品</button>
    <b class="shan"></b>
</div>

<!-------------抽奖页面-------------->
<div class="ml-main" id="ml-main">
    <img class="main_back" src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200427/back.png"/>
    <img class="animated zoomIn img_2_1"
         src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200427/img_1.png">
    <img class="animated bounceIn img_2_2"
         src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200427/img_2.png">
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
        <strong>·</strong> 238元平安保险抵用券<br>
        <strong>·</strong> 50元抵扣100元<br>
        <strong>·</strong> 成猫购猫7折优惠<br>
        <strong>·</strong> 458元新手购猫用品一套<br>
        <strong>·</strong> 100元抵扣200元<br>
        <strong>·</strong> 500元购猫抵扣券<br>
        <strong>·</strong> 所有猫咪半价购猫一次<br>
        <br>
        抽奖规则：<br>
        1.<strong>关注优宠熊公众号</strong><br>
        2.每个关注用户可免费获得<strong>一次</strong>抽奖机会<br>
        3.代金券只可用于购猫尾款<br>
        注：本次抽奖所得奖品，<strong>三日内有效</strong>，中奖后请及时领取<br>
        * 本次活动最终解释权归优宠熊所有
    </div>
</div>

<div class="zj-main" id="activity_detail" style="z-index: 20000">
    <div class="txzl"
         style="top: 8%; width: 80%;left: 10%;background-color: rgba(255,255,255, 0.95); border-radius: 10px;color: #444444;">
        <div class="zj_text" style="width: 80%;font-size: 13px;text-align: left;">
            奖品详细<br>
            <strong>·</strong> 238元平安保险抵用券<br>
            <strong>·</strong> 50元抵扣100元<br>
            <strong>·</strong> 成猫购猫7折优惠<br>
            <strong>·</strong> 458元新手购猫用品一套<br>
            <strong>·</strong> 100元抵扣200元<br>
            <strong>·</strong> 500元购猫抵扣券<br>
            <strong>·</strong> 所有猫咪半价购猫一次<br>
            <br>
            抽奖规则：<br>
            1.<span style="font-size: 17px;font-weight: bolder;">关注优宠熊公众号</span><br>
            2.每个关注用户可免费获得<span style="font-size: 16px;font-weight: bolder;">一次</span>抽奖机会<br>
            3.代金券只可用于购猫尾款<br>
            注：本次抽奖所得奖品，<span style="font-size: 16px;font-weight: bolder;">三日内有效</span>，中奖后请及时领取<br>
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
<script type="text/javascript" src="${base}/resources/public/luck/award.js"></script>
<script type="text/javascript" src="${base}/resources/common.js"></script>
<script type="text/javascript" src="${base}/resources/zdialog.js"></script>
<script type="text/javascript" src="${base}/resources/public/luck/luckDialog.js"></script>

<script src="https://photo.youchongxiong.com/jquery-weui.min.js"></script>
<script src="http://res.wx.qq.com/open/js/jweixin-1.6.0.js"></script>
<script type="text/javascript">
    var msgBody = ""
    var wxOrderNo = ''
    var realMoney = ''
    var userIdFromBack = '${luck.userId}'
    var luckArray = []
    var luckArrayStr = '${luck.luckArray}'
    var arr = luckArrayStr.split(',');
    for (var index in arr) {
        luckArray.push(arr[index])
    }
    var lastOne = arr[arr.length - 1]
    var isPlay = '${luck.isPlay}'

    $(function () {

        // console.log(showAuthLogin)

        <#--if ('${authLogin}' == "-1") {-->
            <#--showPic('https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200607/guanzhu.jpg')-->
        <#--}-->

        $("img").on("click", function () {
            return false;
        });

        setTimeout(start, stoptime);

        //动态添加大转盘的奖品与奖品区域背景颜色
        turnplate.restaraunts = luckArray;
        turnplate.colors = ["#FBDB00", "#FACA00", "#FBDB00", "#FACA00", "#FBDB00", "#FACA00", "#FBDB00", "#FACA00", "#FFEB64"];

        var rotateTimeOut = function () {
            $('#wheelcanvas').rotate({
                angle: 0,
                animateTo: 2160,
                duration: 20000,
                callback: function () {
                    alert('网络超时，请检查您的网络设置！');
                }
            });
        };


        //旋转转盘 item:奖品位置; txt：提示语;
        var rotateFn = function (item, txt, data) {
            var angles = item * (360 / turnplate.restaraunts.length) - (360 / (turnplate.restaraunts.length * 2));
            if (angles < 270) {
                angles = 270 - angles;
            } else {
                angles = 360 - angles + 270;
            }
            $('#wheelcanvas').stopRotate();
            $('#wheelcanvas').rotate({
                angle: 0,
                animateTo: angles + 1800,
                duration: 20000,
                callback: function () {
                    $.showLoading();
                    var formData = new FormData()

                    formData.append('msg', lastOne);
                    formData.append('couponCardType', 1);
                    formData.append('configId', "126");
                    formData.append('goodType', "1");
                    $.ajax({
                        url: '${base}/wxPublic/luck/save',
                        type: 'POST',
                        cache: false,
                        data: formData,
                        processData: false,
                        dataType: 'json',
                        contentType: false,
                        success: function (res) {
                            $.hideLoading();
                            if (res.msgCode == 10000) {
                                msgBody = res.msgBody
                                wxOrderNo = msgBody.wxOrderNo
                                realMoney = msgBody.money
                                var dialogBean = msgBody.dialogBean
                                showLuckDialog(dialogBean.money, dialogBean.title, dialogBean.detail, dialogBean.buttonName, dialogBean.functionName)
                                if (dialogBean.needSave) {
                                    save();
                                }
                            } else if (res.msgCode == 10001) {
                                $.toast("领取失败", "cancel", function (toast) {
                                    console.log(toast);
                                });
                            } else if (res.msgCode == 10003) {
                                window.location.reload()
                            }

                        }
                    })
                    turnplate.bRotate = !turnplate.bRotate;
                }
            });
        };

        /********弹窗页面控制**********/

        $('#close_zj').click(function () {
            window.location.reload();
            $('#zj-main').fadeOut();
            $('#tx-main').fadeIn();//提醒框显示
            //判断用户是否确认放弃
            $(".do").click(function () {//点确认就默认放弃
                $('#tx-main').fadeOut();
                theEnd();
                save();
            });
            $(".not_do").click(function () {//点取消就回到提交页面
                $('#tx-main').fadeOut();
                $('#zj-main').fadeIn();
            });

            $('#ml-main').fadeIn();

        });

        /********抽奖开始**********/
        $('#tupBtn').click(function () {
            var formData2 = new FormData()
            formData2.append('userId', userIdFromBack);
            $.showLoading();
            $.ajax({
                url: '${base}/wxPublic/luck/isCatLuck',
                type: 'POST',
                cache: false,
                data: formData2,
                processData: false,
                dataType: 'json',
                contentType: false,
                success: function (res) {
                    $.hideLoading();
                    var inMsgBody = res.msgBody
                    wxOrderNo = inMsgBody.wxOrderNo
                    realMoney = inMsgBody.money
                    var catLife = inMsgBody.catLife
                    var dialogBean = inMsgBody.dialogBean
                    if (res.msgCode == 10000) {
                        switch (catLife) {
                            case 0:
                                if (turnplate.bRotate) return;
                                turnplate.bRotate = !turnplate.bRotate;
                                var item = luckArray.length;
                                var data = {"msg": lastOne};
                                rotateFn(item, turnplate.restaraunts[item - 1], data);
                                break;
                            case 1:
                                $.DialogByZ.Confirm({
                                    Title: "温馨提示", Content: "您已经抽取过一次幸运转盘</br>点击确定查看您的优惠", FunL: function () {
                                        $.DialogByZ.Close();
                                        showLuckDialog(dialogBean.money, dialogBean.title, dialogBean.detail, dialogBean.buttonName, dialogBean.functionName)
                                    }, FunR: function () {
                                        $.DialogByZ.Close();
                                    }
                                })
                                break;
                            case -2:
                                //不可点击 当天已经点击并付款
                                showLuckToast("您已经抽取了幸运转盘，您可以点击查看优惠，来使用优惠券。", '查看优惠券', 'goThisUrl()')
                                break;
                            default:
                                break
                        }

                    } else if (res.msgCode == 10001) {
                        $.toast("获取失败", "cancel", function (toast) {
                            console.log(toast);
                        });
                    } else if (res.msgCode == 10003) {
                        window.location.reload()
                    }

                }
            })

        })

        if (isPlay != '0') {
            $('#activity_detail').show();
        }

    });

    function goUrl() {
        window.location.replace("${base}/wxPublic/discounts/index/${luck.userId}")
    }

    function goThisUrl() {
        window.location.href = "${base}/wxPublic/discounts/index/${luck.userId}";
    }

    function openActivity() {
        $('#activity_detail').show();
    }

    function closeActivity() {
        $('#activity_detail').hide();
    }

    function closeCoupon() {
        var formData2 = new FormData()
        var luckId = msgBody.luckId
        formData2.append('luckId', luckId);
        $.showLoading();
        $.ajax({
            url: '${base}/wxPublic/luck/sendNotice',
            type: 'POST',
            cache: false,
            data: formData2,
            processData: false,
            dataType: 'json',
            contentType: false,
            success: function (res) {
                $.hideLoading();
                if (res.msgCode == 10000) {
                    window.location.replace("${base}/wxPublic/discounts/index/${luck.userId}")
                } else if (res.msgCode == 10001) {
                    $.toast("领取失败", "cancel", function (toast) {
                        console.log(toast);
                    });
                } else if (res.msgCode == 10003) {
                    window.location.reload()
                }

            }
        })
    }

    function payMoney(payIndex) {
        var formData1 = new FormData()
        if (payIndex === 1) {
            realMoney = 50
        } else {
            realMoney = 100
        }
        formData1.append('wxOrderNo', wxOrderNo);
        formData1.append('money', realMoney);
        $.showLoading();
        $.ajax({
            url: '${base}/wxPublic/luck/createPackage',
            type: 'POST',
            cache: false,
            data: formData1,
            processData: false,
            dataType: 'json',
            contentType: false,
            success: function (res) {
                $.hideLoading();
                if (res.msgCode == 10000) {
                    var resultMsg = res.msgBody;
                    onBridgeReady(resultMsg.appId,
                        resultMsg.signTimeStamp,
                        resultMsg.signNonceStr,
                        resultMsg.signPackage,
                        resultMsg.signType,
                        resultMsg.signPaySign);
                } else if (res.msgCode == 10001) {
                    $.toast("领取失败", "cancel", function (toast) {
                        console.log(toast);
                    });
                } else if (res.msgCode == 10003) {
                    window.location.reload()
                }

            }
        })
    }

    function onBridgeReady(appid, timeStamp, nonceStr, packageStr, signType, paySign) {
        WeixinJSBridge.invoke(
            'getBrandWCPayRequest', {
                "appId": appid,
                "timeStamp": timeStamp,
                "nonceStr": nonceStr,
                "package": packageStr,
                "signType": signType,
                "paySign": paySign
            },
            function (res) {
                if (res.err_msg == "get_brand_wcpay_request:ok") {
                    $('#maskApply').css('visibility', 'hidden');
                    $('#maskApply').css('opacity', '0');
                    $('#dialogApply').css('visibility', 'hidden');
                    $('#dialogApply').css('opacity', '0');
                    $('#no_pay_main').fadeOut()
                    $('#zj-main2').fadeOut()

                    $.modal({
                        title: "支付成功",
                        text: "您已支付成功，优惠已发放到您的优惠卡包中，点击查看优惠即可查看",
                        buttons: [
                            {
                                text: "取消", className: "default", onClick: function () {
                                    wx.closeWindow();
                                }
                            },
                            {
                                text: "查看优惠", onClick: function () {
                                    window.location.replace("${base}/wxPublic/discounts/index/${luck.userId}")
                                }
                            }
                        ]
                    });
                } else if (res.err_msg == 'get_brand_wcpay_request:fail') {
                    $.toast("支付失败", "cancel", function (toast) {
                        console.log(toast);
                    });
                } else if (res.err_msg == 'get_brand_wcpay_request:cancel') {
                    $.toast("取消支付", "cancel", function (toast) {
                        console.log(toast);
                    });
                }
                // alert(res.err_code + res.err_desc + res.err_msg);
            }
        );
    }


    function gotoCat() {
        window.location.replace('${base}/wxPublic/luck/index2')
    }
</script>

</body>

</html>