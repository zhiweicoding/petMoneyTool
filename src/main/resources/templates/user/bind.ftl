<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>绑定手机号</title>
    <@css.css/>
    <link rel="stylesheet" href="${base}/resources/shopCss/style.css"/>
    <style>
        .weui-footer {
            margin: 250px 0 10px;
        }
    </style>
</head>
<body ontouchstart>

<div class="weui-cells weui-cells_form" style="margin-top: 10px;padding-top: 5px;">
    <div class="weui-cell weui-cell_vcode">
        <div class="weui-cell__hd">
            <label class="weui-label">手机号</label>
        </div>
        <div class="weui-cell__bd">
            <input id="phoneNum" class="weui-input" type="tel" pattern="[1][3-9][0-9]{9}" placeholder="请输入手机号">
        </div>
        <div class="weui-cell__ft">
            <button id="sendBtn" class="weui-vcode-btn" onclick="sendMsg()">获取验证码</button>
            <button class="weui-vcode-btn" style="color: #999;width: 109px;" id="timeCode">120秒</button>
        </div>
    </div>
    <div class="weui-cell">
        <div class="weui-cell__hd"><label class="weui-label">验证码</label></div>
        <div class="weui-cell__bd">
            <input id="codeNum" class="weui-input" type="number" pattern="[0-9]*" placeholder="请输入手机验证码">
        </div>
    </div>
</div>
<#--<div class="weui-cells__title">以下内容参与免费活动用户需填写</div>-->
<#--<div class="weui-cells weui-cells_form">-->
<#--<div class="weui-cell">-->
<#--<div class="weui-cell__hd"><label class="weui-label">淘宝会员名</label></div>-->
<#--<div class="weui-cell__bd">-->
<#--<input id="taobaoName" class="weui-input" type="text" placeholder="请输入淘宝会员名">-->
<#--</div>-->
<#--</div>-->
<#--</div>-->
<#--<div class="weui-cells__tips"><a href="javascript:pb1Click()" id="pb1">查看自己的淘宝会员名</a></div>-->
<div class="weui-cells__tips">请确保填写的手机号码和签署协议时预留的手机号码一致，否则会造成绑定失败，无法接收宠物疫苗提醒和消费电子凭证。如有问题，请联系<a href="tel:18722268416" class="weui-footer__link">客服热线</a>
</div>

<label for="weuiAgree" class="weui-agree" style="margin-top: 30px;">
    <input id="weuiAgree" type="checkbox" class="weui-agree__checkbox" checked>
    <span class="weui-agree__text">
        同意绑定服务
    <#--<a href="javascript:void(0);">《相关条款》</a>-->
      </span>
</label>

<div class="weui-btn-area">
    <a class="weui-btn weui-btn_primary" href="javascript:saveBind()" id="showTooltips">绑定</a>
</div>

<div id="qrcodeFull" class='weui-popup__container '>
    <div class="weui-popup__overlay"></div>
    <div class="weui-popup__modal">
        <div class="weui-flex">
            <div class="weui-flex__item">
                <div class="placeholder">
                    <img style="width: 100%;"
                         src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/WechatIMG316.jpeg"/>
                </div>
            </div>
        </div>
        <a href="javascript:;" style="z-index: 12;position:fixed;margin-left: 10%;width: 80%; top: 85%;"
           class="weui-btn weui-btn_primary close-popup">关闭</a>
    </div>
</div>

<@js.js/>
<script>
    var baseResourcesPath = '${base}/resources/'
</script>

<script>

    var mCode = '${mCode}'

    var pb1 = $.photoBrowser({
        items: [
            {
                image: "https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/WechatIMG1042.png",
                caption: "<br/><br/>点击任意地方关闭提示"
            }, {
                image: "https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/WechatIMG1045.png",
                caption: "<br/><br/>点击任意地方关闭提示"
            }, {
                image: "https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/WechatIMG1047.png",
                caption: "<br/><br/>点击任意地方关闭提示"
            },

        ],

        onSlideChange: function (index) {
            console.log(this, index);
        },

        onOpen: function () {
            console.log("onOpen", this);
        },
        onClose: function () {
            console.log("onClose", this);
        }
    });

    function pb1Click() {
        pb1.open(0);
    }

    $(function () {
        $("#timeCode").hide();
    })

    var showFail = false
    var regSelf = /^[1][3,4,5,6,7,8,9][0-9]{9}$/;
    var sendMsgStr = ''

    function sendMsg() {
        var phoneNum = $('#phoneNum').val()
        if (!regSelf.test(phoneNum)) {
            $.toast("手机格式有误", "cancel");
        } else {
            reserveCode();
            $.post('${base}/user/bindPage/sendMsg', {
                phoneNum: phoneNum
            }, function (res) {
                if (res.msgCode == 10000) {
                    sendMsgStr = res.msgBody
                    $.toast("短信已发送", "success");
                } else {
                    $.toast("发送失败", "cancel");
                }

            })

        }
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

    function checkPass() {
        var pwd1 = $('#newPassword').val()
        var pwd2 = $('#makeSurePassword').val()
        if (pwd1 != pwd2) {
            $('#checkPasswordDiv').addClass('weui-cell_warn')
            $('#checkPasswordDivDiv').css('display', 'block');
        } else {
            $('#checkPasswordDiv').removeClass('weui-cell_warn')
            $('#checkPasswordDivDiv').css('display', 'none');
        }
    }

    function saveBind() {

        var phoneNum = $('#phoneNum').val();
        var codeNum = $('#codeNum').val();
        var weuiAgree = $('#weuiAgree').is(':checked')
        // var taobaoName = $('#taobaoName').val();
        if (!phoneNum) {
            $.toast("请先填写手机号码", "forbidden");
            return false;
        }
        if (!codeNum) {
            $.toast("请填写验证码", "forbidden");
            return false;
        }
        if (codeNum != sendMsgStr) {
            $.toast("输入验证码有误", "forbidden");
            return false;
        }
        if (!weuiAgree) {
            $.toast("请先同意协议", "forbidden");
            return false
        }
        // if (!taobaoName) {
        //     $.confirm("确定不需要输入淘宝会员名", "请确认", function () {
        //         taobaoName = 'null'
        //     }, function () {
        //         //取消操作
        //     });
        // }

        $.post('${base}/user/bindPage/bindUserPhone', {
            mCode: mCode,
            phoneNum: phoneNum,
            // taobaoName: taobaoName
        }, function (res) {
            $.hideLoading();
            if (res.msgCode == 10000) {
                var msgBody = res.msgBody
                if (msgBody == 0) {
                    window.location.replace('${base}/user/bindPage/msgSuccess')
                } else if (msgBody == -1) {
                    $.toast("绑定失败", "cancel");
                } else if (msgBody == 1) {
                    $.toast("手机号不存在", "cancel");
                }
            } else {
                $.toast("绑定失败", "cancel");
            }

        })


    }

</script>

</body>
</html>