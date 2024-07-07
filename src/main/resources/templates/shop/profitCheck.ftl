<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>转账确认</title>

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
        <h2 class="weui-msg__title">转账确认</h2>
        <p class="weui-msg__desc">用户${username}(${realName}-${userMobile})花费￥${price}元买了一只${symbolName}
            ，分享者是${shareUserName}(${shareRealName}-${shareMobile})，销售是${shopName}(${shopMobile})。已签署电子协议，申请转账，是否同意？</p>
    </div>
    <div class="weui-msg__opr-area">
        <p class="weui-btn-area">
            <a href="javascript:;" id='show-confirm' class="weui-btn weui-btn_primary">可以转账</a>
        </p>
    </div>
</div>


<style>
    .weui-footer {
        margin: 250px 0 10px;
    }
</style>

</body>
<script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="https://photo.youchongxiong.com/swiper.min.js"></script>
<script src="http://apps.bdimg.com/libs/fastclick/1.0.0/fastclick.min.js"></script>
<script>
    $(function () {
        FastClick.attach(document.body);
    });
</script>
<script src="https://photo.youchongxiong.com/jquery-weui.min.js"></script>
<script type="text/javascript" src="https://res.wx.qq.com/open/js/jweixin-1.3.2.js"></script>

<script>
    // String protectId, String couponId, String shopId, String shareUserId, String userId,

    // String protectId, String couponId,
    // String shareUserId,
    // String userId, String userNickName,
    // String shopId, String shopPhone

    // WeixinJSBridge.call('closeWindow');
    $(document).on("click", "#show-confirm", function () {
        $.confirm("您确定打款吗，操作不可逆?", "确定打款?", function () {

            $.post('${base}/shop/profitCard/dymNotice', {
                protectId: '${protectId}',
                couponId: '${couponId}',
                shareUserId: '${shareUserId}',
                userId: '${userId}',
                userNickName: '${userNickName}',
                shopId: '${shopId}',
                shopPhone: '${shopPhone}'
            }, function (res) {
                if (res.msgCode == 10000) {
                    $.toast("收款成功", "ok");
                    WeixinJSBridge.call('closeWindow');
                } else {
                    $.toast("收款失败或已有人确认", "fail");
                    // WeixinJSBridge.call('closeWindow');
                }

            })
        }, function () {
            //取消操作
        });
    });

</script>
</html>
