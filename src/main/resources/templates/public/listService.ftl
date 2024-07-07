<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>购猫记录</title>

    <meta name="theme-color" content="#3baa24">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <meta http-equiv="Cache-Control" content="no-transform"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="applicable-device" content="pc,mobile">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no"/>
    <link rel="shortcut icon" href="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/favicon.ico"
          type="image/x-icon"/>
    <link rel="stylesheet" href="https://res.wx.qq.com/open/libs/weui/1.1.2/weui.min.css">
    <link rel="stylesheet" href="${base}/resources/shopCss/jquery-weui.min.css">
    <link rel="stylesheet" href="${base}/resources/shopCss/demos.css"/>
    <link rel="stylesheet" href="${base}/resources/shopCss/style.css"/>
    <style>
        .weui-footer {
            margin: 150px 0 10px;
        }

        .weui-cells {
            margin-top: 0;
        }

        .weui-cell {
            padding: 0 15px;
        }

        .weui-cell__ft {
            font-size: 14px;
        }
    </style>
</head>
<body ontouchstart>

<div class="weui-cells">
    <#if exist>
        <#list array as array>
            <div onclick="openAction('${base}','${openId}','${array.protectId}')"
                 class="weui-cell weui-cell_access">
                <div class="weui-cell__bd">
                    <div class="weui-media-box weui-media-box_text">
                        <h4 class="weui-media-box__title">
                            <img style="width: 16px; height: 16px;" alt="猫咪品种"
                                 src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200319/cat.png"/>
                            已购一只${array.symbolName}品种的猫咪</h4>
                        <p class="weui-media-box__desc" style="line-height: 1.4;">
                            <img style="width: 16px; height: 16px;" alt="出生日期"
                                 src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200319/birth.png"/>
                            猫咪出生于${array.birthdayStr}
                            <img style="width: 16px; height: 16px;" alt="猫咪性别"
                                 src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200319/sex.png"/>
                            性别${(array.petSex=='1')?string('弟弟','妹妹')}
                        </p>
                        <ul class="weui-media-box__info">
                            <li class="weui-media-box__info__meta">
                                <img style="width: 16px; height: 16px;" alt="猫咪价格"
                                     src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200319/money.png"/>
                                ${'￥ '+array.petPrice}
                            </li>
                            <li class="weui-media-box__info__meta weui-media-box__info__meta_extra">
                                <img style="width: 16px; height: 16px;" alt="签署时间"
                                     src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200319/time.png"/>
                                ${' 购猫时间：'+array.protectTimeStr?substring(0,10)}
                            </li>
                        </ul>

                    </div>
                </div>
                <div class="weui-cell__ft"></div>
            </div>
        </#list>
    <#else >
        <div class="weui-msg">
            <div class="weui-msg__icon-area"><i class="weui-icon-info weui-icon_msg"></i></div>
            <div class="weui-msg__text-area">
                <h2 class="weui-msg__title">暂无购宠记录</h2>
                <p class="weui-msg__desc">暂时没有查询到购宠记录，如有异议可以联系客服查询</p>
            </div>
        </div>
    </#if>
</div>

<script src="${base}/resources/shopJs/jquery.min.js"></script>
<script src="${base}/resources/shopJs/fastclick.min.js"></script>
<script src="${base}/resources/shopJs/jquery-weui.min.js"></script>
<script>
    $(function () {
        FastClick.attach(document.body);
    });

    function openAction(url, openId, protectId) {
        $.actions({
            title: "选择操作",
            onClose: function () {
                console.log("close");
            },
            actions: [
                {
                    text: "申请猫癣药物",
                    onClick: function () {
                        $.confirm("猫癣药物只限接到猫咪当日申请，平台会和托运公司核实信息。", "确认申请药物?", function () {
                            window.location.href = url + '/wxPublic/service/drug?openId=' + openId + '&protectId=' + protectId
                        }, function () {
                            //取消操作
                        });
                    }
                },
                {
                    text: "申请疾病售后",
                    onClick: function () {
                        window.location.href = url + '/wxPublic/service/info?openId=' + openId + '&protectId=' + protectId
                    }
                },
                {
                    text: "申请其他售后",
                    onClick: function () {
                        window.location.href = url + '/wxPublic/service/common?openId=' + openId + '&protectId=' + protectId
                    }
                }
            ]
        });
    }
</script>
<script src="${base}/resources/shopJs/jquery-weui.min.js"></script>
<script src="${base}/resources/shopJs/swiper.min.js"></script>
<script type="text/javascript" src="https://res.wx.qq.com/open/js/jweixin-1.3.2.js"></script>

</body>
</html>
