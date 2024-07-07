<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>支付成功</title>

    <@css.css/>
    <style>
        .weui-footer {
            margin: 150px 0 10px;
        }
    </style>
</head>
<body ontouchstart>

<div id="qrcodeFull" class='weui-popup__container weui-popup__container--visible'>
    <div class="weui-popup__overlay"></div>
    <div class="weui-popup__modal">
        <div class="weui-flex">
            <div class="weui-flex__item">
                <div class="placeholder">
                    <div id="qrcode" style="margin:0 auto;width: 100%;padding-top: 50px;padding-bottom: 50px;"></div>
                    <img id="imgOne" style="margin:0 auto;width: 100%;padding-top: 50px;padding-bottom: 50px;"/>
                </div>
            </div>
        </div>
    </div>
</div>
<@js.js/>
<script src="https://photo.youchongxiong.com/jquery-weui.min.js"></script>
<script src="https://cdn.bootcss.com/jquery.qrcode/1.0/jquery.qrcode.min.js"></script>

<script>

    $(function () {
        var qrcode = $("#qrcode").qrcode({
            width: 250, //宽度
            height: 250, //高度
            text: "${exId}"
        }).hide();

        var canvas = qrcode.find('canvas').get(0);
        $('#imgOne').attr('src', canvas.toDataURL('image/jpg'));
    })

</script>
</body>
</html>
