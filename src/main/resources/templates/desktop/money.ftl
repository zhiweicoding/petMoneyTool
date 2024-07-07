<#import "common/desktopCss.ftl" as css>
<#import "common/desktopJs.ftl" as js>
<#import "common/desktopCommon.ftl" as common>
<!DOCTYPE html>
<html class="js rgba opacity cssanimations borderradius boxshadow csstransitions csstransforms textshadow">
<head>
    <meta charset="utf-8"/>
    <title>优宠熊正规宠物购买平台</title>
    <meta name="keywords" content="买猫在哪里买,金渐层哪里买,宠物猫,布偶猫哪里买,卖猫市场,宠物猫交易网,宠物平台,宠物猫,正规购宠平台,买猫,卖猫,猫市场,宠物猫交易网,优宠熊,宠物平台,天津宠物交易,天津买猫,天津宠物市场,猫,优宠,家庭繁育猫舍">
    <meta name="description"
          content="广州哪里有卖猫的？就到优宠熊正规宠物购买平台，秉承优宠科技一贯的严谨态度，致力于把健康的猫咪送到用户家中，金渐层、银渐层猫、缅因猫多少钱一只？布偶猫哪里买？买猫在哪个平台比较好？就到优宠熊！。">
    <meta name="theme-color" content="#3baa24">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <meta http-equiv="Cache-Control" content="no-transform"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="applicable-device" content="pc,mobile">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta property="og:url" content="http://www.youchongxiong.com/">
    <meta property="og:type" content="article">
    <meta property="og:title" content="优宠熊正规宠物购买平台">
    <meta property="og:description" content="广州哪里有卖猫的？就到优宠熊正规宠物购买平台，秉承优宠科技一贯的严谨态度，致力于把健康的猫咪送到用户家中，金渐层、银渐层猫、缅因猫多少钱一只？布偶猫哪里买？买猫在哪个平台比较好？就到优宠熊！。">
    <meta property="og:image" content="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/bitbug_favicon.ico">
    <meta name="renderer" content="webkit">
    <meta name="HandheldFriendly" content="True">
    <meta name="MobileOptimized" content="320">
    <meta name="baidu-site-verification" content="b1Yp8ETSz9"/>
    <link rel="shortcut icon" href="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/bitbug_favicon.ico"
          type="image/x-icon"/>
    <@css.commonCss/>
    <@css.moneyCss/>
    <@css.endCss/>
    <script>
        $(function () {
            var u = navigator.userAgent, app = navigator.appVersion;
            var isAndroid = u.indexOf('Android') > -1 || u.indexOf('Linux') > -1; //android终端或者uc浏览器
            var isiOS = !!u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/); //ios终端
            if (isAndroid || isiOS) {
                window.location.href = "${base}/webMobile/"
            }
        });
    </script>
<body style="">
<@common.topDiv />
<@common.rightDiv />
<@common.rightDivFloat />

