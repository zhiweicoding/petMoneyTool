<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>分享给顾客</title>
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
            <a href="javascript:sharePhoto()"
               class="weui-btn weui-btn_primary">查看二维码</a>
            <a href="javascript:window.location.replace('${base}/shop/goodPage/index');" class="weui-btn weui-btn_default">返回首页</a>
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
                    <img id="imgOne" style="margin:0 auto;width: 100%;padding-top: 50px;padding-bottom: 50px;" src="${imgSrc}"/>
                    <p>请长按图片保存到相册，分享给客户</p>
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
    function sharePhoto() {
        <#--var qrcode = $("#qrcode").qrcode({-->
            <#--width: 250, //宽度-->
            <#--height: 250, //高度-->
            <#--text: '${protectUrl}',-->
            <#--src: 'https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/201907131359t/youchongxiong%E6%97%A0url80%2A80.jpg'-->
        <#--}).hide();-->

        <#--var canvas = qrcode.find('canvas').get(0);-->
        <#--$('#imgOne').attr('src', canvas.toDataURL('image/jpg'));-->
        $('#qrcodeFull').addClass("weui-popup__container--visible");
    }
</script>

</body>
</html>