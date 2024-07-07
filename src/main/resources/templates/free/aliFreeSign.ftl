<!DOCTYPE html>
<!-- A11Y：注意设置页面的 lang 属性 -->
<html lang="zh">
<head>
    <meta charset="utf-8"/>
    <title>优宠熊免费购猫</title>
    <meta name="description" content=""/>
    <meta name="keywords" content=""/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <meta name="apple-mobile-web-app-status-bar-style" content="black"/>
    <meta name="format-detection" content="telephone=no, email=no"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=0"/>
    <!-- A11Y：如果有无障碍方面的需求，建议使用下面的 viewport 设置，不要禁止页面缩放 -->
    <!--<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />-->

    <link rel="apple-touch-icon-precomposed"
          href="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/bitbug_favicon.ico">
    <link rel="shortcut icon" href="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/bitbug_favicon.ico"
          type="image/x-icon">

    <link rel="stylesheet" href="https://gw.alipayobjects.com/as/g/antui/antui/10.1.32/dpl/antui.css"/>
    <link rel="stylesheet" href="https://gw.alipayobjects.com/as/g/antui/antui/10.1.32/dpl/widget/toast.css">
    <link rel="stylesheet" href="https://gw.alipayobjects.com/as/g/antui/antui/10.1.32/dpl/widget/dialog.css">

    <link rel="stylesheet" href="${base}/resources/ali/aliFreeSign.css">

    <style>
        .thisPanel {
            width: 120px;
            height: 90px;
            -webkit-background-size: 120px 90px;
            text-align: center;
            margin: 0 auto;
        }

        .noticeMsg {
            margin-top: 16px;
            margin-bottom: 16px;
            font-size: 14px;
            line-height: normal;
            color: #999;
        }

        .resultPanelDiv {
            display: none;
            background: #fff;
            text-align: center;
            width: 100%;
            height: 100%;
            display: -webkit-flex;
            display: flex;
            flex-direction: column;
            -webkit-flex-direction: column;
            padding-top: 22px;
            box-sizing: border-box;
            justify-content: space-between;
            -webkit-justify-content: space-between;
            height: auto;
            padding-top: 20px;
            padding-bottom: 20px;
        }
    </style>
</head>
<body ontouchstart="">
<a href="https://youchongxiong.sobot.com/chat/h5/v2/index.html?sysnum=d7953744f07b4b4a89ace7d2a41d5e27&channelid=1">
    <img alt="优宠熊网络客服" class="kefuImg" src='https://photo.youchongxiong.com/%E5%AE%A2%E6%9C%8D.png'/>
</a>
<section class="aui-flexView">
    <section class="aui-scrollView">
        <div class="aui-change-banner">
            <img src="https://photo.youchongxiong.com/smallbanner.jpg" alt="">
        </div>
        <div class="aui-auto-form ">
            <div class="aui-auto-box">
                <div class="aui-palace">
                    <a href="javascript:;" id="freeStep1" class="aui-palace-grid">
                        <div class="aui-palace-grid-icon">
                            <img src="${base}/resources/ali/img/sign/itempink-001.jpg" alt="">
                        </div>
                        <div class="aui-palace-grid-text pink">
                            <h2>在线申请</h2>
                        </div>
                    </a>
                    <a href="javascript:;" id="freeStep2" class="aui-palace-grid">
                        <div class="aui-palace-grid-icon">
                            <img src="${base}/resources/ali/img/sign/itemgrey-002.jpg" alt="">
                        </div>
                        <div class="aui-palace-grid-text grey">
                            <h2>信息审核</h2>
                        </div>
                    </a>
                    <a href="javascript:;" id="freeStep3" class="aui-palace-grid">
                        <div class="aui-palace-grid-icon">
                            <img src="${base}/resources/ali/img/sign/itemgrey-003.jpg" alt="">
                        </div>
                        <div class="aui-palace-grid-text grey">
                            <h2>支付宝审核</h2>
                        </div>
                    </a>
                    <a href="javascript:;" id="freeStep4" class="aui-palace-grid">
                        <div class="aui-palace-grid-icon">
                            <img src="${base}/resources/ali/img/sign/itemgrey-004.jpg" alt="">
                        </div>
                        <div class="aui-palace-grid-text grey">
                            <h2>人工审核</h2>
                        </div>
                    </a>
                </div>

                <div action="" class="aui-auto-inp" id="infoPanelDiv">
                    <div class="aui-flex">
                        <label>姓名</label>
                        <div class="aui-flex-box">
                            <input type="text" id="realName" placeholder="请输入姓名">
                        </div>
                    </div>
                    <div class="aui-flex">
                        <label>淘宝会员名</label>
                        <div class="aui-flex-box">
                            <input type="text" id="taobaoName" placeholder="请输入淘宝会员名">
                        </div>
                    </div>
                    <div class="aui-flex">
                        <label>手机码</label>
                        <div class="aui-flex-box">
                            <input type="text" id="phone1" autocomplete="off" placeholder="请输入手机号码">
                        </div>
                    </div>
                    <div class="aui-flex">
                        <label>短信验证码</label>
                        <div class="aui-flex-box">
                            <input type="text" id="code1" autocomplete="off" placeholder="请输入验证码">
                            <input id="btnSendCode1" type="button" class="btn btn-default" value="获取验证码"
                                   onclick="sendMessage1()"/>
                        </div>
                    </div>

                    <span style="font-size: 12px;color: #999999;margin-bottom: 5px;">请仔细核对真实姓名、淘宝会员名是否有误，否则会造成补贴无法发放。</span>
                    <button class="aui-apply-btn" onClick="binding()">立即申请</button>

                </div>

                <div id="resultPanelDiv" class="resultPanelDiv">
                    <img class="thisPanel" id="thisPanel" src="https://photo.youchongxiong.com/checkoutingv1.png"
                         alt="youchongxiong"/>
                    <div id="noticeMsg" class="noticeMsg">${urlStatusMsg}</div>
                </div>
            </div>
        </div>

    </section>
