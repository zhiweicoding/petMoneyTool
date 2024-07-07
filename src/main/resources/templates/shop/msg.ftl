<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>确认订单</title>

    <@css.css/>
    <style>
        .weui-footer {
            margin: 250px 0 10px;
        }
    </style>
</head>
<body ontouchstart>

<div class="weui-msg">
    <div class="weui-msg__icon-area"><i class="weui-icon-success weui-icon_msg"></i></div>
    <div class="weui-msg__text-area">
        <h2 class="weui-msg__title">商户确认</h2>
        <p class="weui-msg__desc">买家(${nickName}-${mobilePhone})已经向您支付了现金-￥${money}，如果收到请点击收到现金，有疑问请和买家核实</p>
    </div>
    <div class="weui-msg__opr-area">
        <p class="weui-btn-area">
            <a href="javascript:changeOrder();" class="weui-btn weui-btn_primary">收到现金</a>
            <a href="javascript:cancelOrder();" class="weui-btn weui-btn_default">没有收到</a>
        </p>
    </div>
</div>


<style>
    .weui-footer {
        margin: 250px 0 10px;
    }
</style>

</body>
<@js.js/>
<script>

    function changeOrder(){
        $.post('${base}/shop/notice/getCashDym', {
            mobilePhone: '${mobilePhone}',
            orderId: '${orderId}',
            openId: '${openId}',
            shopId: '${shopId}',
            userId: '${userId}',
            goodId: '${goodId}'
        }, function (res) {
            if (res.msgCode == 10000) {
                window.location.replace('${base}/shop/notice/getCashSuccess?mobilePhone=${mobilePhone}&nickName=${nickName}');
            } else {
                $.toast("收款失败", "fail");
            }

        })
    }

    function cancelOrder(){
        WeixinJSBridge.call('closeWindow');
    }

</script>
</html>
