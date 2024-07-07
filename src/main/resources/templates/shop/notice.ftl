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
        <h2 class="weui-msg__title">操作成功</h2>
    </div>
    <div class="weui-msg__opr-area">
        <p class="weui-btn-area">
            <#if turnPage==0>
                <a href="javascript:window.location.replace('${base}/shop/goodPage/add');"
                   class="weui-btn weui-btn_primary">继续添加</a>
            <#elseif turnPage==1>
                <a href="javascript:window.location.replace('${base}/shop/bargainPage/add');"
                   class="weui-btn weui-btn_primary">继续添加</a>
            <#elseif turnPage==2>
                <a href="javascript:window.location.replace('${base}/shop/adoptPage/add');"
                   class="weui-btn weui-btn_primary">继续添加</a>
            <#elseif turnPage==10>
                <a href="javascript:window.location.replace('${base}/shop/msgPage/index');"
                   class="weui-btn weui-btn_primary">继续添加</a>
            <#elseif turnPage==3>
                <a href="javascript:sharePhoto()"
                   class="weui-btn weui-btn_primary">查看微信二维码</a>
                <a href="javascript:sharePhoto2()"
                   class="weui-btn weui-btn_primary">查看支付宝二维码</a>
            </#if>
            <a href="javascript:window.location.replace('${base}/shop/goodPage/index');"
               class="weui-btn weui-btn_default">返回首页</a>
            <#--<div onclick="uploadGood()" class="weui-btn weui-btn_default">更新缓存</div>-->
            <#--<a href="javascript:sharePhoto()" class="weui-btn weui-btn_default">查看二维码</a>-->
        </p>
    </div>
</div>

<div id="qrcodeFull" class='weui-popup__container '>
    <div class="weui-popup__overlay"></div>
    <div class="weui-popup__modal">
        <div class="weui-flex">
            <div class="weui-flex__item">
                <div class="placeholder">
                    <div id="qrcode" style="margin:0 auto;width: 100%;padding-top: 50px;padding-bottom: 50px;"></div>
                    <img id="imgOne" style="margin:0 auto;width: 100%;padding-top: 50px;padding-bottom: 50px;"/>
                    <p>请长按图片保存到相册，分享给朋友</p>
                </div>
            </div>
        </div>
        <a href="javascript:;" class="weui-btn weui-btn_primary close-popup">关闭</a>
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

    function uploadGood() {
        $.showLoading();
        $.post('${base}/shop/goodPage/refreshGood', {}, function (res) {
            $.hideLoading();
            console.log('upload good')
            if (res.msgCode == 10000) {
                $.toast("刷新成功", "success", function (toast) {
                    console.log(toast);
                });
            } else if (res.msgCode == 10001) {
                $.toast("刷新失败", "cancel", function (toast) {
                    console.log(toast);
                });
            } else if (res.msgCode == 10003) {
                $.toast("无权限操作", "cancel", function (toast) {
                    console.log(toast);
                });
            }
        })

    }

    function sharePhoto() {
        var qrcode = $("#qrcode").qrcode({
            width: 250, //宽度
            height: 250, //高度
            text: "https://www.youchongxiong.com/wxMobile/code/catProduct/${goodId}"
        }).hide();

        var canvas = qrcode.find('canvas').get(0);
        $('#imgOne').attr('src', canvas.toDataURL('image/jpg'));
        $('#qrcodeFull').addClass("weui-popup__container--visible");
    }

    function sharePhoto2() {
        $('#imgOne').attr('src', '${url}');
        $('#qrcodeFull').addClass("weui-popup__container--visible");
    }
</script>

</body>
</html>