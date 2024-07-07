<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>上传商品</title>
    <@css.css/>
</head>
<body ontouchstart>

<div class="weui-msg">
    <div class="weui-msg__icon-area"><i class="weui-icon-success weui-icon_msg"></i></div>
    <div class="weui-msg__text-area">
        <h2 class="weui-msg__title">${shopName}申请补单</h2>
    </div>
    <div class="weui-msg__opr-area">
        <p class="weui-btn-area">
            <a href="javascript:uploadGood();"
               class="weui-btn weui-btn_primary">同意补单</a>
            <a href="javascript:window.location.replace('${base}/shop/goodPage/index');"
               class="weui-btn weui-btn_default">返回首页</a>
        </p>
    </div>
</div>

<style>
    .weui-footer {
        margin: 250px 0 10px;
    }
</style>

<@js.js/>
<script src="https://cdn.bootcss.com/jquery.qrcode/1.0/jquery.qrcode.min.js"></script>

<script>

    var shopId = "${shopId}";
    var orderId = '${orderId}';

    function uploadGood() {
        $.showLoading();
        $.post('${base}/shop/userListPage/createOrder', {
            orderId: orderId,
            shopId: shopId,
        }, function (res) {
            $.hideLoading();
            if (res.msgCode == 10000) {
                window.location.replace('${base}/shop/orderListPage/success');
            } else if (res.msgCode == 10001) {
                $.toast("补单失败", "cancel", function (toast) {
                    console.log(toast);
                });
            } else if (res.msgCode == 10003) {
                $.toast("无权限操作", "cancel", function (toast) {
                    console.log(toast);
                });
            }
        })

    }


</script>

</body>
</html>