<div class="g-bd-list backgroud-white" id="j-freemarkerRender">

    <div class="g-row" style="margin-bottom:100px;">
        <div class="g-orderToPayHd">
            <h2 class="f-fz18 f-lh1 f-wb f-margin-bottom-10">
                选择付款方式
            </h2>
            <div class="f-clearfix f-lh18">
                <p class="f-left f-fz16 w-text-muted">
                    交易号：20180330084338YXMPDD11592705
                </p>
                <p class="f-right f-fz18">实付：
                    <span class="f-txt-red">¥113.50</span>
                </p>
            </div>
        </div>
        <div class="f-margin-bottom-40">
            <div class="w-panel">
                <div class="hd">
                    支付方式
                </div>
                <div class="bd">
                    <div class="m-payMethods">
                        <div id="j-payMethod-3" class="j-payMethod m-payMethod m-payMethod-hd active"
                             data-pay-method="3">
                            <div class="w-radio-money radio s-gold-help">
                                <img src="${base}/resources/img/check-grey.png">
                            </div>
                            <i class="w-icon-payMethod payMethod-alipay"></i>
                            <i class="icon w-icon-normal icon-normal-spec-arrow"></i>
                        </div>
                        <div id="j-payMethod-2" class="j-payMethod m-payMethod m-payMethod-hd" data-pay-method="2">
                            <div class="w-radio radio s-gold-hep">
                                <img src="${base}/resources/img/check-gold.png">
                            </div>
                            <i class="w-icon-payMethod payMethod-weixin"></i>
                            <i class="icon w-icon-normal icon-normal-spec-arrow"></i>
                        </div>
                        <!-- <div id="j-payMethod-1" class="j-payMethod m-payMethod m-payMethod-hd" data-pay-method="1">
                            <div class="w-radio radio s-gold">
                                <input type="radio" name="payMethod" value="1">
                            </div>
                            <i class="w-icon-payMethod payMethod-epay"></i>
                            <i class="icon w-icon-normal icon-normal-spec-arrow"></i>
                        </div> -->

                        <!-- <div class="j-selectBank m-payMethod m-payMethod-hd" data-tab="debit">
                            <div class="w-radio radio s-gold">
                                <input type="radio" name="paySelect">
                            </div>
                            <i class="w-icon-payMethod payMethod-savings"></i>
                            <i class="icon w-icon-normal icon-normal-spec-arrow"></i>
                        </div>

                        <div class="j-selectBank m-payMethod m-payMethod-hd" data-tab="credit">
                            <div class="w-radio radio s-gold">
                                <input type="radio" name="paySelect">
                            </div>
                            <i class="w-icon-payMethod payMethod-credit"></i>
                            <i class="icon w-icon-normal icon-normal-spec-arrow"></i>
                        </div>  -->
                        <!-- <div class="m-bankList j-bankList" id="j-debit" style="display: none;">
                            <div class="w-grayUpArrow"></div>
                            <div id="j-payMethod-33" class="j-payMethod m-payMethod j-payMethodForBank" data-pay-method="33">
                                <div class="w-radio radio f-hide">
                                    <input type="radio" name="payMethod" value="33">
                                </div>
                                <div class="w-icon-bank bank-boc"></div>
                                <i class="icon w-icon-normal icon-normal-spec-arrow"></i>
                                <span class="span"></span>
                            </div>
                            <div id="j-payMethod-32" class="j-payMethod m-payMethod j-payMethodForBank" data-pay-method="32">
                                <div class="w-radio radio f-hide">
                                    <input type="radio" name="payMethod" value="32">
                                </div>
                                <div class="w-icon-bank bank-abc"></div>
                                <i class="icon w-icon-normal icon-normal-spec-arrow"></i>
                            </div>
                            <div id="j-payMethod-30" class="j-payMethod m-payMethod j-payMethodForBank" data-pay-method="30">
                                <div class="w-radio radio f-hide">
                                    <input type="radio" name="payMethod" value="30">
                                </div>
                                <div class="w-icon-bank bank-icbc"></div>
                                <i class="icon w-icon-normal icon-normal-spec-arrow"></i>
                            </div>
                            <div id="j-payMethod-31" class="j-payMethod m-payMethod j-payMethodForBank" data-pay-method="31">
                                <div class="w-radio radio f-hide">
                                    <input type="radio" name="payMethod" value="31">
                                </div>
                                <div class="w-icon-bank bank-ccb"></div>
                                <i class="icon w-icon-normal icon-normal-spec-arrow"></i>
                            </div>
                            <div id="j-payMethod-34" class="j-payMethod m-payMethod j-payMethodForBank" data-pay-method="34">
                                <div class="w-radio radio f-hide">
                                    <input type="radio" name="payMethod" value="34">
                                </div>
                                <div class="w-icon-bank bank-cmb"></div>
                                <i class="icon w-icon-normal icon-normal-spec-arrow"></i>
                            </div>
                        </div> -->
                        <!-- 网易严选的支付，如果有需要可以再抄过来 -->
                        <!-- <div class="m-bankList j-bankList credit" id="j-credit" style="display: none;">
                            <div class="w-grayUpArrow"></div>
                            <div id="j-payMethod-73" class="j-payMethod m-payMethod j-payMethodForBank" data-pay-method="73">
                                <div class="w-radio radio f-hide">
                                    <input type="radio" name="payMethod" value="73">
                                </div>
                                <div class="w-icon-bank bank-boc"></div>
                                <i class="icon w-icon-normal icon-normal-spec-arrow"></i>
                                <span class="span"></span>
                            </div>
                            <div id="j-payMethod-72" class="j-payMethod m-payMethod j-payMethodForBank" data-pay-method="72">
                                <div class="w-radio radio f-hide">
                                    <input type="radio" name="payMethod" value="72">
                                </div>
                                <div class="w-icon-bank bank-abc"></div>
                                <i class="icon w-icon-normal icon-normal-spec-arrow"></i>
                            </div>
                            <div id="j-payMethod-70" class="j-payMethod m-payMethod j-payMethodForBank" data-pay-method="70">
                                <div class="w-radio radio f-hide">
                                    <input type="radio" name="payMethod" value="70">
                                </div>
                                <div class="w-icon-bank bank-icbc"></div>
                                <i class="icon w-icon-normal icon-normal-spec-arrow"></i>
                            </div>
                            <div id="j-payMethod-71" class="j-payMethod m-payMethod j-payMethodForBank" data-pay-method="71">
                                <div class="w-radio radio f-hide">
                                    <input type="radio" name="payMethod" value="71">
                                </div>
                                <div class="w-icon-bank bank-ccb"></div>
                                <i class="icon w-icon-normal icon-normal-spec-arrow"></i>
                            </div>
                            <div id="j-payMethod-74" class="j-payMethod m-payMethod j-payMethodForBank" data-pay-method="74">
                                <div class="w-radio radio f-hide">
                                    <input type="radio" name="payMethod" value="74">
                                </div>
                                <div class="w-icon-bank bank-cmb"></div>
                                <i class="icon w-icon-normal icon-normal-spec-arrow"></i>
                            </div>
                        </div> -->
                    </div>
                </div>
            </div>
        </div>
        <div class="m-goPay" style="float:right">
            <button type="button" id="j-goPay" class="btn w-button w-button-xl w-button-primary"
                    onclick="payMoneyFunction()">
                立即付款
            </button>
        </div>
        <form name="orderPayForm" id="j-orderPayForm" action="/cashier/order/pay" method="get" target="_blank">
            <input type="hidden" name="yxTradeNo" value="20180330084338YXMPDD11592705">
            <input type="hidden" name="platform" value="WEB">
            <input type="hidden" name="payMethod" value="">
        </form>
    </div>
