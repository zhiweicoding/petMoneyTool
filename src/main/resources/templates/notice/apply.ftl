<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>申请免费购猫</title>
    <meta name="theme-color" content="#3baa24">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <meta http-equiv="Cache-Control" content="no-transform"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="applicable-device" content="pc,mobile">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no"/>
    <link rel="shortcut icon" href="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/bitbug_favicon.ico"
          type="image/x-icon"/>
    <link rel="stylesheet" href="https://cdn.bootcss.com/weui/1.1.2/style/weui.min.css">
    <link rel="stylesheet" href="https://cdn.bootcss.com/jquery-weui/1.2.0/css/jquery-weui.min.css">
    <link rel="stylesheet" href="${base}/resources/shopCss/demos.css"/>
    <link rel="stylesheet" href="${base}/resources/shopCss/style.css"/>
    <style>
        .weui-footer {
            margin: 250px 0 10px;
        }

        .weui-cell {
            font-size: 16px;
        }

        .weui-vcode-btn {
            font-size: 16px;
        }

        a {
            color: #586c94;
        }
    </style>

    <style scoped>

        #elmloading {
            width: 50px;
            height: 130px;
            /*position: fixed;*/
            /*top: 40%;*/
            /*left: 50%;*/
            /*margin-top: -65px;*/
            /*margin-left: -25px;*/
            /*z-index: 99999;*/
        }

        .imgbox {
            width: 50px;
            height: 50px;
            animation: myfirst 0.8s infinite;
        }

        .img {
            height: 100%;
            width: 100%;
            background: url('https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/1045647646-59b5e8b17c41a_articlex.png') no-repeat;
            background-size: 100%;
            animation: myf 5.6s infinite;
        }

        .loadfoot {
            height: 20px;
            position: absolute;
            bottom: 0px;
            width: 100%;
            text-align: center;
        }

        .footspan {
            display: inline-block;
            height: 10px;
            width: 20px;
            margin: 5px 0px;
            border-radius: 50%;
            animation: foot 0.8s infinite;
            background: radial-gradient(#7E7E7E, #EDEDED);
        }

        @keyframes myfirst {
            0% {
                margin-top: 0px;
            }
            50% {
                margin-top: 50px;
            }
            100% {
                margin-top: 0px;
            }
        }

        @keyframes myf {
            0% {
                background-position: 0% 0%;
            }
            14.2% {
                background-position: 0% 0%;
            }
            14.2001% {
                background-position: 0% 16%;
            }
            28.4% {
                background-position: 0% 16%;
            }
            28.4001% {
                background-position: 0% 33%;
            }
            42.6% {
                background-position: 0% 33%;
            }
            42.6001% {
                background-position: 0% 50%;
            }
            56.8% {
                background-position: 0% 50%;
            }
            56.8001% {
                background-position: 0% 67%;
            }
            71% {
                background-position: 0% 67%;
            }
            71.0001% {
                background-position: 0% 84%;
            }
            85.2% {
                background-position: 0% 84%;
            }
            85.2001% {
                background-position: 0% 100%;
            }
            100% {
                background-position: 0% 100%;
            }
        }

        @keyframes foot {
            0% {
                width: 20px;
            }
            50% {
                width: 100%;
            }
            100% {
                width: 20px;
            }
        }

        .loadingWidth {
            width: 9em;
            visibility: visible;
        }
    </style>
</head>
<body ontouchstart>
<div style="width: 100%;height: 1px;padding-top: 3px;"></div>
<div class="weui-cells__title">验证手机号码</div>
<div id="msgBox" class="weui-cells weui-cells_form">

    <div class="weui-cell ">
        <div class="weui-cell__hd">
            <label class="weui-label">手机号</label>
        </div>
        <div class="weui-cell__bd">
            <input id="phoneNum" class="weui-input" type="tel" pattern="[1][3-9][0-9]{9}" placeholder="请输入手机号">
        </div>
    </div>
    <div class="weui-cell weui-cell_vcode">
        <div class="weui-cell__hd"><label class="weui-label">验证码</label></div>
        <div class="weui-cell__bd">
            <input id="codeNum" class="weui-input" type="number" pattern="[0-9]*" placeholder="请输入手机验证码">
        </div>
        <div class="weui-cell__ft">
            <button id="sendBtn" class="weui-vcode-btn" onclick="sendMsg()">获取验证码</button>
            <button class="weui-vcode-btn" style="color: #999;width: 109px;" id="timeCode">120秒</button>
        </div>
    </div>


</div>
<div class="weui-cells__title">绑定消费账号</div>
<div id="msgBox" class="weui-cells weui-cells_form">


    <div class="weui-cell">
        <div class="weui-cell__hd"><label class="weui-label">淘宝会员名</label></div>
        <div class="weui-cell__bd">
            <input id="taobaoName" class="weui-input" type="text" pattern="[*]{4,35}" placeholder="请输入淘宝会员名">
        </div>
    </div>
</div>
<div class="weui-cells__tips"><a href="javascript:pb1Click()" id="pb1">如何找到淘宝会员名</a></div>

<div class="weui-cells__title">绑定返款账号</div>
<div id="msgBox" class="weui-cells weui-cells_form">


    <div class="weui-cell">
        <div class="weui-cell__hd"><label class="weui-label">支付宝账号</label></div>
        <div class="weui-cell__bd">
            <input id="zhifubaoName" class="weui-input" type="text" pattern="[*]{5,}" placeholder="请输入收款账号">
        </div>
        <#--<div class="weui-cell__ft">-->
        <#--<button id="sendBtn" class="weui-vcode-btn" onclick="sendZhifubao()">验证账号</button>-->
        <#--</div>-->
    </div>

</div>

<div class="weui-cells__tips">请核对填写的支付宝收款账号是否正确，否则无法收到返现款。
</div>

<div class="weui-cells__tips"><a href="tel:18302284459">客服热线</a></div>

<label for="weuiAgree" class="weui-agree" style="margin-top: 30px;">
    <input id="weuiAgree" type="checkbox" class="weui-agree__checkbox" checked>
    <span class="weui-agree__text">
        阅读并同意
    <a href="javascript:void(0);">《免费购猫条款》</a>
      </span>
</label>

<div class="weui-btn-area">
    <a class="weui-btn weui-btn_primary" href="javascript:saveBind()" id="showTooltips">申请</a>

</div>

<div id="backMack" class="weui-mask_transparent" style=" visibility: visible;"></div>
<div id="backLoading" class="weui-toast weui_loading_toast loadingWidth">
    <div class="weui_loading"><i class="weui-loading weui-icon_toast"></i></div>
    <#--<div id="elmloading">-->
    <#--<div class="imgbox">-->
    <#--<div class="img">-->
    <#--</div>-->
    <#--</div>-->
    <#--<div class="loadfoot">-->
    <#--<span class="footspan"></span>-->
    <#--</div>-->
    <#--</div>-->
    <p id="backContent" class="weui-toast_content">上传账号信息</p>
</div>

<@js.js/>
<script>
    var baseResourcesPath = '${base}/resources/'
</script>

<script>

    var mCode = '${mCode}'
    var nickName = '${nickName}'

    $(function () {
        $('#backMack').hide();
        $('#backLoading').hide();
    })

    var pb1 = $.photoBrowser({
        items: [
            {
                image: "https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20191005/WechatIMG2521.png",
                caption: "<br/><br/>点击任意地方关闭提示"
            }, {
                image: "https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20191005/WechatIMG2519.png",
                caption: "<br/><br/>点击任意地方关闭提示"
            },

        ],

        onSlideChange: function (index) {
            console.log(this, index);
        },

        onOpen: function () {
            console.log("onOpen", this);
            $('.weui-cells_form').hide()
            $('.weui-cells__title').hide()
        },
        onClose: function () {
            console.log("onClose", this);
            $('.weui-cells_form').show()
            $('.weui-cells__title').show()
        }
    });

    function pb1Click() {
        pb1.open(0);
    }

    $(function () {
        $("#timeCode").hide();
    })

    var showFail = false
    var sendMsgStr = ''
    var regSelf = /^[1][3,4,5,6,7,8,9][0-9]{9}$/;
    var sendMsgPhone = ''

    function sendMsg() {
        var phoneNum = $('#phoneNum').val()
        if (!regSelf.test(phoneNum)) {
            $.toast("手机格式有误", "cancel");
        } else {
            reserveCode();
            $.post('${base}/apply/sendMsg', {
                phoneNum: phoneNum
            }, function (res) {
                if (res.msgCode == 10000) {
                    sendMsgStr = res.msgBody
                    sendMsgPhone = phoneNum
                    $.toast.prototype.defaults = {
                        duration: 1500
                    }
                    $.toast("短信已发送", "success", 1000);
                } else {
                    $.toast.prototype.defaults = {
                        duration: 2500
                    }
                    $.toast("发送失败", "cancel", 1000);
                }

            })

        }
    }

    function sendZhifubao() {
        var zhifubaoName = $('#zhifubaoName').val()
        if ('' == zhifubaoName) {
            $.toast("账号输入有误", "cancel");
        } else {
            $.showLoading("测试");

            // setTimeout(function() {
            //     $.hideLoading();
            // }, 3000)
            <#--$.post('${base}/apply/sendZhifubao', {-->
            <#--zhifubao: zhifubao-->
            <#--}, function (res) {-->
            <#--if (res.msgCode == 10000) {-->
            <#--sendMsgStr = res.msgBody-->
            <#--$.toast("短信已发送", "success");-->
            <#--} else {-->
            <#--$.toast("发送失败", "cancel");-->
            <#--}-->

            <#--})-->

        }
    }

    function taobaoReg() {
        var taobaoName = $('#taobaoName').val()
        var taobaoReg = /^[*]{4,35}$/
        if (!taobaoReg.test(taobaoName)) {
            $.toast("淘宝会员名格式有误", "cancel");
        }
        return true;
    }

    function reserveCode() {
        //显示60s倒计时，隐藏‘获取验证码’
        var time = 0;
        //倒计时-打开
        $("#timeCode").show();
        //获取-隐藏
        $("#sendBtn").hide();
        timer = setInterval(function () {
            time = parseInt($("#timeCode").html());
            time--;
            $("#timeCode").html(time + "秒");
            //60s后停止定时器
            if (time == 0) {
                $("#timeCode").html("120秒").hide();
                $("#sendBtn").show();
                clearInterval(timer);
            }
        }, 1000)
    }

    function saveBind() {

        var phoneNum = $('#phoneNum').val();
        var codeNum = $('#codeNum').val();
        var weuiAgree = $('#weuiAgree').is(':checked')
        var taobaoName = $('#taobaoName').val();
        var zhifubaoName = $('#zhifubaoName').val();

        if (!phoneNum) {
            $.toast("请先填写手机号码", "cancel");
            return false;
        }
        if (!codeNum) {
            $.toast("请填写验证码", "cancel");
            return false;
        }
        if (codeNum != sendMsgStr) {
            $.toast("输入验证码有误", "cancel");
            return false;
        }

        if (sendMsgPhone != phoneNum) {
            $.toast("请重新申请验证码", "cancel");
            return false;
        }
        if (!weuiAgree) {
            $.toast("请先同意协议", "cancel");
            return false
        }

        if (!taobaoName || taobaoName == '' || taobaoName.length <= 1) {
            $.toast("淘宝会员名有误", "cancel");
            return false
        }
        if (!zhifubaoName || zhifubaoName == '') {
            $.toast("请输入收款账号", "cancel");
            return false
        }
        // $.showLoading("验证账号..");
        $('#backMack').show();
        $('#backLoading').show();
        $('#backLoading').animate({opacity: 1});

        $.post('${base}/apply/applyIt', {
            zhifubao: zhifubaoName,
            phoneNum: phoneNum,
            taobaoNickName: taobaoName,
            openId: mCode,
            nickName: nickName
        }, function (res, status) {
            setTimeout(function () {
                $('#backContent').text('验证手机账号..')
                setTimeout(function () {
                    $('#backContent').text('验证淘宝账号..')
                    setTimeout(function () {
                        $('#backContent').text('验证支付宝信用..')
                        setTimeout(function () {
                            $('#backContent').text('提交申请..')
                            setTimeout(function () {
                                $('#backMack').hide()
                                $('#backLoading').hide()
                                if (res.msgCode == 10000) {
                                    var msgBody = res.msgBody
                                    if (msgBody == 'SUCCESS') {
                                        $.toast("提交成功", "success");
                                        window.location.replace('${base}/apply/msgLoading')
                                    } else if (msgBody == 'FAIL') {
                                        $.toast("申请失败", "cancel");
                                    } else if (msgBody == 'PAYER_PAYEE_CANNOT_SAME' || msgBody == 'PAYEE_NOT_EXIST') {
                                        $.toast("收款账号有误", "cancel");
                                    } else if (msgBody == 'SAME') {
                                        $.toast("请勿重复申请", "cancel");
                                    }
                                } else {
                                    $.toast("申请失败", "cancel");
                                }
                            }, 3000)
                        }, 3600)
                    }, 2500)
                }, 1500)
            }, 1500)
        })


    }

</script>

</body>
</html>