</section>

<div class="am-toast text" id="toastHelp" role="alert" aria-live="assertive" style="display: none;">
    <div class="am-toast-text" id="toastHelpSon">
        <span class="am-icon toast warn" aria-hidden="true"></span>
        <span id="toastHelpSonSpan">发送成功</span>
    </div>
</div>

<div class="am-toast" role="alert" id="applyFail" style="display: none;">
    <div class="am-toast-text" id="applyFailSon">
        <span class="am-icon toast fail" aria-hidden="true"></span>
        <span id="applyFailSonSpan">失败</span>
    </div>
</div>

<div class="am-toast" role="alert" aria-live="assertive" id="showLoading" style="display: none;">
    <div class="am-toast-text">
        <div class="am-loading-indicator white">
            <div class="am-loading-item"></div>
            <div class="am-loading-item"></div>
            <div class="am-loading-item"></div>
        </div>
        加载中...
    </div>
</div>
<div class="am-dialog-mask "></div>
<div class="am-dialog " role="dialog" aria-hidden="false">
    <div class="am-dialog-wrap">
        <div class="am-dialog-body">
            <p class="am-dialog-brief">已完成支付，请点击确定,查看结果</p>
        </div>
        <div class="am-dialog-footer">
            <a class="am-dialog-button" onclick="closeThis()">取消</a>
            <a class="am-dialog-button" href="javascript:location.reload()">确定</a>
        </div>
    </div>
</div>

<script src="https://gw.alipayobjects.com/as/g/h5-lib/alipayjsapi/3.1.1/alipayjsapi.inc.min.js"></script>

<script src="https://a.alipayobjects.com/static/fastclick/1.0.6/fastclick.min.js"></script>
<script src="${base}/resources/ali/js/jquery.min.js"></script>
<script>
    $(function () {
        FastClick.attach(document.body);
    });