</div>

<div id="widgetDialogContainer" style="display:none;">
    <div class="m-overlay m-overlay-ani" style="z-index: 1150;">
        <div class="w-mask w-mask-ani j-mask f-ani-mask"></div>
        <div class="contentWrap">
            <div class="m-pop f-scroll-y overlay-container-ani f-tlbr j-overlay-container m-askPayCompletePop f-ani-bouncein"
                 style="display: block;">
                <div class="j-w-dialog-body" style="left: 388.5px; top: 211px;">
                    <div class="j-w-dialog-head">
                        <div class="w-close j-close-pop" style="display: none;"></div>
                    </div>
                    <div class="popwin-bd j-w-dialog-content">
                        <div class="m-askPayComplete">
                            <h3 class="hd w-text">请在
                                <span class="f-txt-red">1</span>小时内完成付款，否则订单会被系统取消</h3>
                            <div class="bd f-clearfix">
                                <div class="left f-left">
                                    <p class="text w-text">支付成功请点击</p>
                                    <button onclick="closePayMoney()" id="j-askPayCompletePayCompleted"
                                            class="w-button w-button-l" type="button">已完成付款
                                    </button>
                                </div>
                                <div class="right f-left">
                                    <p class="text w-text">遇到问题请点击</p>
                                    <button onclick="closePayMoney()" id="j-askPayCompletePay"
                                            class="w-button w-button-l w-button-primary" type="button">重新付款
                                    </button>
                                </div>
                            </div>
                            <div class="ft">
                                <p class="w-text-muted text1">注：重新付款前，请关闭之前的付款页面</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<@common.footer/>
<script>
    function payMoneyFunction() {
        $('#widgetDialogContainer').css('display', 'block');
        window.open('/money/pay');
    }

    function closePayMoney() {
        $('#widgetDialogContainer').css('display', 'none');
    }

    var basePath = '${base}/resources/';
</script>
<@js.commonJs/>

</body>

</html>