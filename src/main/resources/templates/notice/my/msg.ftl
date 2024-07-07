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

        .weui-input {
            color: #aaaaaa;
            text-align: right;
        }

        .weui-right-sanjiao {
            width: 16px;
            height: 16px;
            margin-left: 3px;
        }

        .weui-cells__tips {
            margin-top: 16px;
            padding-bottom: 10px;
        }

        body {
            background-color: #eeeeee;
        }

        .weui-white-body {
            background-color: white;
        }

        .weui-black-line {
            width: 100%;
            height: 1px;
            padding-top: 3px;
            background-color: white;
        }

        .weui-cells__title {
            margin-top: 0em;
            padding-top: 0.77em;
        }

        .my-protect-div {
            width: 92%;
            height: auto;
            background-color: #fff;
            margin: 14px auto;
            display: flex;
            flex-direction: row;
            justify-content: flex-start;
            align-items: center;
            padding: 12px 6px;
            border-radius: 2px;
            border: 1px #e5e5e5 solid;
        }

        .ver-line {
            width: 100%;
            height: 1px;
            background-color: #e5e5e5;
            margin-top: 8px;
        }

        .my-protect-div .first {
            width: 16px;
            height: 16px;
            margin-left: 3px;
        }

        .my-protect-div .firstLogo {
            width: 44px;
            height: 44px;
            margin-left: 3px;
            border-radius: 50%;
        }

        .my-protect-div .second {
            margin-left: 6px;
            color: #444444;
        }

        .signDay{
            color: #b6b6b6;
            font-size: 13px;
        }

        .petMsg{
            color: #444444;
        }

        .my-protect-div .third {
            width: 16px;
            height: 16px;
            margin-left: auto;
        }
    </style>
</head>
<body ontouchstart>
<div class="weui-black-line"></div>
<div class="weui-white-body">
    <div class="weui-cells__title">个人返现信息</div>
    <div id="msgBox" class="weui-cells weui-cells_form">

        <div class="weui-cell">
            <div class="weui-cell__hd"><label class="weui-label">真实姓名</label></div>
            <div class="weui-cell__bd" onclick="nameClick()">
                <div id="zhifubaoName" class="weui-input">张三</div>
            </div>
            <img onclick="nameClick()" alt="优宠熊-真实姓名-修改" class="weui-right-sanjiao"
                 src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/kj/temp/right-sanjiao.png"/>
        </div>

        <div class="weui-cell ">
            <div class="weui-cell__hd">
                <label class="weui-label">手机号</label>
            </div>
            <div class="weui-cell__bd" onclick="phoneClick()">
                <div id="phoneNum" class="weui-input">13820612143</div>
            </div>
            <img alt="优宠熊-手机号码-修改" class="weui-right-sanjiao"
                 src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/kj/temp/right-sanjiao.png"/>
        </div>

        <div class="weui-cell">
            <div class="weui-cell__hd"><label class="weui-label">淘宝会员名</label></div>
            <div class="weui-cell__bd" onclick="taobaoClick()">
                <div id="taobaoName" class="weui-input">zhangsan</div>
            </div>
            <img onclick="taobaoClick()" alt="优宠熊-淘宝会员名-修改" class="weui-right-sanjiao"
                 src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/kj/temp/right-sanjiao.png"/>
        </div>

        <div class="weui-cell">
            <div class="weui-cell__hd"><label class="weui-label">支付宝账号</label></div>
            <div class="weui-cell__bd" onclick="zhifubaoClick()">
                <div id="zhifubaoName" class="weui-input">zhifuboazhanghao</div>
            </div>
            <img onclick="zhifubaoClick()" alt="优宠熊-支付宝账号-修改" class="weui-right-sanjiao"
                 src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/kj/temp/right-sanjiao.png"/>
        </div>

    </div>

    <div class="weui-cells__tips">注：真实姓名用于核实支付宝账号信息，避免因转账信息有误给您造成财产损失。
    </div>
</div>

<div class="weui-white-body" style="margin-top: 16px;padding-bottom: 20px">
    <div class="weui-cells__title">绑定签署协议</div>

    <div class="ver-line"></div>

    <div class="my-protect-div" >
        <img class="firstLogo" alt="优宠熊-支付宝账号-修改"
             src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/kj/temp/youchongixonglogo.png"/>
        <div class="second">
            <div class="petMsg">加菲猫 弟弟</div>
            <div class="signDay">签署日期：2019-10-09</div>
        </div>
        <img class="third" alt="优宠熊-支付宝账号-修改"
             src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/kj/temp/right-sanjiao.png"/>
    </div>

    <div class="my-protect-div" onclick="protectClick()">
        <img class="first" alt="优宠熊-支付宝账号-修改"
             src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/kj/temp/plus-free.png"/>
        <div class="second">绑定我签署的协议</div>
        <img class="third" alt="优宠熊-支付宝账号-修改"
             src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/kj/temp/right-sanjiao.png"/>
    </div>
</div>


<@js.js/>
<script>
    var baseResourcesPath = '${base}/resources/'
</script>

<script>

    var mCode = '${mCode}'
    var nickName = '${nickName}'

    function pb1Click() {
        pb1.open(0);
    }

    $(function () {
        $("#timeCode").hide();
    })

    var showFail = false
    var regSelf = /^[1][3,4,5,6,7,8,9][0-9]{9}$/;
    var sendMsgStr = ''
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


    function taobaoReg() {
        var taobaoName = $('#taobaoName').val()
        var taobaoReg = /^[*]{4,35}$/
        if (!taobaoReg.test(taobaoName)) {
            $.toast("淘宝会员名格式有误", "cancel");
        }
        return true;
    }

    function nameClick() {
        $.prompt({
            text: "请务必输入支付宝对应的真实姓名，否则会造成转账失败。",
            title: "输入真实姓名",
            onOK: function (text) {
                $.toptip('操作成功', 'success');
            },
            onCancel: function () {
                console.log("取消了");
            },
            input: ''
        });
    }

    function phoneClick() {
        $.alert("手机号码不可修改");
    }

    function taobaoClick() {
        $.prompt({
            text: "请确保和购物时的淘宝账号一致",
            title: "修改淘宝会员名",
            onOK: function (text) {
                $.toptip('操作成功', 'success');
            },
            onCancel: function () {
                console.log("取消了");
            },
            input: ''
        });
    }

    function zhifubaoClick() {
        $.prompt({
            text: "请确保支付宝收款账号真实无误，否则会造成转款失败",
            title: "修改支付宝账号",
            onOK: function (text) {
                $.toptip('操作成功', 'success');
            },
            onCancel: function () {
                console.log("取消了");
            },
            input: ''
        });
    }

    function protectClick() {
        $.prompt({
            text: "未找到签署的协议，请输入签署协议时填写的手机号码手动绑定",
            title: "输入手机号码",
            onOK: function (text) {
                $.toptip('操作成功', 'success');
            },
            onCancel: function () {
                console.log("取消了");
            },
            input: ''
        });
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

</script>

</body>
</html>