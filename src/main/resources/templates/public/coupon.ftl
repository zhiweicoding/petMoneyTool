<#import "common/mobileCommon.ftl" as common>
<#import "common/mobileCss.ftl" as css>
<#import "common/mobileJs.ftl" as js>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>我的优惠</title>
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
    <link rel="stylesheet" href="${base}/resources/public/discounts/discounts.css">
    <link rel="stylesheet" href="${base}/resources/public/common/loading.css">
    <link rel="stylesheet" href="${base}/resources/public/common/index.css">
    <link rel="stylesheet" href="${base}/resources/common.css">
    <script type="text/javascript" src="${base}/resources/common.js"></script>
    <style type="text/css">
        .aui-left-change h2 {
            font-size: 36px;
        }

        .aui-left-change h3 {
            font-size: 30px;
            margin-bottom: 4px;
        }
    </style>

</head>

<body ontouchstart>

<section class="aui-flexView">
    <section class="aui-scrollView">
        <div class="aui-tab" data-ydui-tab>
            <ul class="tab-nav">
                <li class="tab-nav-item tab-active">
                    未使用(${noUseArray?size})
                </li>
                <li class="tab-nav-item">
                    使用记录(${usedArray?size})
                </li>
                <li class="tab-nav-item">
                    已过期(${outArray?size})
                </li>
            </ul>
            <div class="tab-panel">
                <div class="tab-panel-item tab-active">
                    <div class="tab-item">
                        <#list noUseArray as array>
                        <#if array.type==1>
                        <div class="tab-item-list tab-item-list-red">
                            <#else >
                            <div class="tab-item-list">
                                </#if>
                                <div class="aui-flex">
                                    <div class="aui-left-change">
                                        <#if array.money!="0">
                                            <h2>
                                                <em>￥</em>
                                                ${array.money}
                                            </h2>
                                        <#else >
                                            <h3>
                                                通用券
                                            </h3>
                                        </#if>
                                        <p>${array.couponName}</p>
                                        <div class="aui-icon-circle"></div>
                                    </div>
                                    <div class="aui-flex-box aui-flex-box-two"
                                         onclick="sharePhoto('${array.couponId}','${array.type}','${array.taobaoUrl}')">
                                        <h3>
                                            <#if array.type==1>
                                                <em>活体券</em>
                                            <#elseif array.type==2>
                                                <em>用品券</em>
                                            <#elseif array.type==3>
                                                <em>通用券</em>
                                            <#elseif array.type==4>
                                                <em>用品券</em>
                                            </#if>
                                            ${array.couponName}(${array.useCondition})
                                        </h3>
                                        <div class="aui-flex aui-flex-bor-bom">
                                            <div class="aui-flex-box aui-flex-box-flow">
                                                有效期至${array.conditionTimeSimpleStr}</div>
                                            <div class="aui-btn-use">立即使用</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </#list>
                        </div>
                    </div>
                    <div class="tab-panel-item">
                        <div class="tab-item">
                            <#list usedArray as array>
                                <div class="tab-item-list tab-item-list-default">
                                    <div class="aui-flex">
                                        <div class="aui-left-change">
                                            <#if array.money!="0">
                                                <h2>
                                                    <em>￥</em>
                                                    ${array.money}
                                                </h2>
                                            <#else >
                                                <h3>
                                                    通用券
                                                </h3>
                                            </#if>
                                            <p>${array.couponName}</p>
                                            <div class="aui-icon-circle"></div>
                                        </div>
                                        <div class="aui-flex-box aui-flex-box-two">
                                             <span class="aui-icon-used">
                                                <img src="${base}/resources/public/discounts/icon-used.png" alt="">
                                             </span>
                                            <h3>
                                                <#if array.type==1>
                                                    <em>活体券</em>
                                                <#elseif array.type==2>
                                                    <em>用品券</em>
                                                <#elseif array.type==3>
                                                    <em>通用券</em>
                                                </#if>
                                                ${array.couponName}(${array.useCondition})
                                            </h3>
                                            <div class="aui-flex aui-flex-bor-bom">
                                                <div class="aui-flex-box aui-flex-box-flow">
                                                    有效期至${array.conditionTimeSimpleStr}</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </#list>
                        </div>
                    </div>
                    <div class="tab-panel-item">
                        <div class="tab-item">
                            <#list outArray as array>
                                <div class="tab-item-list tab-item-list-default">
                                    <div class="aui-flex">
                                        <div class="aui-left-change">
                                            <#if array.money!="0">
                                                <h2>
                                                    <em>￥</em>
                                                    ${array.money}
                                                </h2>
                                            <#else >
                                                <h3>
                                                    通用券
                                                </h3>
                                            </#if>
                                            <p>${array.couponName}</p>
                                            <div class="aui-icon-circle"></div>
                                        </div>
                                        <div class="aui-flex-box aui-flex-box-two">
                                            <h3>
                                                <#if array.type==1>
                                                    <em>活体券</em>
                                                <#elseif array.type==2>
                                                    <em>用品券</em>
                                                <#elseif array.type==3>
                                                    <em>通用券</em>
                                                </#if>
                                                ${array.couponName}(${array.useCondition})
                                            </h3>
                                            <div class="aui-flex aui-flex-bor-bom">
                                                <div class="aui-flex-box aui-flex-box-flow">
                                                    有效期至${array.conditionTimeSimpleStr}</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </#list>
                        </div>
                    </div>
                </div>
            </div>
    </section>
