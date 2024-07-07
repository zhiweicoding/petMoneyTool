<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>发帖确认</title>

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
    <article class="weui-article">
        <h1>发帖信息</h1>
        <section>
            <h2 class="title">发帖ID：${mapperBean.infoId}</h2>
            <h2 class="title">标题：${mapperBean.msgContent}</h2>
            <h2 class="title">设备：${mapperBean.deviceName}</h2>
            <section>
                <#list mapperBean.imgUrls as imgItem>
                    <p>
                        <img src="${imgItem}" alt="">
                    </p>
                </#list>
            </section>
        </section>
        <h1>用户信息</h1>
        <section>
            <h2 class="title">是否购买：${mapperBean.canShowStr}</h2>
            <h2 class="title">昵称：${mapperBean.nickName}</h2>
            <h2 class="title">openId：${mapperBean.openId}</h2>
            <h2 class="title">手机号码：${mapperBean.userMobile}</h2>
            <h2 class="title">头像：<img src="${mapperBean.avatarUrl}" alt=""></h2>
            <h2 class="title">来源：${mapperBean.userType}</h2>
        </section>
    </article>
    <div class="weui-msg__opr-area">
        <p class="weui-btn-area">
            <a href="javascript:;" id='show-confirm' class="weui-btn weui-btn_primary">同意发帖</a>
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
        $.confirm("是否确认", function () {

            $.post('${base}/shop/news/dymShareInfo', {
                infoId: '${mapperBean.infoId}'
            }, function (res) {
                if (res.msgCode == 10000) {
                    $.toast("已同意", "ok");
                    WeixinJSBridge.call('closeWindow');
                } else {
                    $.toast("同意失败", "fail");
                    // WeixinJSBridge.call('closeWindow');
                }

            })
        }, function () {
            //取消操作
        });
    });

</script>
</html>
