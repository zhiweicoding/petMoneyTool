<!DOCTYPE html>
<!-- A11Y：注意设置页面的 lang 属性 -->
<html lang="zh">
<head>
    <meta charset="utf-8"/>
    <title>领养申请</title>
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

        .thisPanel3 {
            width: 120px;
            height: 120px;
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

        .jx {
            width: 375px;
            margin: 100px auto;
            display: block;
        }

        .jx .ysu {
            float: left;
            margin-top: 0;
        }

        .jx .ti {
            float: left;
            width: 100%;
            font-size: 18px;
            text-align: center;
            color: #2a2a2a;
            line-height: 36px;
            margin-bottom: 6px;
        }

        .jx .y_info {
            line-height: 24px;
            font-size: 14px;
            color: #999fb1;
            text-align: center;
        }

        .jx .mfbtn {
            background: #00c8d5;
            width: 240px;
            height: 46px;
            margin-left: 170px;
            display: inline-block;
            line-height: 46px;
            color: #fff;
            font-size: 16px;
            margin-top: 36px;
            text-align: center;
            box-shadow: 0 2px 5px #dedede;
            float: right;
            margin-right: 70px;
        }

        .L_transform {
            float: left;
            width: 375px;
            height: 310px;
            margin-top: 35px;
            margin-bottom: 35px;
        }

        .L_transform .trans_bg {
            position: relative;
            float: left;
            width: 300px;
            margin-left: 20px;
            height: 300px;
        }

        .L_transform .bg_shade {
            background: url(https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/quan_bg.png) no-repeat;
            width: 419px;
            height: 390px;
            position: absolute;
            left: -56px;
            top: -39px;
        }

        .L_transform .trans_bg .circles {
            position: absolute;
        }

        .trans_bg .topcircle {
            left: 119px;
            top: -15px;
        }

        .trans_bg .topcircle .pos {
            position: absolute;
            left: 45px;
            top: 10px;
        }

        .trans_bg .active .pos span {
            color: #1677ff;
        }

        .trans_bg .leftcircle .pos {
            position: absolute;
            left: -28px;
            top: 62px;
        }

        .trans_bg .rightcircle .pos {
            position: absolute;
            left: -34px;
            top: 68px;
        }

        .trans_bg .topcircle .pos span {
            width: 73px;
            display: inline-block;
        }

        .trans_bg .leftcircle {
            left: 8px;
            top: 194px;
        }

        .trans_bg .rightcircle {
            left: 256px;
            top: 153px;
        }

        .trans_bg .pos {
            position: relative;
            width: 133px;
        }

        .trans_bg .trio {
            color: #ffffff;
            font-size: 16px;
            text-align: center;
            margin: 0 auto;
            width: 60px;
            height: 60px;
            background: #1677ff;
            position: absolute;
            border-radius: 50%;
        }

        .trans_bg .trio p {
            width: 38px;
            margin-left: 11px;
            margin-top: 8px;
        }

        .trans_bg .pos span {
            color: #999fb1;
            font-size: 13px;
        }

        .trans_bg .circles.active .trio i {
            width: 18px;
            height: 18px;
            background: url(https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/quan_active.png) no-repeat;
            display: inline-block;
            position: absolute;
            top: 43px;
            left: 35px;
        }

        .trans_bg .heart_box {
            width: 301px;
            display: inline-block;
            height: 300px;
        }

        .trans_bg .heart_box .heart {
            position: absolute;
            width: 120px;
            height: 120px;
            background: url(https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/quan_circle1.png) no-repeat;
            left: 89px;
            top: 91px;
        }

        .trans_bg .heart_box .shan {
            width: 211px;
            height: 129px;
            background: url(https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/quan_rotate.png) no-repeat;
            top: 25px;
            left: 42px;
            position: absolute;
            -webkit-transform-origin: 107px 124px;
            transform-origin: 108px 124px;
            transform: rotate(0deg);
            animation: radar 5s linear infinite;
        }

        @keyframes radar {
            0% {
                transform: rotate(0deg);
            }
            50% {
                transform: rotate(180deg);
            }
            100% {
                transform: rotate(360deg);
            }
        }

        .blue h2 {
            color: #1677ff;
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
            <img src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/smallbannerv1.jpg" alt="">
        </div>
        <div class="aui-auto-form ">
            <div class="aui-auto-box">
                <div class="aui-palace">
                    <a href="javascript:;" id="freeStep1" class="aui-palace-grid">
                        <div class="aui-palace-grid-icon">
                            <img src="${base}/resources/ali/img/sign/itemblue-001.jpg" alt="">
                        </div>
                        <div class="aui-palace-grid-text blue">
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
                        <label>真实姓名</label>
                        <div class="aui-flex-box">
                            <input type="text" id="realName" placeholder="请输入真实姓名">
                        </div>
                    </div>
                    <#--                    <div class="aui-flex">-->
                    <#--                        <label>身份证号码</label>-->
                    <#--                        <div class="aui-flex-box">-->
                    <#--                            <input type="text" id="cardNum" placeholder="请输入身份证号码">-->
                    <#--                        </div>-->
                    <#--                    </div>-->
                    <div class="aui-flex">
                        <label>所在省份</label>
                        <div class="aui-flex-box">
                            <input type="text" id="province" placeholder="请输入您居住的省份">
                        </div>
                    </div>
                    <div class="aui-flex">
                        <label>所在城市</label>
                        <div class="aui-flex-box">
                            <input type="text" id="city" placeholder="请输入您居住的城市">
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

                    <span style="font-size: 12px;color: #999999;margin-bottom: 5px;">请仔细核对真实姓名、所在城市、电话号码是否有误，否则会造成申请无法通过。</span>
                    <button class="aui-apply-btn" onClick="binding()">立即申请</button>

                </div>

                <div id="resultPanelDiv" class="resultPanelDiv">
                    <img class="thisPanel" id="thisPanel" src="https://photo.youchongxiong.com/checkoutingv1.png"
                         alt="youchongxiong"/>
                    <div id="noticeMsg" class="noticeMsg">${urlStatusMsg}</div>
                </div>

                <div id="resultPanelDiv3" class="resultPanelDiv">
                    <div class="L_transform">
                        <div class="trans_bg">
                            <div class="bg_shade"></div>
                            <div class="circles topcircle active">
                                <div class="trio"><p>履约能力</p><i></i></div>
                                <div class="pos">
                                    <span>信用评估</span>
                                </div>
                            </div>
                            <div class="circles leftcircle active">
                                <div class="trio"><p>消费习惯</p><i></i></div>
                                <div class="pos">
                                    <span>消费水平和习惯评估</span>
                                </div>
                            </div>
                            <div class="circles rightcircle active">
                                <div class="trio"><p>综合因素</p><i></i></div>
                                <div class="pos">
                                    <span>社会关系稳定</span>
                                </div>
                            </div>
                            <div class="heart_box">
                                <div class="heart"></div>
                                <div class="shan" style="transform: rotate(274deg);"></div>
                            </div>
                        </div>
                    </div>
                    <br/>
                    <div id="noticeMsg3" class="noticeMsg"
                         style="margin-top: 100px;padding-top: 10px;color: #666;">${urlStatusMsg}</div>
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
    var regSelf = /^[1][3,4,5,6,7,8,9][0-9]{9}$/;
    var sendMsgPhone = ''
    var userId = '${userId}'
    var urlStatus = '${urlStatus}'
    var urlStatusMsg = '${urlStatusMsg}'

    $(function () {

        if (urlStatus == 1) {
            changeHead('blue', 1)
            changeHead('grey', 2)
            changeHead('grey', 3)
            changeHead('grey', 4)
            $('#resultPanelDiv').css('display', 'block')
            $('#infoPanelDiv').css('display', 'none')
            $('#resultPanelDiv3').css('display', 'none')
            $('#noticeMsg').text(urlStatusMsg)
        } else if (urlStatus == 2) {
            changeHead('blue', 1)
            changeHead('blue', 2)
            changeHead('grey', 3)
            changeHead('grey', 4)
            $('#resultPanelDiv').css('display', 'block')
            $('#infoPanelDiv').css('display', 'none')
            $('#resultPanelDiv3').css('display', 'none')
            $('#noticeMsg').text(urlStatusMsg)
        } else if (urlStatus == 3) {
            changeHead('blue', 1)
            changeHead('blue', 2)
            changeHead('blue', 3)
            changeHead('grey', 4)
            $('#resultPanelDiv3').css('display', 'block')
            $('#resultPanelDiv').css('display', 'none')
            $('#infoPanelDiv').css('display', 'none')
            $('#noticeMsg3').text(urlStatusMsg)
        } else if (urlStatus == 4) {
            changeHead('blue', 1)
            changeHead('blue', 2)
            changeHead('blue', 3)
            changeHead('blue', 4)
            $('#thisPanel').attr("src", "https://photo.youchongxiong.com/checkoutsuccessv1.jpg");
            $('#resultPanelDiv').css('display', 'block')
            $('#resultPanelDiv3').css('display', 'none')
            $('#infoPanelDiv').css('display', 'none')
            $('#noticeMsg').text(urlStatusMsg)
        } else if (urlStatus == 5) {
            changeHead('blue', 1)
            changeHead('blue', 2)
            changeHead('grey', 3)
            changeHead('grey', 4)
            $('#thisPanel').attr('src', 'https://photo.youchongxiong.com/checkoutfailv1.jpg');
            $('#resultPanelDiv').css('display', 'block')
            $('#resultPanelDiv3').css('display', 'none')
            $('#infoPanelDiv').css('display', 'none')
            $('#noticeMsg').text(urlStatusMsg)
        } else if (urlStatus == 8) {
            changeHead('blue', 1)
            changeHead('blue', 2)
            changeHead('blue', 3)
            changeHead('blue', 4)
            $('#thisPanel').attr('src', 'https://photo.youchongxiong.com/checkoutfailv1.jpg');
            $('#resultPanelDiv').css('display', 'block')
            $('#resultPanelDiv3').css('display', 'none')
            $('#infoPanelDiv').css('display', 'none')
            $('#noticeMsg').text(urlStatusMsg)
        } else if (urlStatus == -1) {
            changeHead('blue', 1)
            changeHead('grey', 2)
            changeHead('grey', 3)
            changeHead('grey', 4)
            $('#resultPanelDiv').css('display', 'none')
            $('#infoPanelDiv').css('display', 'block')
            $('#resultPanelDiv3').css('display', 'none')
            $('#noticeMsg').text(urlStatusMsg)
        }

        setInterval(function () {
            $.post('${base}/ali/fbc/signDym', {
                userId: userId
            }, function (res, status) {
                var msgBody = res.msgBody
                var urlStatus = msgBody.urlStatus
                var urlStatusMsg = msgBody.urlStatusMsg
                switch (urlStatus) {
                    case '1':
                        changeHead('blue', 1)
                        changeHead('grey', 2)
                        changeHead('grey', 3)
                        changeHead('grey', 4)
                        $('#resultPanelDiv').css('display', 'block')
                        $('#infoPanelDiv').css('display', 'none')
                        $('#resultPanelDiv3').css('display', 'none')
                        $('#noticeMsg').text(urlStatusMsg)
                        break;
                    case '2':
                        changeHead('blue', 1)
                        changeHead('blue', 2)
                        changeHead('grey', 3)
                        changeHead('grey', 4)
                        $('#resultPanelDiv').css('display', 'block')
                        $('#infoPanelDiv').css('display', 'none')
                        $('#resultPanelDiv3').css('display', 'none')
                        $('#noticeMsg').text(urlStatusMsg)
                        break;
                    case '3':
                        changeHead('blue', 1)
                        changeHead('blue', 2)
                        changeHead('blue', 3)
                        changeHead('grey', 4)
                        $('#resultPanelDiv').css('display', 'none')
                        $('#infoPanelDiv').css('display', 'none')
                        $('#resultPanelDiv3').css('display', 'block')
                        $('#noticeMsg3').text(urlStatusMsg)
                        break;
                    case '4':
                        changeHead('blue', 1)
                        changeHead('blue', 2)
                        changeHead('blue', 3)
                        changeHead('blue', 4)
                        $('#thisPanel').attr("src", "https://photo.youchongxiong.com/checkoutsuccessv1.jpg");
                        $('#resultPanelDiv').css('display', 'block')
                        $('#infoPanelDiv').css('display', 'none')
                        $('#resultPanelDiv3').css('display', 'none')
                        $('#noticeMsg').text(urlStatusMsg)
                        break;
                    case '5':
                        changeHead('blue', 1)
                        changeHead('blue', 2)
                        changeHead('grey', 3)
                        changeHead('grey', 4)
                        $('#thisPanel').attr('src', 'https://photo.youchongxiong.com/checkoutfailv1.jpg');
                        $('#resultPanelDiv').css('display', 'block')
                        $('#infoPanelDiv').css('display', 'none')
                        $('#noticeMsg').text(urlStatusMsg)
                        break;
                    case '8':
                        changeHead('blue', 1)
                        changeHead('blue', 2)
                        changeHead('blue', 3)
                        changeHead('blue', 4)
                        $('#thisPanel').attr('src', 'https://photo.youchongxiong.com/checkoutfailv1.jpg');
                        $('#resultPanelDiv').css('display', 'block')
                        $('#infoPanelDiv').css('display', 'none')
                        $('#resultPanelDiv3').css('display', 'none')
                        $('#noticeMsg').text(urlStatusMsg)
                        break;
                    case '-1':
                        changeHead('blue', 1)
                        changeHead('grey', 2)
                        changeHead('grey', 3)
                        changeHead('grey', 4)
                        $('#resultPanelDiv').css('display', 'none')
                        $('#infoPanelDiv').css('display', 'block')
                        $('#resultPanelDiv3').css('display', 'none')
                        $('#noticeMsg').text(urlStatusMsg)
                        break;
                }

            })
        }, 1000);
    })

    //aui-palace-grid-text blue
    function changeHead(color, step) {
        $('#freeStep' + step).find('img').attr('src', '${base}/resources/ali/img/sign/item' + color + '-00' + step + '.jpg');
        $('#freeStep' + step).children('div').eq(1)
            .removeClass('blue').removeClass('grey')
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
        var province = $('#province').val();
        var city = $('#city').val();
        var realName = $('#realName').val();

        if (!phoneNum || phoneNum == '' || phoneNum.length <= 10) {
            applyFail("请先填写手机号码");
        } else if (!codeNum) {
            applyFail("请填写验证码");
        } else if (codeNum != sendMsgStr) {
            applyFail("输入验证码有误");
        } else if (sendMsgPhone != phoneNum) {
            applyFail("请重新申请验证码");
        } else if (!province || province == '' || province.length <= 1) {
            applyFail("请输入真实省份");
        } else if (!city || city == '' || city.length <= 1) {
            applyFail("请输入真实城市");
        } else if (!realName || realName == '' || realName.length <= 1) {
            applyFail("请输入真实姓名");
        } else {
            $('#showLoading').css('display', 'none')
            $.post('${base}/ali/fbc/apply', {
                realName: realName,
                phoneNum: phoneNum,
                province: province,
                city: city,
                userId: userId,
            }, function (res, status) {
                $('#showLoading').css('display', 'none')
                if (res.msgCode == 10000) {
                    changeHead('blue', 1)
                    changeHead('blue', 2)
                    changeHead('grey', 3)
                    changeHead('grey', 4)
                    $('#resultPanelDiv').css('display', 'block')
                    $('#infoPanelDiv').css('display', 'none')
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

    function isCardNo(card) {
        // 身份证号码为15位或者18位，15位时全为数字，18位前17位为数字，最后一位是校验位，可能为数字或字符X
        var reg = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
        if (reg.test(card) === false) {
            return false;
        }
        return true;
    }

</script>
</body>

</html>