</script>
<script type="text/javascript">
    var count = 60;
    var InterValObj1;
    var curCount1;
    var sendMsgStr = ''
    var regSelf = /^[1][3,4,5,6,7,8,9][0-9]{9}$/;
    var sendMsgPhone = ''
    var userId = '${userId}'
    var urlStatus = '${urlStatus}'
    var urlStatusMsg = '${urlStatusMsg}'

    $(function () {
        if (urlStatus == 1) {
            changeHead('pink', 1)
            changeHead('grey', 2)
            changeHead('grey', 3)
            changeHead('grey', 4)
            $('#resultPanelDiv').css('display', 'block')
            $('#infoPanelDiv').css('display', 'none')
        } else if (urlStatus == 2) {
            changeHead('pink', 1)
            changeHead('pink', 2)
            changeHead('grey', 3)
            changeHead('grey', 4)
            $('#resultPanelDiv').css('display', 'block')
            $('#infoPanelDiv').css('display', 'none')
        } else if (urlStatus == 3) {
            changeHead('pink', 1)
            changeHead('pink', 2)
            changeHead('pink', 3)
            changeHead('grey', 4)
            $('#resultPanelDiv').css('display', 'block')
            $('#infoPanelDiv').css('display', 'none')
        } else if (urlStatus == 4) {
            changeHead('pink', 1)
            changeHead('pink', 2)
            changeHead('pink', 3)
            changeHead('pink', 4)
            $('#thisPanel').attr("src", "https://photo.youchongxiong.com/checkoutsuccessv1.jpg");
            $('#resultPanelDiv').css('display', 'block')
            $('#infoPanelDiv').css('display', 'none')

        } else if (urlStatus == 5) {
            changeHead('pink', 1)
            changeHead('red', 2)
            changeHead('grey', 3)
            changeHead('grey', 4)
            $('#thisPanel').attr('src', 'https://photo.youchongxiong.com/checkoutfailv1.jpg');
            $('#resultPanelDiv').css('display', 'block')
            $('#infoPanelDiv').css('display', 'none')
        } else if (urlStatus == 8) {
            changeHead('pink', 1)
            changeHead('pink', 2)
            changeHead('pink', 3)
            changeHead('red', 4)
            $('#thisPanel').attr('src', 'https://photo.youchongxiong.com/checkoutfailv1.jpg');
            $('#resultPanelDiv').css('display', 'block')
            $('#infoPanelDiv').css('display', 'none')
        } else if (urlStatus == -1) {
            changeHead('pink', 1)
            changeHead('grey', 2)
            changeHead('grey', 3)
            changeHead('grey', 4)
            $('#resultPanelDiv').css('display', 'none')
            $('#infoPanelDiv').css('display', 'block')
        }

    })

    //aui-palace-grid-text pink
    function changeHead(color, step) {
        $('#freeStep' + step).find('img').attr('src', '${base}/resources/ali/img/sign/item' + color + '-00' + step + '.jpg');
        $('#freeStep' + step).children('div').eq(1)
            .removeClass('pink').removeClass('red').removeClass('grey')
            .addClass(color)
    }

    function sendMessage1() {
        curCount1 = count;
        var phoneNum = $.trim($('#phone1').val());
        if (!regSelf.test(phoneNum)) {
            toastHelp("请输入有效的手机号码");
        } else {
            $("#btnSendCode1").attr("disabled", "true");
            $("#btnSendCode1").val(+curCount1 + "秒再获取");
            InterValObj1 = window.setInterval(SetRemainTime1, 1000);

            $.post('${base}/apply/sendMsg', {
                phoneNum: phoneNum
            }, function (res) {
                if (res.msgCode == 10000) {
                    sendMsgStr = res.msgBody
                    sendMsgPhone = phoneNum
                    toastHelp("短信已发送");
                } else {
                    toastHelp("发送失败");
                }

            })
        }

    }

    function toastHelp(msg) {
        $('#toastHelp').css('display', 'block')
        $("#toastHelpSonSpan").text(msg);
        setTimeout(function () {
            $("#toastHelp").css('display', 'none');
        }, 2000)
    }

    function applyFail(msg) {
        $('#applyFail').css('display', 'block')
        $("#applyFailSonSpan").text(msg);
        setTimeout(function () {
            $("#applyFail").css('display', 'none');
        }, 2000)
    }

    function SetRemainTime1() {
        if (curCount1 == 0) {
            window.clearInterval(InterValObj1);
            $("#btnSendCode1").removeAttr("disabled");
            $("#btnSendCode1").val("重新发送");
        } else {
            curCount1--;
            $("#btnSendCode1").val(+curCount1 + "秒再获取");
        }
    }

    function binding() {
        var phoneNum = $('#phone1').val();
        var codeNum = $('#code1').val();
        var taobaoName = $('#taobaoName').val();
        var realName = $('#realName').val();

        if (!phoneNum) {
            applyFail("请先填写手机号码");
        } else if (!codeNum) {
            applyFail("请填写验证码");
        } else if (codeNum != sendMsgStr) {
            applyFail("输入验证码有误");
        } else if (sendMsgPhone != phoneNum) {
            applyFail("请重新申请验证码");
        } else if (!taobaoName || taobaoName == '' || taobaoName.length <= 2) {
            applyFail("淘宝会员名有误");
        } else if (!realName || realName == '' || realName.length <= 1) {
            applyFail("请输入真实姓名");
        } else {
            $('#showLoading').css('display', 'none')
            $.post('${base}/ali/auth/applyItV2', {
                realName: realName,
                phoneNum: phoneNum,
                taobaoNickName: taobaoName,
                userId: userId
            }, function (res, status) {
                $('#showLoading').css('display', 'none')
                if (res.msgCode == 10000) {
                    var msgBody = res.msgBody
                    ap.tradePay({
                        orderStr: msgBody,
                    }, function (res) {
                        if (res.resultCode == '9000') {
                            $('.am-dialog-mask').addClass('show')
                            $('.am-dialog').addClass('show')
                        } else if (res.resultCode == '6002') {
                            applyFail("网络连接出错");
                        } else if (res.resultCode == '4000' || res.resultCode == '6001' || res.resultCode == '99') {
                            applyFail("芝麻分授权失败");
                        }

                    });
                } else {
                    applyFail("提交资料失败");
                }
            })
        }
    }

    function closeThis() {
        $('.am-dialog-mask').removeClass('show')
        $('.am-dialog').removeClass('show')
    }
</script>
</body>

</html>