</section>

<div id="maskCode" class="maskCode">
    <div id="close" class="closebtn" onclick="hideMask()"></div>
    <img alt="" id="opacImg" class="opacImg" style="" src="https://photo.youchongxiong.com/whitev1.png">
</div>

<div id="maskCode2" class="maskCode">
    <div id="close" class="closebtn" onclick="hideMask()"></div>
    <img alt="" id="opacImg2" class="opacImg" style="" data-clipboard-text=""
         src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200530/couponbackv21.jpg">
</div>
<#--<img alt="" id="opacImg" class="opacImg" style="" src="https://photo.youchongxiong.com/whitev1.png" onclick="hideMask();">-->
<style type="text/css">
    #canbox {
        width: 100%;
        height: 100%;
        position: fixed;
        top: 0;
        bottom: 0;
        left: 0;
    }

    .closebtn {
        position: fixed;
        top: 19%;
        left: 72%;
        z-index: 1004;
        opacity: 0;
        width: 70px;
        height: 70px;
    }

    .opacImg {
        width: 100%;
        height: 100%;
    }


    .maskCode {
        position: fixed;
        top: 19%;
        left: 8%;
        z-index: 1002;
        margin: 0 auto;
        width: 86%;
        height: auto;
        box-shadow: 1px 3px 8px #e4e4e4;
    }

    .canimg {
        width: 100%;
        height: 100%;
        position: fixed;
        top: 0;
        bottom: 0;
        left: 0;
    }
</style>

<script type="text/javascript"
        src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/banner07142243/jquery.min.js"></script>
<script type="text/javascript"
        src="${base}/resources/public/discounts/tab.js"></script>
<script src="https://cdn.bootcss.com/jquery.qrcode/1.0/jquery.qrcode.min.js"></script>
<script src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/activity/expansion/clipboard.min.js"></script>


<script type="text/javascript">

    var isAndroid = false
    var isiOS = false
    $(function () {
        $('#maskCode').hide()
        $('#maskCode2').hide()
        var u = navigator.userAgent;
        isAndroid = u.indexOf('Android') > -1 || u.indexOf('Adr') > -1; //android终端
        isiOS = !!u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/); //ios终端

        <#--if ('${authLogin}'=='-1') {-->
            <#--showPic('https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200607/guanzhu.jpg')-->
        <#--}-->
    })


    function sharePhoto(id, type, taobaoUrl) {
        if (type == 4 || type == 2) {
            $('#maskCode2').show()
            // $('#opacImg2').attr('dataClipboardText',taobaoUrl)
            $('#opacImg2').attr('data-clipboard-text',taobaoUrl)
            var btns = document.getElementById('opacImg2');
            var clipboard = new ClipboardJS(btns);

            clipboard.on('success', function (e) {
                console.log(e);
                alert('已复制，请打开淘宝')
            });
            clipboard.on('error', function (e) {
                console.log(e);
            });

        } else {
            $('#maskCode').show()
            $.post('${base}/wxPublic/discounts/qrCode', {
                id: id
            }, function (res) {
                if (res.msgCode == 10000) {
                    var url = res.msgBody
                    $('#opacImg').attr('src', url)
                }

            })
        }

    }

    function hideMask() {
        $('#maskCode').hide()
        $('#maskCode2').hide()
    }
</script>
</body>

</html>