<#import "common/mobileCss.ftl" as css>
<#import "common/mobileJs.ftl" as js>
<#import "common/mobileCommon.ftl" as common>
<!DOCTYPE html>
<html>
<@css.commonCss/>
<title>收银台</title>
<@css.endCss/>
<body>

<header class="aui-header-default aui-header-fixed">
    <a href="javascript:history.back(-1)" class="aui-header-item">
        <i class="aui-icon aui-icon-back"></i>
    </a>
    <div class="aui-header-center aui-header-center-clear">
        <div class="aui-header-center-logo">
            <div class="">收银台</div>
        </div>
    </div>
    <a href="#" class="aui-header-item-icon" style="min-width:0">
        <i class="aui-icon aui-icon-member"></i>
    </a>
</header>

<section class="aui-settle-content">
<#--<div class="aui-settle-title">-->
<#--<p>需要支付:    <span>375.00元</span></p>-->
<#--</div>-->
<#--<div class="aui-settle-pay">-->
<#--<img src="http://photo.jianyunzhichang.com/pay.png" alt="">-->
<#--</div>-->
<#--<div class="aui-dri"></div>-->
<#--<div class="aui-settle-choice">-->
<#--<a href="#" class="aui-address-cell  aui-fl-arrow-clear">-->
<#--<div class="aui-address-cell-hd">-->
<#--<img src="http://photo.jianyunzhichang.com/apy-1.png" alt="">-->
<#--</div>-->
<#--<div class="aui-address-cell-bdpet">-->
<#--工商银行-->
<#--<p>储蓄卡（8890）</p>-->
<#--</div>-->
<#--<div class="aui-address-cell-ft"><span>每单最高减111</span>&nbsp;&nbsp;<input type="checkbox" name="gs" class="check check-pay goods-check goodsCheck" checked="checked"></div>-->
<#--</a>-->
<#--<a href="#" class="aui-address-cell  aui-fl-arrow-clear">-->
<#--<div class="aui-address-cell-hd">-->
<#--<img src="http://photo.jianyunzhichang.com/apy-2.png" alt="">-->
<#--</div>-->
<#--<div class="aui-address-cell-bdpet">-->
<#--农业银行-->
<#--<p>储蓄卡（5678）</p>-->
<#--</div>-->
<#--<div class="aui-address-cell-ft"><input type="checkbox" name="ny" class="check check-pay goods-check goodsCheck" ></div>-->
<#--</a>-->
<#--<a href="#" class="aui-address-cell  aui-fl-arrow-clear">-->
<#--<div class="aui-address-cell-hd">-->
<#--<img src="http://photo.jianyunzhichang.com/apy-3.png" alt="">-->
<#--</div>-->
<#--<div class="aui-address-cell-bdpet">-->
<#--招商银行-->
<#--<p>储蓄卡（8890）</p>-->
<#--</div>-->
<#--<div class="aui-address-cell-ft"><input type="checkbox" name="gs" class="check check-pay goods-check goodsCheck"></div>-->
<#--</a>-->
<#--</div>-->
    <div class="aui-settle-ways">
        手机支付方式
    </div>
    <div class="aui-settle-choice">
        <a href="#" class="aui-address-cell  aui-fl-arrow-clear">
            <div class="aui-address-cell-hd">
                <img src="http://photo.jianyunzhichang.com/apy-5.png" alt="">
            </div>
            <div class="aui-address-cell-bd">
                微信支付
                <p>微信安全支付</p>
            </div>
            <div class="aui-address-cell-ft">
                <input type="checkbox" checked class="check check-pay goods-check goodsCheck">
            </div>
        </a>
    </div>
</section>
<div class="aui-settle-payment">
    <a href="javascript:pay();">支付 ${money} 元</a>
</div>
<@js.commonJs/>
<script type="text/javascript">

    function onBridgeReady(appid, timeStamp, nonceStr, packageStr, signType, paySign) {
        alert(appid + "," + timeStamp + "," + nonceStr + "," + packageStr + "," + signType + "," + paySign);
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
                        alert("支付成功");
                        window.location.href = '${request.contextPath}/mobile/person/Payment';
                    } else if (res.err_msg == 'get_brand_wcpay_request:fail') {
                        alert("支付失败")
                    } else if (res.err_msg == 'get_brand_wcpay_request:cancel') {
                        alert("用户取消支付!");
                    }
                    // alert(res.err_code + res.err_desc + res.err_msg);
                }
        );
    }

    function pay() {
        var goodId = '${goodId}'
        var userId = '${userId}'
        var openId = '${openId}'
        var addressId = '${addressId}'
        $.post('${base}/webMobile/mobilePay/pay', {
            goodId: goodId,
            userId: userId,
            openId: openId,
            addressId: addressId
        }, function (data) {
            if (data.msgCode == 10000) {
                if (typeof WeixinJSBridge == "undefined") {
                    if (document.addEventListener) {
                        document.addEventListener('WeixinJSBridgeReady', onBridgeReady, false);
                    } else if (document.attachEvent) {
                        document.attachEvent('WeixinJSBridgeReady', onBridgeReady);
                        document.attachEvent('onWeixinJSBridgeReady', onBridgeReady);
                    }
                } else {
                    var resultMsg = data.msgBody;

                    onBridgeReady( resultMsg.appId,
                            resultMsg.signTimeStamp,
                            resultMsg.signNonceStr,
                            resultMsg.signPackage,
                            resultMsg.signType,
                            resultMsg.signPaySign);
                }
            } else {
                alert("支付失败，稍后重试");
            }
        });

    }

</script>
<script>
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?17beb155aceef2dd9b74677419a1b70d";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>
</body>

</html>